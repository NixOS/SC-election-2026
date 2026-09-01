{
  nixConfig = {
    extra-substituters = "https://cache.ners.ch/haskell";
    extra-trusted-public-keys = "haskell:WskuxROW5pPy83rt3ZXnff09gvnu80yovdeKDw5Gi3o=";
  };

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = inputs:
    with builtins;
    let
      inherit (inputs.nixpkgs) lib;
      foreach = xs: f: with lib; foldr recursiveUpdate { } (
        if isList xs then map f xs
        else if isAttrs xs then mapAttrsToList f xs
        else throw "foreach: expected list or attrset but got ${typeOf xs}"
      );
      pname = "gen";
      ghcsFor = pkgs: with lib; foldlAttrs
        (acc: name: hp':
          let
            hp = tryEval hp';
            version = getVersion hp.value.ghc;
            majorMinor = versions.majorMinor version;
            ghcName = "ghc${replaceStrings ["."] [""] majorMinor}";
          in
          if hp.value ? ghc && ! acc ? ${ghcName} && versionAtLeast version "9.4" && versionOlder version "9.13"
          then acc // { ${ghcName} = hp.value; }
          else acc
        )
        { }
        pkgs.haskell.packages;
      hpsFor = pkgs: { default = pkgs.haskellPackages; } // ghcsFor pkgs;
      overlay = lib.composeManyExtensions [
        (final: prev: {
          haskell = prev.haskell // {
            packageOverrides = lib.composeManyExtensions [
              prev.haskell.packageOverrides
              (hfinal: hprev: {
                ${pname} = hfinal.callCabal2nix pname ./. { };
              })
            ];
          };
        })
      ];
    in
    foreach inputs.nixpkgs.legacyPackages
      (system: pkgs':
        let
          pkgs = pkgs'.extend overlay;
          hps = hpsFor pkgs;
        in
        {
          formatter.${system} = pkgs.nixpkgs-fmt;
          legacyPackages.${system} = pkgs;
          packages.${system}.default = hps.default.${pname};
          devShells.${system} =
            foreach hps (ghcName: hp: {
              ${ghcName} = hp.shellFor {
                packages = ps: [ hp.${pname} ];
                nativeBuildInputs = with pkgs; [
                  haskellPackages.cabal-install
                  hp.fourmolu
                  hp.haskell-language-server
                ];
              };
            });
        }
      ) // {
      overlays.default = overlay;
    };
}
