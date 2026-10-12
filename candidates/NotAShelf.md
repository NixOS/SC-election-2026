## Candidate Template

- Name: raf
- GitHub handle: @notashelf
- Email address: `raf@notashelf.dev`
- Discourse handle (optional): notashelf
- Matrix handle (optional): `@raf:notashelf.dev`

### Conflict of interest disclosure

[feel-co]: https://github.com/feel-co
[Manic Systems]: https://github.com/manic-systems
[SNUG]: https://github.com/snugnug
[nix-community]: https://github.com/nix-community

There are several projects I have authored, maintain, and contribute to under
[feel-co], [Manic Systems], [SNUG] and [nix-community]. I also participate in
the Hyprland community as its community manager. Hyprland employs Nix to a small
extent, and I occasionally chip in as a supporting developer for its Nix
integration.

[GitHub Sponsors]: https://github.com/sponsors/NotAShelf

While my open-source work receives support through [GitHub Sponsors], I am not
paid to work on or with Nix; these affiliations give me a _personal stake_ in
decisions affecting tools I help maintain. They are, of course, not a reason to
give those tools preferential treatment. I would disclose relevant interests
when a decision arises and recuse myself where appropriate.

Outside my FOSS work, I am currently self-employed, leading a sail design and
manufacturing business and contracting as a policy analyst as a part-time
endeavour. Neither line of work financially incentivizes (or otherwise
encourage) me to work on Nix; all Nix-related work is entirely voluntary.

### Motivation to be on the Steering Committee

I contribute to Nixpkgs and maintain tools built around it. I want an SC that
leaves decisions to the teams responsible for them, resolves gaps in
responsibility, and intervenes when those teams cannot reach a decision.

I intend to be the change I wish to see.

#### What I have done

