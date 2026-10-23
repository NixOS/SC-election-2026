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


<!-- BEGIN GENERATED Q&A -->
## Q&A

### Are you up to update the constitution to prevent foundation members to also have a SC seat? ([link](https://github.com/NixOS/SC-election-2026/issues/37))


Are you up to update the constitution to prevent foundation members to also have a SC seat?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/37#issuecomment-6077066115">link</a>)</summary>

I don't feel strongly in either way, but I would like to ask why you think think is necessary?

</details>

### How should the SC work with teams going forward? ([link](https://github.com/NixOS/SC-election-2026/issues/42))


Our community has known a number of [teams](https://nixos.org/community/#teams), dynamics around which have been described in our [constitution](https://github.com/NixOS/org/blob/main/doc/constitution.md).

Nevertheless, governance questions around the SC and its relation to such teams had come up at our [previous election cycle](https://github.com/NixOS/SC-election-2025/issues) after the [moderation team had stepped down](https://discourse.nixos.org/t/a-statement-from-members-of-the-moderation-team/69828) over what they decribed as SC overreach, after which the 2025 election notably [resulted in](https://discourse.nixos.org/t/results-for-the-second-nix-steering-committee-election-2025/71628) the candidate with most first-preference votes the moderator the SC had removed, amid [internal](https://discourse.nixos.org/t/the-sc-prepared-to-lie-to-us-and-what-we-can-do-about-it-whistleblow/70103) [division](https://discourse.nixos.org/t/the-dire-state-of-the-sc/70426) in the SC itself. The SC subsequently announced the [community team bootstrap group](https://discourse.nixos.org/t/announcement-of-the-community-team-bootstrap-group/77055), since then extended to [Nov 1](https://github.com/NixOS/steering-committee/blob/main/minutes/2026-08-12.md).

This topic seems to have [come up again](https://discourse.nixos.org/t/the-scs-role-in-the-disbandment-of-the-nixpkgs-core-team/79433) thru a different team over this past SC term, as the [nixpkgs core team disbanded](https://discourse.nixos.org/t/the-nixpkgs-core-team-has-disbanded/79413/11), over what both they [as well as](https://luj.fr/notes/20260809T111918==public--steering-committee-report-aug-9-2026__steeringcommittee.org) SC member @JulienMalka described as structural issues with the SC's representative role as unsuited for either delegation or decision-making, raising questions on whether new members of either a nixpkgs core team (if these can be found) or of the steering committee itself might resolve this, given the issues had been alleged to be around the design of the SC and its role itself, rather than about its individual members.

Now, the SC is of course empowered to amend those structures, including said constitution (#33), if not also community values. As a candidate to our new SC then, I would ask you:

- How would you balance such roles as a member of the SC of representation, decision-making, and delegation?
- Would you concur with the above accounts on problems being structural in nature, and how would you approach topics like this during your term?
- Are there any structural changes you would support to this end, and if so, what would those be?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/42#issuecomment-6118573469">link</a>)</summary>

I am in favor of distinguishing representation, decision-making, and delegation over treating them as "competing" demands. Indeed, representation gives SC a mandate to govern but it does not (and should not) mean it should make every decision. As such, my stance is that delegation should transfer decision-making authority as well. Think the word "subsidiary" fits the best here. Decisions should be made at the lowest level capable of handling their consequences. Teams should decide within defined domains; SC should concentrate on cross-team coordination, project-wide priorities, gaps in responsibility, and exceptional escalations. [^1] SC's responsibility is to ensure decisions *can* be made, and not necessarily to make them by itself. I think teams are already very capable of handling their respective domains; making way without stepping on any toes is the best approach here.

[^1]: "Escalation" is a bit of a blanket term. I'd clarify this as "[intervention in] unresolved jurisdictional disputes, failure on agreed decision or appeal procedures, or credible serious breaches of rules/trust."

Electoral authorization is merely one aspect of representation; responsiveness, justification and accountability are just as important. As I see it, SC's representative role as ensuring that project-wide priorities and governance arrangements respond to the community, including perspectives that are not already well-represented within established teams.

</details>

### How should SC members behave in public spaces when it concerns Nix matters? ([link](https://github.com/NixOS/SC-election-2026/issues/50))


As succinctly--but fully!--as possible please describe how you believe SC members should behave in public discussion spaces (social media, blogs, issue trackers, etc.) when discussing Nix business **while in office**.

This might include things like:

* How they talk about other members of the SC
* Their participation in open letters
* Airing disagreements about votes or policy
* Whether, broadly, they are part of a "united front" for SC policy proclamations
* How they publicly treat community members they are known dislike or disagree with

More succinctly:

What behavior would you look at and say "This public behavior is something I do not wish associated with our project and community from somebody in a position of power while speaking on matters concerning the community"?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/50#issuecomment-6118354226">link</a>)</summary>

I'm a believer that persons in leading positions should act like leaders. Not only for their own image, but also the institutions. Those in the SC should behave gracefully in public spaces to retain an amount of trust by the community, and communicate that they are taking the role seriously. Though, I'd draw the line somewhere.

> How they talk about other members of the SC

Perfectly reasonable to expect mutual respect. Disagreements are to be expected, but nothing justifies unsightly behaviour from any members regardless of the circumstances.

> Their participation in open letters

I do not think this goes against behaving *gracefully* in public spaces. Even as a part of the institution you can be critical of it. The important distinction is how this participation is positioned. E.g., if they participate in an open letter that ultimately undermines the institution then there is a discussion to be had.

> Airing disagreements about votes or policy

Mixed feelings about this one, but I will argue that it is against the institutions integrity to "air disagreements" about votes or policy. Talking about an unexpected/unwanted/disappointing outcome is fine and a right of everyone, but I believe there is a line to be drawn. If you are going so far to "reveal" information that is *not* confidential but also not exactly common knowledge, then I would be questioning the motives.

> Whether, broadly, they are part of a "united front" for SC policy proclamations

Could you elaborate a little further on this one?

> How they publicly treat community members they are known dislike or disagree with

Quite frankly I think it is not acceptable to display anything other than civility in this particular case. You can, of course, disagree firmly but should always address the *argument* rather than attack and demean the person. SC members' behaviour reflects on the institution for a much longer duration than any member's term. Ultimately the SC's legitimacy depends on people being able to trust that its authority is exercised through fair, consistent processes rather than personal animus or factional loyalty. It is, as simple as I can put it, an institutional obligation. 

</details>

## Unanswered questions

<details>
<summary>Do you think there should be a minimum age requirement to serve on the Nix SC ? (<a href="https://github.com/NixOS/SC-election-2026/issues/38">link</a>)</summary>


I fully acknowledge that age is not necessarily a reliable indicator of maturity. However, I believe (_actually, I am totally convinced_) that serving on the Steering Committee requires more than technical expertise. It also demands emotional maturity, sound judgement, diplomacy, life experience, and the ability to handle disagreements constructively.

While these qualities are not exclusive to any particular age group, I believe that life experience often plays an important role in developing them.

1. Do you think a minimum age requirement would be appropriate ?
2. If not, how do you think the community should assess whether candidates possess the maturity and perspective needed to take on such responsibilities ?

Please elaborate on your answers and explain your reasoning.

</details>

<details>
<summary>Should the Steering Committee vote to unilaterally stabilize (or deprecate) Flakes? (<a href="https://github.com/NixOS/SC-election-2026/issues/31">link</a>)</summary>


Would you support the Steering Committee voting to stabilize (or deprecate) Flakes against the preferences of the Nix Core Team? e.g. seeking to stabilize Flakes despite the opinion of the Core Team being they are not technically ready.

If no, what about to make the experimental flag(s) on by default without formal stabilization?

For additional context: https://github.com/NixOS/steering-committee/blob/main/vote-logs/0003-stabilize-flakes.md

</details>

<details>
<summary>Should Nix transition away from GitHub to a self-hosted git forge? (<a href="https://github.com/NixOS/SC-election-2026/issues/34">link</a>)</summary>


This is something I asked in 2024 but it's something I think is still relevant today.

Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

</details>

<details>
<summary>What is your vision for the technical direction of Nix? (<a href="https://github.com/NixOS/SC-election-2026/issues/60">link</a>)</summary>


What are the three most important technical improvements that Nix (or NixOS) should pursue? What would you deprioritize, if anything, to make room for them, and how would you work with the relevant teams to actually get it done?

</details>

<details>
<summary>Participation and absenteeism (<a href="https://github.com/NixOS/SC-election-2026/issues/47">link</a>)</summary>


Historically the SC has suffered from various issues regarding participation and ability to execute. We are all volunteers and we cannot ask that the SC supersede all other obligations, but asking the community to elect you as a representative comes with some responsibility and an implied promise to perform that representation. The SC requires a time-commitment and an ability to participate.

- Describe your ability to participate and available to commit time throughout the expected 1 to 2 year term.
- How should absenteeism be analyzed and dealt with?
- What changes would you explore to either encourage more participation or to enable appropriate delegation?

</details>

<details>
<summary>How will you improve transparency and accountability in Nix governance? (<a href="https://github.com/NixOS/SC-election-2026/issues/36">link</a>)</summary>


This is something I asked in 2024 but it's something I think is still relevant today.

What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

</details>

<details>
<summary>How will you ensure community engagement and participation in SC decisions? (<a href="https://github.com/NixOS/SC-election-2026/issues/35">link</a>)</summary>


This is something I asked in 2024 but it's something I think is still relevant today.

How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

</details>

<details>
<summary>What should be done to improve Nix documentation? (<a href="https://github.com/NixOS/SC-election-2026/issues/63">link</a>)</summary>


We all know that Nix documentation is currently quite a big pain point for new users and veterans alike. What would you do to steer it toward the right direction? What would you advocate doing to improve documentation?

</details>

<details>
<summary>Who should decide the policy on LLM-assisted contributions? (<a href="https://github.com/NixOS/SC-election-2026/issues/57">link</a>)</summary>


Given the discussions around LLM-assisted contributions, who should have authority over this policy decision? Individual project teams? The Steering Committee? Contributors through a referendum? What approach would you push for and who would you push for having the authority to decide this policy?

</details>

<details>
<summary>Do you support the antitrust and funding proposal in NixOS/org#298? (<a href="https://github.com/NixOS/SC-election-2026/issues/32">link</a>)</summary>


Do you agree with the principles and proposed changes outlined in [NixOS/org#298](https://github.com/NixOS/org/pull/298)?

The proposal seeks to preserve maintainer independence by restricting direct corporate funding and asset ownership by the NixOS Foundation, instead favoring independent, contributor-controlled entities.

Would you support this approach? Why or why not? Are there specific parts of the proposal you agree or disagree with?

</details>

<details>
<summary>What should the future of Nixpkgs governance look like? (<a href="https://github.com/NixOS/SC-election-2026/issues/64">link</a>)</summary>


Following the disbandment of the Nixpkgs core team, how do you think governance and decision-making within nixpkgs should be structured going forward? How do you plan to prevent this from happening again and to strengthen and make future teams more resilient? What should be the plan for any future nixpkgs core team if any?

</details>

<details>
<summary>Should the foundation prioritize funding individual contributors or companies? (<a href="https://github.com/NixOS/SC-election-2026/issues/61">link</a>)</summary>


When funding development within the Nix ecosystem, should the foundation prioritize paying individual contributors directly, contracting companies, or maintaining a balance between the two? How would you allocate resources fairly, avoid conflicts of interest, and measure whether the funding is going where its supposed to be going and actually goes toward improving the project? Do you think funding indie contributors would help make contributing to Nix more sustainable and lead to less burnout?

</details>

<details>
<summary>What should the future of declarative home management in the Nix ecosystem look like? (<a href="https://github.com/NixOS/SC-election-2026/issues/59">link</a>)</summary>


With projects like [Home Manager](https://github.com/nix-community/home-manager) and [Hjem](https://github.com/feel-co/hjem) offering pretty different approaches to declarative home management, what direction do you think the Nix ecosystem as a whole should take? Do you think NixOS should adopt one of these solutions for an official default home management solution? Should NixOS develop its own solution from scratch taking inspiration from the various home management projects out there? What role should the SC have in supporting these efforts?

</details>

<details>
<summary>Should the community be able to initiate binding referendums? (<a href="https://github.com/NixOS/SC-election-2026/issues/58">link</a>)</summary>


Do you think voters should have a mechanism to initiate binding referendums on policies without needing the SC? If you do agree then what voting requirements and limits on referendum scope would you support? How should the steering committee implement this in a way that avoid overriding the technical authority of teams while respecting the community voice simultaneously?

</details>

<details>
<summary>What principles are more important to you than working toward the best available resolution? (<a href="https://github.com/NixOS/SC-election-2026/issues/48">link</a>)</summary>


On the SC, you will disagree with your peers. Sometimes you will find yourself in the minority, and in those cases you have the option of either continuing to participate in the conversation, doing your part to influence the group toward a least-bad outcome for everyone (even if all of the likely outcomes seem bad — surely one is least bad!); or concluding early that the best outcome is for the SC to fail at its current enterprise and withdrawing from the conversation, voting against anything the remainder decides.

You might take the latter option and justify it by asserting that you were ‘elected to uphold’ certain core principles, and since all of the available outcomes seem to violate one of those principles, it would be wrong to continue to participate. In that case, the electorate ought to know what those principles are when we elect you!

So what are they? Not asking for every single one of your principles; just the ones for which you would say, if elected, ‘I was elected to uphold this, and that *outweighs* the goes-without-saying thing I was elected to do: participate in the SC's deliberations and use my voice to steer the process toward a successful consensus or compromise.’ (Hopefully it's a short list — few could credibly claim they were ‘elected to uphold’ twenty distinct things!)

</details>

<details>
<summary>How you approach the balance between political decisions and technical solutions? (<a href="https://github.com/NixOS/SC-election-2026/issues/43">link</a>)</summary>


For some issues there is a hope for a solution that satisfies almost everyone. It might be hard to find, and a lot of effort to implement. A consensus is apriori plausible and desirable. 

For some issues it seems very likely that the interests are directly opposed. There are limits to logically possible compromises, and there is an inavoidable question which coalition to build and whom to disappoint with the fundamental policy decision. 

Of course issues are usually a mix; but for issues heavily biased to one side it might be unfortunate to bias the process to the other side.

Do you think there are issues that are currently treated too politically or too technically?

In general, how will you decide your approach — how much of a new issue is technical or political?

</details>

<details>
<summary>What constitutional changes would you advocate for and why? (<a href="https://github.com/NixOS/SC-election-2026/issues/33">link</a>)</summary>

This is something I asked in 2024 but it's something I think is still relevant today.

If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

</details>

<details>
<summary>How should Nix improve supply-chain security? (<a href="https://github.com/NixOS/SC-election-2026/issues/62">link</a>)</summary>


What concrete improvements would you prioritize for Nix supply-chain security? What security responsibilities should be delegated to the relevant teams, and what resources should the SC and foundation respectively provide?

</details>

<details>
<summary>How would you improve pull request review situation? (<a href="https://github.com/NixOS/SC-election-2026/issues/55">link</a>)</summary>


I know these are not perfect metrics (e.g. they don't consider what actually _was_ merged), but to illustrate my point:
* There are thousands of pull requests to Nixpkgs opened just last week.
* There are 12,360 PRs to Nixpkgs opened at the moment of writing this question, 10,698 (87%) of them have no reviews.
* A similar picture is in the Nix repository: 502 of 546 (92%) open pull requests have no reviews.
* Some of these pull requests are stuck because there are plenty of maintainers who aren't active. Some are stuck because there are no named maintainers for some parts of the repository at all.
* There were multiple times when I had to post a link to my pull request to [#review-requests:nixos.org](https://matrix.to/#/#review-requests:nixos.org) to get it reviewed and/or merged. For some pull requests I had to post them twice, because the first time was not effective.

I feel like the current situation discourages some people from contributing to Nixpkgs, which is a shame, because ease of package changes is one of the huge strengths of Nixpkgs compared to other package distributions.

What will you do to ensure that community contributions are reviewed and accepted/declined in a timely manner?

</details>

<details>
<summary>How well can you empathize with people you disagree with? (<a href="https://github.com/NixOS/SC-election-2026/issues/44">link</a>)</summary>


I strongly believe that empathy is the foundation of healthy communication and collaboration. I think that a good indicator that someone is capable of exercising empathy is their ability to state, in their own words, an accurate, good-faith representation of any belief someone else has (especially if they disagree), and why that person believes it. This is not to say that people _shouldn't have_ beliefs or positions (even strong ones!), just that I believe that it is irresponsible for people in positions of authority to hold those beliefs without understanding _why_ others hold different ones.

**Can you write a _good-faith_ description (i.e. not strawman or criticism) of a position of at least one SC member or candidate with whom you disagree?** (Preferably multiple, to show that you are also capable of seeing issues as multifaceted instead of just binary.)

</details>

<details>
<summary>How would you ensure that the community doesn&apos;t get fractured? (<a href="https://github.com/NixOS/SC-election-2026/issues/52">link</a>)</summary>


There's been increasing polarization within and outside of the Nix community, as evidenced by the wildly distinct positions from the current nominees. While disagreements are a part of any healthy community, there are times when major and/or delicate issues become fighting points that have led some to question their permanence in NixOS projects, as was the case with the AI policy in nixpkgs or certain sponsorships to NixCon.

If you believe that community retention is an important goal of your job as an SC member, how would you work towards maintaining it? And if not, why don't you consider it important?

</details>

<!-- END GENERATED Q&A -->
