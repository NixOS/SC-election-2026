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


<!-- BEGIN GENERATED Q&A -->
## Q&A

### Do you think there should be a minimum age requirement to serve on the Nix SC ? ([link](https://github.com/NixOS/SC-election-2026/issues/38))


I fully acknowledge that age is not necessarily a reliable indicator of maturity. However, I believe (_actually, I am totally convinced_) that serving on the Steering Committee requires more than technical expertise. It also demands emotional maturity, sound judgement, diplomacy, life experience, and the ability to handle disagreements constructively.

While these qualities are not exclusive to any particular age group, I believe that life experience often plays an important role in developing them.

1. Do you think a minimum age requirement would be appropriate ?
2. If not, how do you think the community should assess whether candidates possess the maturity and perspective needed to take on such responsibilities ?

Please elaborate on your answers and explain your reasoning.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/38#issuecomment-6142873049">link</a>)</summary>

Age restrictions also possibly mean doxxing oneself in many senses. I don’t think we are happy to see age verification efforts by big tech + governments as it is.

</details>

### Are you up to update the constitution to prevent foundation members to also have a SC seat? ([link](https://github.com/NixOS/SC-election-2026/issues/37))


Are you up to update the constitution to prevent foundation members to also have a SC seat?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/37#issuecomment-6092716101">link</a>)</summary>

I defer to others that understand the root concerns of this topic better.

</details>

### Should the Steering Committee vote to unilaterally stabilize (or deprecate) Flakes? ([link](https://github.com/NixOS/SC-election-2026/issues/31))


Would you support the Steering Committee voting to stabilize (or deprecate) Flakes against the preferences of the Nix Core Team? e.g. seeking to stabilize Flakes despite the opinion of the Core Team being they are not technically ready.

If no, what about to make the experimental flag(s) on by default without formal stabilization?

For additional context: https://github.com/NixOS/steering-committee/blob/main/vote-logs/0003-stabilize-flakes.md

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/31#issuecomment-6074222275">link</a>)</summary>

