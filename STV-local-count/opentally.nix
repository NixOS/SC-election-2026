{ rustPlatform, fetchgit, m4, gmp, mpfr }:
rustPlatform.buildRustPackage {
  name = "opentally";
  version = "0.1.0-untagged-2026-03-30";
  src = fetchgit {
    url = "https://yingtongli.me/git/OpenTally";
    rev = "3d4c415e90813a50b930a3be6a6dafdf57a696c6";
    hash = "sha256-lXYh6DI6+SEau8dlw5b+IpQsqlfbgtqOxJjSw0Zpm+g=";
  };
  cargoHash = "";
  cargoLock = {
    lockFile = ./opentally-cargo.lock;
  };
  nativeBuildInputs = [
    m4
  ];
  buildInputs = [
    gmp mpfr
  ];
  postPatch = ''
    sed -e 's/^wasm-bindgen = .*/wasm-bindgen = "0.2.88"/' -i Cargo.toml
    cp ${./opentally-cargo.lock} Cargo.lock

    # Parity with the other test; do not fix what is not broken

    # sed -re 's/^[ \t]*[.]replace[(].*[)](;)/\1/' -i tests/tests_impl/convert.rs
  '';
}
