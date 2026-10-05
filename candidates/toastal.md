## Candidate Template

- Name: toastal
- GitHub handle: [toastal](https://github.com/toastal)
- Email address: toastal+nix@posteo.net
- Discourse handle (optional): toastal
- Matrix handle (optional): toastal@clan.lol
- XMPP handle (optional): toastal@toastal.in.th

### Conflict of interest disclosure

I have been doing off-&-on independent contracting with Nixcademy.

### Motivation to be on the Steering Committee

#### What I have done

I have over 500+ non-merge commits in Nixpkgs, from run-of-the-mill
package bumps, new packages, to NixOS modules, tests, core scripts. I
have attended multiple Nix hackathons in Thailand, trained ≈90 Nix
trainees from first principles thru Nixcademy, blogged (personal + as a
guest) & have promoted Nix in many spaces.

My most notable contribution to the Nix ecosystem would be Nixtamal
which is an input pinner inspired by the lack of features in the flakes
& other alternatives by running with one core idea: what if, arguably
the most valuable thing in the Nix community, Nixpkgs, were used for
bootstraping so users can fetch whatever they wanted from wherever they
wanted since Nixpkgs has over 40 fetchers & not all fetchers can *or
even should* be in the C++ binary (it’d be easy to argue it has too many
as is).

#### What I will do

I wish to be the voice for the things I wish to see for the Nix project
to succeed long-term which means making contributions less painful,
limiting scopes, leaning towards modularity & away from monoliths,
upholding user privacy, not being overreliant on Big Tech™. Namely the
things I want to strive for:

1. Improve the Nixpkgs (& related projects like nixos-hardware) review
   process so humans can get meaningful feedback in a reasonable
   timeframe as well as being less afraid to push ‘big’ pull request.
   Currently the best way to get a review is that the review needs to be
   trivial/small and/or you need to know someone with commit access in
   order to get anything merged. Some valid pull requests have been up
   months, years, some even already approved, but no merging which
   causes folks to give up on the project *or* keeping their
   changes/fixes siloed in forks that don’t benefit the larger community
   just to avoid the review process.

   Several solutions have been thrown out over the years (stacked diffs,
   review reciprocity, & so on) & I don’t have a specific solution in
   mind, but I want to get the discussion of ideas prioritized as the
   review/merge process been alientating users.

2. Propose instead of *stabalizing flakes* which always draws arguments
   admit “experiment failed” & *deprecate flakes*. It’s been 6 years
   since RFC 0049 has been closed & the fact that this is a kitchen sink
   approach merged prematurely in hindsight has not put it in a better
   state — especially with diverging, now-incompatible Nix forks on the
   topic. Instead, the good parts have been merged in as independent
   features everyone can use without flakes (except evaluation caching
   which *should* be pulled out). This would remove a lot of infighting,
   complexity, bugs from the C++ code base as Nix should narrow its
   focus on doing fewer things really well.

   Instead, those that wish to participate in the *flakes schema* should
   do so in their own independent project (as a Nix plugin, or
   otherwise) under Nix org where its users can iterate faster,
   *independent* of the Nix binary — while also allowing competition in
   this space which all have been put at an unfair disadvantage by not
   merely being an experimental flag.

   Additionally, in the vein of `nixos-rebuild --flake` all experimental
   nix-commands that do flake-related things should be required to pass
   a `--flake` flag to not favor flakes but potentially allow some other
   options with enough community support in the future.

3. Push back on any megacorporate lock-in which matter for the privacy &
   freedom of the community. This is not feasible in many senses for
   certain products/services for now, such as the code forge, however at
   all steps of these decisions, there should be pushback either in
   downvoting a product/service that relies on big tech *or* making sure
   the rollout & implementations are done in a manner that future-proofs
   against lock-in/enshitification by being ready to migrate away as
   soon as the product/service no longer meets the needs/morals of the
   Nix community.