[RFC 49](https://github.com/NixOS/rfcs/pull/49) was opened in 2019. It was (prematurely?) merged under `experimental-feature` as a kitchen sink of features for a single U.S. corporate client’s—& despite the bugs & oversights, there was broad community adoption (later followed by pain points). While there have been multiple attempts as well as much clamoring *for* stabilization, the in 2026 it has yet to happen. The best attempts at stabilization have been to break apart/modularize flake features & stabilize those features individually. Many of these features have been merged—luckily for use outside of the flakes context specifically too so Nix subcommunities can make their own ‘alternatives’ by approaching the problems flakes tried to solve in piecemeal fashion—schema’d file, input pinning mechanism, discovery of build outputs, improved commands, the registry, evaluation caching/closure (not yet separated). 

Instead of the maintenance burden of trying to get all of these features stabilized in the Nix C++ binary project, I think more broadly that Nix should focus more on being a good, generic sandbox for building reliable software (think *Unix Philosophy*) & narrow the scope of how Nix should be distributed while providing mechanism for downstream projects to worry about schemas & the other features—where they are free to iterate independent of the Nix C++ binary. Merging has led to feature creep/churn in the project such as Git integration (implicitly endorsing specific VCS) & builtin (via `fetchTree`) fetchers that bit into specific code forge APIs (implicitly endorsing specific forges, 1 of which is proprietary… [look at recent churn this week](https://github.com/NixOS/nix/pull/16588), which I would argue *all* forge-specific bits should be stripped while it’s still experimental). This had opened the doors for “what about me”s for every individual tool/platform that wants to feel as first class. Flake *versioning* tied to the binary bloats those binaries with migrations plans/compatibility while also still leading to everyone’s systems to be using the same Nix binary version if they want a stability across a team/community. A separate tool or plugin can solve this as Nix moves independently. I’d argue this is simpler as a job of a different project, not `nix`.

Where this gets trickier is Nix forks, Snix, Lix, & Determinate Nix, are now all taking slightly different, incompatible approaches to try to ‘stabilize’ flakes which is further fragmenting the broader Nix-like community. Lix for instance has frozen flakes. Determinate Nix basically is making flake a part of their business model since Nix C++ has been stuck. This has been piling up subtle bug reports across all projects as they try to maintain some sort of cross compatibility—leaving users frustrated/confused. 

Another problem is that flakes aren’t easily accessible to stable Nix. While a project *should* be writing stable code reexported by the `flake.nix` ([where the nix.dev docs say as much](https://nix.dev/concepts/flakes)), the path of least resistance for most projects is to highly couple all of their Nix code to the `flake.nix` (& the LLMs are trained on this too). My hunch is this plays a big role into why ‘adoption numbers’ (meaning a feature flag is enabled) are so high… not due to a specific love for flakes, but because many projects require it (or the LLM spit it out). Integrating a flake project into a stable one otherwise can be hard if not impossible, not to mention that certain installers have been enabling experimental flakes by default.

What deprecation would mean for flakes is that it would be split off either into separate schema project, for example like [Nilla](https://github.com/nilla-nix/nilla) (not an endorsement, not affiliated), or as a plugin (which is a [Lix goal](https://wiki.lix.systems/books/development/page/flakes-feature-freeze), not an endorsement, not affiliated). What this means for the community at large is greater competition that flakes don’t get some unfair advantage being ‘just a feature flag’, but also those that wish to continue participating in the flakes experiment/stabilization, are now free to do so without involving the Nix binary. This echoes [the sentiment put out](https://discourse.nixos.org/t/discussion-of-flakes-from-2025-nixos-community-survey-report/78853/50) by @adisbladis, which I recommend reading.

Stabilizing *individual features* has gone well & is available to all, but flakes themselves are still unmerged & their implicit stability now hinges more on being mired in politics that prevent moving. [According to *Lifecycle of an experimental feature*](https://nix.dev/manual/nix/2.35/development/experimental-features.html#lifecycle-of-an-experimental-feature) “decision against keeping the feature” is an option. ‘Experiment failed’ does not mean that the impacts wouldn’t be unfelt—on the contrary as many great features *did* get merged into Nix from flakes—but I think all along this should have been a series of feature proposals (I think of how to use nspawn-containers, you need to have a list of features enabled where that feature is working just fine & at scale).

Given the above believe flake deprecation from the Nix binary is the community’s best interest. It would cause some initial surprise/confusion, but I don’t think the messaging would be hard to install a plugin/project or try an alternative now that every feature constituent is to be decoupled.

---

My thoughts on the matter aside, should the steering committee do a “unilateral vote”? Probably not, as the steering committee has limited abilities, but opening up discussions seems to be one of them. “Stabilize flakes” & “fix flake bugs” have *long* been expressed community issues on all surveys & in my experience chatting with folks—but *deprecation* often isn’t normally proposed as an alternative, but deprecation deserves to be put on equal footing to any attempt to stabilize. The nuclear option frees up the Nix core to stop worrying flake bugs/feature request/complaints. If the core teams wish to relinquish that burden (& I would encourage as much), then a separate Nix Flake team can be formed to work on in its own independent direction—including working _with_ the Nix & Nix forks teams about possible missing features (same would go for alternatives to flakes).

</details>

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2026/issues/34))


This is something I asked in 2024 but it's something I think is still relevant today.

Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/34#issuecomment-6080718883">link</a>)</summary>

Should they? Absolutely. Will it be easy? Absolutely not.

Why I think it’s important to leave:

* Accounts required, including agreeing to Microsoft’s ToS + tracking + training, just to participate
* [Certain regions are banned to comply with U.S. sanctions](https://github.com/github/site-policy/blob/main/Policies/other-site-policies/github-and-trade-controls.md) which means ‘losing’ the birth lottery or needing to travel to one of these regions you get no access
* Inability to fork & fix issues with the forge (FOSS is good enough for our projects, but not good enough for our forge?)
* GitHub’s UX making reviews a bad experience on many fronts—where bad review experiences are causing members to leave or members to not bother attempting to get their held patches upstreamed
* [GitHub’s uptime](https://damrnelson.github.io/github-historical-uptime/) & throttling issues
* Microsoft’s push to inject/upsell their products—including the LLM stuff trained on all of our hard work in open source to then be sold back to us in the form of Copilot. Just today I was hit with

  <img width="576" height="249" alt="UI no worky" src="https://github.com/user-attachments/assets/a9fd2e8d-dbe6-4a85-a039-0cfa92c9fe0a" />

  as I have been blocking all the Copilot scripts, but it seems the Microsoft corporation doesn’t want you to  be able to avoid their chatbot as I suppose it’s now some sort of “core feature”
* A bunch of unnecessary social media features that get folks to stay on this platform—as well as general enshitification
* Increasing numbers of agent spam
* GitHub’s proprietary APIs end up being accidentally baked in to Nix out of ‘convenience’ for the Nix project which end up being a maintenance burden (see [`builtins.fetchTree`](https://nix.dev/manual/nix/2.35/language/builtins#builtins-fetchTree) (where *I* believe *all* forge-specific code should be removed))
* The Nix project has enough influence to set trends like encouraging other projects to migrate too (frankly, if Nix/Nixpkgs left, I would finally feel empowered to delete this account)

Why it’s hard:

* Deals cut with Microsoft to get extra resources for such a massive project (especially Nixpkgs)
* CI lock-in
* Tooling that wasn’t built to abstract out the GitHub part will need to be rewritten
* The platform is overused for stuff that isn’t related to code—such as RFCs, SSO authentication, & answering election questions—instead of community-owned (or decentralized) services, such as the forum, since everyone is demanded to have an account + get familiar with the GitHub product to effectively participate in the Nix community anyhow
* Past efforts to explore often deemed “not worth it”
* Existing explored Git forges, like Forgejo, aren’t built architecturally for the scale of Nixpkgs (not sure of other options looked into)
* Nixpkgs, the monorepo, might need to be broken up to make it feasible
* Some folks will inevitably complain that they need to create new accounts—assuming existing centralized models (meanwhile those that refuse to make GitHub accounts have almost never had a voice)
* Nix doesn’t have unlimited budget & the donated hosting costs of the Nix cache are already quite a lot; Microsft-owned GitHub is currently *free as in beer*

Ultimately I think it’s important for sovereignty, freedom, & privacy of all community members to not be relying on U.S.-based proprietary services like this as soon as a feasible alternative arises. Having a different kind of forge that the community can fork/fix means we could iterate on features specific to to the Nix project & better integrated instead of these bot accounts to work around the platform—as well as participating in open source by giving relevant patches back upstream to a selected Git forge (assuming Git is still seen as the best VCS option). Anyone who has ever ran across any of my pull requests know that I stand by [Software Freedom Conservancy’s critque](https://sfconservancy.org/GiveUpGitHub/).

I would like to help put another task force look into the feasibility yet again with priority & an eventual project goal as well as a general call for proposals from the community (smaller groups on specific components) instead of leaving it as “would be nice” or “if you dedicate a huge chunk of your free time detailing a strategy that covers all aspects, *maybe* we will take a look at a proposal”.

</details>

### What is your vision for the technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2026/issues/60))


What are the three most important technical improvements that Nix (or NixOS) should pursue? What would you deprioritize, if anything, to make room for them, and how would you work with the relevant teams to actually get it done?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/60#issuecomment-6194328610">link</a>)</summary>

3 things *I* wish (I’m not on the teams that actually touch these):

* Find a better way for the review process in Nixpkgs (& similar projects like nixos-hardware) can take years to get any eyes on anything let alone a merge… having to beg or “know someone” shouldn’t be status quo. This could be things from:
  * Better tags like minimally the `build*Package` (I can’t see this is an OCaml project, even tho I am a better match review it vs. something in Rust which I know nothing about)
  * Make it less scattered, easier to run the linting stuff locally so the feedback loop isn’t push something to the forge to be told to add `__structuredAttrs = true` by CI _before_ pushing
  * Tit-for-tat, mutual review—you open a review & review someone else’s (tho everyone would rush to easy version-bump stuff like they do now)
  * mailing list \*gasp\*
  * Stacked diffs
  * Gerrit
  * If not Gerrit-like, at least moving to anther Git forge that better enabling reviewing/merging per-commit
  * Some form of compensation/sponsorship for putting time in to review
  * Something to reward helping humans over bot-generated pull requests

  I don’t yet know a solution, but I don’t like the state of ‘review’ is.

* Deprecate flakes from the binary into a plugin or third-party library + deprecate forge-specific references in `fetchTree` + require `nix-commands` to add `--flake` (like `nixos-rebuild`) to make the binary leaner so Nix can focus on being the best reproducible sandbox + store. All of these with the overarching message: reduce maintenance surface area; don’t play favorites + foster competition; don’t chase API changes for something that needs to remain stable—especially when we don’t know what will remain popular in 5–10 years.

* Support efforts for Nix the language improvements (experimental type system, experimental module system, pipes stabilized, & so on…). Nix doesn’t need (or want) to be a general purpose language, but there are warts in its design/ergonomics regardless of the user’s background that could address concerns from footguns to error messaging to general ‘joy’.

Not sure what gets deprioritized—as I don’t know the full list. Everything starts with talking to the owners of those projects if it’s desirable—or forming teams to do so?

</details>

### Participation and absenteeism ([link](https://github.com/NixOS/SC-election-2026/issues/47))


Historically the SC has suffered from various issues regarding participation and ability to execute. We are all volunteers and we cannot ask that the SC supersede all other obligations, but asking the community to elect you as a representative comes with some responsibility and an implied promise to perform that representation. The SC requires a time-commitment and an ability to participate.

- Describe your ability to participate and available to commit time throughout the expected 1 to 2 year term.
- How should absenteeism be analyzed and dealt with?
- What changes would you explore to either encourage more participation or to enable appropriate delegation?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/47#issuecomment-6143077917">link</a>)</summary>

> ability to participate and available

Currently with no stable work or prospects, I am free to make any meetings. 😅 Life happens so I wouldn’t expect everyone to make every meeting. It might even be expected to miss some meetings given the times…

> How should absenteeism be analyzed and dealt with?

Meeting notes should show time + who attended with some metadata that makes it easy to grep or build a chart. If attendance is as issue, it would be easy to visually see what’s the problem is.

> What changes would you explore to either encourage more participation or to enable appropriate delegation?

All meetings should be scheduled on UTC so time zone ambiguity is gone  & no one needs to think about archaic concepts like “Daylight saving time” (I have missed plenty of meetings due to this). As Asian time zones often get the short end of the stick, I’m used to things being awkwardly timed so I think a rotating time would be best such that all parts of the planet can participate. This also helps night owls, early birds, & other schedule issues find *some* time that works. …I assume this can be encoded in iCal files.

This would likely mean that the body needs to handle that some folks can/will be missing every event (consider it a vacation day if you want), but this offers the most flexibility without putting anyone at a specific-time advantage.

</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2026/issues/36))


This is something I asked in 2024 but it's something I think is still relevant today.

What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/36#issuecomment-6079624343">link</a>)</summary>

Aren’t many decisions already documented in the self-hosted forum (Discourse) or Zulip? What I don’t want to see is more discussions on this account-required proprietary platform which is banned in some places to comply with U.S. sanctions. It would be great to double-check that those spaces have Atom/RSS feeds such that users can passively subscribe via feedreader as it’s easy to miss things or be inundated with topics a community member doesn’t care about in existing spaces as posting in the open isn’t good enough decisions are hard to follow or hard to find.

</details>

### How will you ensure community engagement and participation in SC decisions? ([link](https://github.com/NixOS/SC-election-2026/issues/35))


This is something I asked in 2024 but it's something I think is still relevant today.

How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/35#issuecomment-6142824143">link</a>)</summary>

@lassulus Is voting here a final decision, or a temperature check? How are we vetting accounts in the age of bots & should an account with Microsoft be required to vote?

</details>

### What should be done to improve Nix documentation? ([link](https://github.com/NixOS/SC-election-2026/issues/63))


We all know that Nix documentation is currently quite a big pain point for new users and veterans alike. What would you do to steer it toward the right direction? What would you advocate doing to improve documentation?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/63#issuecomment-6192504570">link</a>)</summary>

Start by making Google & the other engines index our single-page docs would be a start since we are missing SEO. The content is there, it’s just without knowing to bookmark our docs, you might not know it’s there. When Nixcademy has shown folks how to use the existing docs, they tend to be good enough right now—including just `Ctrl+f`.

</details>

### Do you support the antitrust and funding proposal in NixOS/org#298? ([link](https://github.com/NixOS/SC-election-2026/issues/32))


Do you agree with the principles and proposed changes outlined in [NixOS/org#298](https://github.com/NixOS/org/pull/298)?

The proposal seeks to preserve maintainer independence by restricting direct corporate funding and asset ownership by the NixOS Foundation, instead favoring independent, contributor-controlled entities.

Would you support this approach? Why or why not? Are there specific parts of the proposal you agree or disagree with?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/32#issuecomment-6142751098">link</a>)</summary>

I think @lassulus brings up good rebuttals to this on paper but some of the ideas seem okay in the proposal & relevant to the Nix community. I think the broader goal of cutting down on conflicts of interest as Nix gets popular/mainstream is important. The big corporations that get the most ‘value’ from the project should be giving back a part of that value—sometimes mutually beneficial, but sometimes in ways that *only* benefit just Nix the community, especially the smaller players & all of the volunteer efforts. I can’t see the behind-closed-doors discussion (tho not all need to be public), so it’s a bit hard to tell how it was decided.

</details>

### How you approach the balance between political decisions and technical solutions? ([link](https://github.com/NixOS/SC-election-2026/issues/43))


For some issues there is a hope for a solution that satisfies almost everyone. It might be hard to find, and a lot of effort to implement. A consensus is apriori plausible and desirable. 

For some issues it seems very likely that the interests are directly opposed. There are limits to logically possible compromises, and there is an inavoidable question which coalition to build and whom to disappoint with the fundamental policy decision. 

Of course issues are usually a mix; but for issues heavily biased to one side it might be unfortunate to bias the process to the other side.

Do you think there are issues that are currently treated too politically or too technically?

In general, how will you decide your approach — how much of a new issue is technical or political?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/43#issuecomment-6143628916">link</a>)</summary>

SC, once informed of some technical solutions/limitations from other groups, can help with the politics: tiebreakers, mediation, consensus, deferral. Disagreeing, even loudly, is allowed—but sometimes *a* decision must be made (& other times it’s okay to kick the can until until the weather is better) which is going to leave some unhappy. “Everything is political” always applies to some degree—tech or not. When needing to present a new idea, often you will need political arguments to handle other factions so I think politics is unavoidable/inevitable. I also wouldn’t be surprised if most political stances were, where applicable, technically-informed in the community anyhow.

There are some topics that are political only, such as who gets included/excluded from the community (tho this is mostly the work of the moderation team). Of these I think ultimately the individual’s political leanings will come into play since there isn’t anything technical to lean on to try to foster a better outcomes for the community generally. As such there will be cases like this where a technical solution isn’t possible. We can only be so ‘apolitical’.

I think it’s naïve to assume you can separate most things into “purely technical” issues since you have to ‘deal’ with human communication—specifically for the SC which is more political as @lassulus noted.

</details>

## Unanswered questions

<details>
<summary>Who should decide the policy on LLM-assisted contributions? (<a href="https://github.com/NixOS/SC-election-2026/issues/57">link</a>)</summary>


Given the discussions around LLM-assisted contributions, who should have authority over this policy decision? Individual project teams? The Steering Committee? Contributors through a referendum? What approach would you push for and who would you push for having the authority to decide this policy?

</details>

<details>
<summary>How should the SC work with teams going forward? (<a href="https://github.com/NixOS/SC-election-2026/issues/42">link</a>)</summary>


Our community has known a number of [teams](https://nixos.org/community/#teams), dynamics around which have been described in our [constitution](https://github.com/NixOS/org/blob/main/doc/constitution.md).

Nevertheless, governance questions around the SC and its relation to such teams had come up at our [previous election cycle](https://github.com/NixOS/SC-election-2025/issues) after the [moderation team had stepped down](https://discourse.nixos.org/t/a-statement-from-members-of-the-moderation-team/69828) over what they decribed as SC overreach, after which the 2025 election notably [resulted in](https://discourse.nixos.org/t/results-for-the-second-nix-steering-committee-election-2025/71628) the candidate with most first-preference votes the moderator the SC had removed, amid [internal](https://discourse.nixos.org/t/the-sc-prepared-to-lie-to-us-and-what-we-can-do-about-it-whistleblow/70103) [division](https://discourse.nixos.org/t/the-dire-state-of-the-sc/70426) in the SC itself. The SC subsequently announced the [community team bootstrap group](https://discourse.nixos.org/t/announcement-of-the-community-team-bootstrap-group/77055), since then extended to [Nov 1](https://github.com/NixOS/steering-committee/blob/main/minutes/2026-08-12.md).

This topic seems to have [come up again](https://discourse.nixos.org/t/the-scs-role-in-the-disbandment-of-the-nixpkgs-core-team/79433) thru a different team over this past SC term, as the [nixpkgs core team disbanded](https://discourse.nixos.org/t/the-nixpkgs-core-team-has-disbanded/79413/11), over what both they [as well as](https://luj.fr/notes/20260809T111918==public--steering-committee-report-aug-9-2026__steeringcommittee.org) SC member @JulienMalka described as structural issues with the SC's representative role as unsuited for either delegation or decision-making, raising questions on whether new members of either a nixpkgs core team (if these can be found) or of the steering committee itself might resolve this, given the issues had been alleged to be around the design of the SC and its role itself, rather than about its individual members.

Now, the SC is of course empowered to amend those structures, including said constitution (#33), if not also community values. As a candidate to our new SC then, I would ask you:

- How would you balance such roles as a member of the SC of representation, decision-making, and delegation?
- Would you concur with the above accounts on problems being structural in nature, and how would you approach topics like this during your term?
- Are there any structural changes you would support to this end, and if so, what would those be?

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
<summary>How should SC members behave in public spaces when it concerns Nix matters? (<a href="https://github.com/NixOS/SC-election-2026/issues/50">link</a>)</summary>


As succinctly--but fully!--as possible please describe how you believe SC members should behave in public discussion spaces (social media, blogs, issue trackers, etc.) when discussing Nix business **while in office**.

This might include things like:

* How they talk about other members of the SC
* Their participation in open letters
* Airing disagreements about votes or policy
* Whether, broadly, they are part of a "united front" for SC policy proclamations
* How they publicly treat community members they are known dislike or disagree with

More succinctly:

What behavior would you look at and say "This public behavior is something I do not wish associated with our project and community from somebody in a position of power while speaking on matters concerning the community"?

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