I have been contributing to the Nix ecosystem since early 2023. My work in
Nixpkgs includes packages, NixOS modules and documentation, including
[declarative LACT configuration](https://github.com/NixOS/nixpkgs/pull/427876),
[deepcool-digital-linux packaging and module integration](https://github.com/NixOS/nixpkgs/pull/418236)
and various package and module updates across the board. I was the release
editor of 25.05 & 26.05, and I am
[release editor again for 26.11](https://github.com/NixOS/nixpkgs/issues/567567).

Outside Nixpkgs, I maintain several Nix-related tools: Some examples of my work
include:

[nh]: https://github.com/nix-community/nh
[nvf]: https://github.com/NotAShelf/nvf
[Hjem]: https://github.com/feel-co/hjem
[ndg]: https://github.com/feel-co/ndg
[Circus]: https://github.com/manic-systems/circus
[nixos-core]: https://github.com/manic-systems/nixos-core
[ncro]: https://github.com/manic-systems/ncro
[evix]: https://github.com/manic-systems/evix
[nix-bindings]: https://github.com/notashelf/nix-bindings
[MicrOS]: https://github.com/snugnug/micros

- [nh] - provides build and activation workflows for NixOS, Home Manager and
  nix-darwin, with support for flake and non-flake configurations. I joined nh
  as a contributor and stepped up as its primary maintainer in late 2025.

- [nvf] - another modular Neovim configuration framework using Nix, with NixOS,
  Home Manager and standalone integration preferred by a number of Nix/OS users.
  This work involves maintaining configuration interfaces, reviewing
  contributions, integrating plugins and language tooling, and providing user
  and option documentation. It builds on earlier Neovim/Nix work.

- [Hjem] and [NDG] under feel-co. Hjem provides declarative, manifest-based
  home-file management. Besides kickstarting those projects and doing the
  everyday maintenance work, I have implemented Hjem's
  [standalone CLI](https://github.com/feel-co/hjem/pull/163), including work on
  the underlying smfh library, and contributed
  [generation GC-root retention](https://github.com/feel-co/hjem/pull/176),
  platform integration and documentation. NDG provides documentation tooling for
  Nix and Nix-adjacent projects, including module-system documentation. NDG is
  also growing in adoption through the wider community outside of my own
  projects. Hjem itself is a proof-of-concept for $HOME management inside
  Nixpkgs, which I want to work on in the future.

- [Circus] is a CI system I've kickstarted with my friends at [Manic Systems]
  due to my personal qualms with Hydra. Highlights of my work there include
  [evaluation diagnostics](https://github.com/manic-systems/circus/pull/200),
  [Nix subprocess memory limits](https://github.com/manic-systems/circus/pull/158),
  and
  [recovery of failed-path cache entries](https://github.com/manic-systems/circus/pull/218).

- In [nixos-core], an ongoing, alternative and out-of-tree effort to implement
  NixOS's system tooling without Perl, Bash or Python, I worked on
  [boot ordering and compatibility with upstream behavior](https://github.com/manic-systems/nixos-core/pull/30).

- [evix] (powered by my very own [nix-bindings]) and [ncro] are both projects
  outside of the mainstream CppNix implementation, exploring fixes for general
  issues in CppNix itself.

- I formed [SNUG], an online Nix user group, and co-maintain the experimental
  [MicrOS] project. I also participate in Hyprland community management and
  support its Nix development.

Outside of those projects, I have previously been a brief contributor to Home
Manager, and have contributed to userspace tooling such as
[dix](https://github.com/manic-systems/dix), the Nix diff tool.

[nyxexprs]: https://github.com/NotAShelf/nyxexprs
[basix]: https://github.com/NotAShelf/basix
[flint]: https://github.com/NotAShelf/flint
[nix-evaluator-stats]: https://github.com/NotAShelf/nix-evaluator-stats
[niXhtml]: https://github.com/NotAShelf/niXhtml
[direnv.nvim]: https://github.com/NotAShelf/direnv.nvim
[statix.nvim]: https://github.com/NotAShelf/statix.nvim

My other, less consequential work includes Nix-_facing_ projects such as
[nyxexprs] (my personal package collection), [basix], [flint],
[nix-evaluator-stats], [niXhtml], [direnv.nvim] and [statix.nvim], which are
enjoyed by a number of users.

#### What I will do

I have long been critical of Nixpkgs, particularly of the following:

- As of October 10, 2026, Nixpkgs carries 24,869 top-level packages on
  nixos-unstable, and 4,765 of them have nobody in `meta.maintainers`.

- The core team that was supposed to steer the repository disbanded in August,
  yet the automation policy and the merge bot rules still name it as their
  authority.

- Flakes have been experimental since 2021, and most users run them anyway.

- Evaluation has been getting slower across releases.

Fixing any of these will upset somebody, which is a large part of why they are
still here. I am running to get them fixed, but I don't think the SC should (or
will) be the one fixing them forever. The core team named the SC's
micromanagement, and its habit of taking over issues inside delegated areas,
among its reasons for leaving. Teams with a written remit should decide within
it without coming to the SC first. The
[constitution](https://github.com/NixOS/org/blob/main/doc/constitution.md) gives
the SC a narrower job: to "ensure project decisions get made in a timely
manner", and to stay responsible "if the delegated team fails to reach a
decision". I want the SC to be strict about that part, and ensure things get
fixed without being the one to fix them directly.

The sections below are positions I have arrived at through years of
deliberation, and each is one I'd argue for to the team that controls the area.
Where a team stalls, the SC should ask it to identify the blocker and set a
decision date. If it misses that date, it should explain why and what needs to
change. The SC should help resolve staffing or cross-team blockers, not take
over the technical decision; if the team cannot reach a decision, the
constitution makes the SC responsible.

##### 1. Nixpkgs stewardship

The
[Nixpkgs core team disbanded](https://discourse.nixos.org/t/the-nixpkgs-core-team-has-disbanded/79413)
citing their health, attrition and failed recruitment, and an SC that
micromanaged teams and took ownership of issues "entirely within delegated areas
without involving relevant teams". The
[August 19 SC minutes](https://github.com/NixOS/steering-committee/blob/main/minutes/2026-08-19.md)
list four jobs nobody holds now: security response, seeing difficult PRs through
to a merge or a close, technical stewardship, and the relationship with GitHub.
Two rules also still point at the old team. The
[automation policy](https://github.com/NixOS/nixpkgs/blob/master/CONTRIBUTING.md#automationai-policy)
defines its scope as projects "under the jurisdiction of the Nixpkgs core team",
and the
[CI documentation](https://github.com/NixOS/nixpkgs/blob/master/ci/README.md)
requires that team's sign-off before anyone changes what the merge bot may
merge.

In my first two months I would aim to bring the SC a charter for a successor
team, drafted with former core members, CI and Security. It moves every rule
that names the core team over to the new one. Inside a written remit, which
includes Nixpkgs-wide policy such as the automation policy, the team decides
without asking the SC, and the SC only hears appeals. Five to seven members
serve staggered one-year terms, each of the four jobs gets a named deputy, and
the SC checks the team's workload every release cycle so it hears about overload
before people resign. The core team had authority on paper and still burned out,
so I'd treat the deputies and the workload check as the most important part of
the charter. Until that team exists and agrees to take it on, the
[CI team keeps committer delegation](https://github.com/NixOS/org/blob/main/doc/nixpkgs-committers.md).

##### 2. Unmaintained packages

CI routes review through `meta.maintainers`, the merge bot uses it to decide who
may merge, and Security uses it to find someone to patch a CVE. For one
top-level package in five the field is empty. Twenty packages with
`knownVulnerabilities` set have nobody either, among them `jboss`, `nexus`, and
Python's `ecdsa` and `pypdf2`. Just to name a few.

The
[maintainer guide](https://github.com/NixOS/nixpkgs/blob/master/maintainers/README.md)
allows removing inactive maintainers but says the rule is "currently not
strictly enforced", and the
[branch-off checklist](https://github.com/NixOS/release-wiki/blob/main/src/Branch-Off.md)
says nothing about unmaintained, broken or EOL packages. Having been release
editor for 25.05 and 26.05, I would propose adding such a step to the release
team and the successor Nixpkgs team. My current proposal, which is to be
discussed further, is that at each branch-off we publish the unmaintained
packages that fail to build or carry known vulnerabilities, and put a removal
warning on each of them. Whatever is still unadopted at the next branch-off gets
removed. Adding yourself to `meta.maintainers` is usually a one-line change, but
adoption means taking responsibility for the package, including the build
failure or vulnerability that put it on the list. Adoption PRs should receive
priority review before the removal deadline. The inactive-maintainer rule should
run on the same schedule.

A release cycle is long enough for anyone who cares about a package to step up.
If nobody does, I don't think Nixpkgs owes it further maintenance, and users
should hear that from a removal notice. The expression stays in git history for
anyone who wants to bring it back. We even have alternatives like the Nix User
Repository (NUR) and various package collections maintained by users.

##### 3. Security fixes

A merged fix still has to be built and cached, and then reach a channel update
before users get it. The
[Unbound discussion](https://discourse.nixos.org/t/security-fixes-should-bypass-staging-unbound-cve-batch-as-a-case-study/78147)
showed how easily those three stages get mixed up, and the delivery times quoted
there come from before the
[queue-runner rewrite](https://discourse.nixos.org/t/hydra-queue-runner-rewrite/74869)
went into production. We currently have no baseline.

I'd work with Security, Hydra/Infra and the release managers to publish
merge-to-channel times for security fixes on each branch, and to go through the
slowest cases every cycle. A stable release is supported for about seven months
and backports only happen when someone does them, so the branch-off list of
unmaintained packages should also show which packages on stable have nobody to
backport fixes to them.

##### 4. LLM contributions

Nixpkgs has 244 committers and, by the CI documentation's count, about 20
maintainers for each of them. Maintainers can merge changes to their own
packages through the merge bot. Everything else, including every unmaintained
package, waits for a committer.

I am sceptical of LLMs. I have ethical and environmental objections as well, but
for Nixpkgs specifically my concern is technical. LLM output reads as plausible
whether or not it is correct, so the reviewer ends up checking every line of a
change the author may never have read. People burn thousands of tokens producing
trivial changes with a lot of baggage attached, and someone else pays the cost
of verifying them. I am willing to sift through that. I can't expect every
reviewer to share that willingness, and I don't think we should ask them to.

Under the current automation policy a reviewer can close a PR that clearly
violates it, which in practice means the author admitted it. Undisclosed use
can't be proven, and the policy asks reviewers to assume good faith. The policy
belongs to the successor Nixpkgs team, and I'd propose two changes to it. Nobody
should be obliged to review a PR with an `Assisted-by:` trailer, and they should
be free to close it without a technical justification. For undisclosed use, the
policy already says authors must be able to "answer questions about their
contribution... without simply forwarding messages back and forth to automated
tools", and I'd make that the test. _If_ the author can't explain the change,
the PR is closed under the policy.

##### 5. Evaluation performance

Evaluation has
[slowed measurably across releases](https://discourse.nixos.org/t/a-look-at-nixos-nixpkgs-evaluation-times-over-the-years/65114).
CI already
[produces a performance comparison](https://github.com/NixOS/nixpkgs/pull/395113)
for every PR, but the only labels it sets are for rebuild counts, so an
evaluation regression can merge without anyone being asked about it. With the
Nix and CI teams I'd pick a few reference evaluations, for example a minimal
NixOS system, a desktop system and a development shell, and label PRs that push
them past an agreed threshold. The author then has to explain the cost during
review.

Maintainers also get no official notification when their package breaks. The
nearest thing is a
[failure dashboard](https://discourse.nixos.org/t/nixpkgs-failure-dashboard/76790)
that one contributor runs on their own server, building x86_64-linux with a
30-second timeout per derivation. Much of my work on [Circus] has been
diagnostics: an evaluation that runs out of memory or produces no jobs should
say _why_. Hydra should tell the maintainers of a broken attribute directly.

##### 6. Flakes

I use flakes and I like them, as do most users: 78.9% of the 3,399 apparent
respondents to the
[2025 community survey](https://discourse.nixos.org/t/2025-nixos-community-survey-report/78812)
use them. Flakes were also the thing respondents most wanted improved (50.3%).
As [jade wrote in 2024](https://jade.fyi/blog/flakes-arent-real/), flakes tie
dependency locking to version control, take no configuration, and their
`packages.${system}` layout doesn't work for cross compilation.
[Nix 2.35](https://github.com/NixOS/nix/blob/master/doc/manual/source/release-notes/rl-2.35.md)
finally stopped copying flake sources into the store eagerly, but its release
notes say the whole source tree still has to be hashed, because backwards
compatibility requires a flake's `outPath` to be a content-addressed store path.
This, of course, is just some of it.

Fixing this will break existing flakes, and every year the break costs more.
28.9% of the survey's respondents started using Nix within the past year and
learned flakes in their current form. Lix froze flakes and is trying to move
them into a plugin, and its
[2.95 announcement](https://lix.systems/blog/2026-03-25-lix-2.95-release/) calls
that "much more difficult than expected" because flakes are wound through the
CLI and the configuration system. If we keep putting it off, we will make the
break too late or not at all.

I agree with the SC's 2025
[decision not to declare flakes stable as they are](https://github.com/NixOS/steering-committee/blob/main/vote-logs/0003-stabilize-flakes.md),
since that would lock the flaws in. Flakes are _not_ stable; they are _adopted_.
What nobody has set is a deadline for fixing them. The Nix team decides which
breaking changes to make, and under the constitution the SC is responsible for
making sure that decision happens. I'd ask the Nix team for a single list of the
breaking changes flakes need, tracked on the
[stabilization tracker](https://github.com/NixOS/nix/issues/7701). Those changes
would ship together as a new flake format version with a migration tool, and
that version would then be stabilized. I'd vote to hold the team to a date for
that. My own projects, such as [nh], would have to absorb that break too, and
one announced break with a migration tool is something I can plan around.
Through all of it, Nixpkgs and NixOS have to stay fully usable without flakes.

##### 7. NixOS system tooling

NixOS's own tools are written in four languages. switch-to-configuration is
Rust, nixos-rebuild and the systemd-boot installer are Python,
nixos-generate-config and the GRUB installer are Perl, and the smaller helpers
are Bash. Three module options paste user-supplied strings straight into the
Perl source of nixos-generate-config. Each of those interpreters ends up in the
system closure and needs people who can maintain code written in it.

The perlless profile, which has its own NixOS test, already gets a system to
zero Perl. It does so by switching `/etc` and user management to non-Perl
implementations and turning off nixos-generate-config, GRUB and
command-not-found. I want that to be the default. Getting there means rewriting
those tools, merging the ones that overlap, and settling on Rust, which
switch-to-configuration already uses and which doesn't drag an interpreter into
every system. The result needs documented behaviour that nh and other tools can
rely on. None of this needs an SC decision, since it is ordinary contributor
work. I already do that work in [nixos-core], an out-of-tree NixOS
implementation without Perl, Bash or Python, and I'd bring what we learned there
upstream. I would recuse myself from any vote on adopting nixos-core itself.

I'll publish my proposals and votes with my reasoning as I go. When something
stalls, I'll say what is blocking it and who can unblock it, except where
security or personal matters have to stay confidential.
