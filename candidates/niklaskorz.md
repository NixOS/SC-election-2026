## Candidate Template

- Name: Niklas Korz
- GitHub handle: [niklaskorz](https://github.com/niklaskorz)
- Email address: nixsc2026@korz.dev
- Discourse handle (optional): niklaskorz
- Matrix handle (optional): [niklaskorz:matrix.org](https://matrix.to/#/@niklaskorz:matrix.org)

### Conflict of interest disclosure

- Technical Lead of alugha GmbH, the multilingual video hosting platform and dubbing tool suite, which makes heavy use of Nix for CI/CD and development
- Steering Committee Member of Bildungskultur Rhein-Neckar e.V., a public benefits association focused on regional educational projects such as the [Rhein-Neckar-Wiki](https://rhein-neckar-wiki.de) or the [Barcamp Rhein-Neckar](https://barcamp-rhein-neckar.de), which also serves as legal roof for our local NixOS meetup

### Motivation to be on the Steering Committee

#### What I have done

I have been a user of both Nix and NixOS, privately and professionally, for four years now.
My contributions to nixpkgs started at the end of 2023, around the same time that I launched the local NixOS meetup for Mannheim and Heidelberg in the Rhine-Neckar region in Germany.
Since April 2025, I am also a nixpkgs committer.
My areas of expertise resolve around Rust, C++ and Node.js packages, but I'm also maintaining NixOS modules and tests, and have been involved in the occasional staging PR touching stdenv.

This is my second time running in the Steering Committee election, and you can find my last year's statement and answers here:
<https://github.com/NixOS/SC-election-2025/blob/main/candidates/niklaskorz.md>.
One of my key points in the last election was transparency.
I'm delighted that in terms of transparency, most of the points I had run on were actually implemented, which we now see in the form of public SC meeting notes and voting protocols.
While I do not claim sole credit on this, I would like to believe that my ideas have at least influenced these implementations to some degree.

Before its dissolution, I have been approached by the nixpkgs core team to join them as a new member.
Back then, I have been very reluctant on considering the offer as I have not been a member of any other nixpkgs teams thus far.
This is something I do regret.
I think [rhendric](https://github.com/rhendric) has been correct on this in last year's election:
It's much more important to know who to ask and who to delegate to than to believe that my own expertise overweighs all the hardworking, established teams of our community, something that has likely caused more issues on the previous SCs than it has been of benefit to anyone.

#### What I will do

I want to be transparent on what I think can be achieved and not raise unrealistic expectations.
I agree with the currently serving SC member [JulienMalka](https://github.com/JulienMalka) that the [NixOS constitution makes it near impossible](https://luj.fr/notes/20260809T111918==public--steering-committee-report-aug-9-2026__steeringcommittee.org) to drive forward significant changes.
My hope is that even with strongly diverging opinions, the next SC can find a common ground on process instead, handing the power to existing and potentially new teams where possible.
Changing the constitution requires five out of seven SC members to agree on a change, and neither the current composition or the voting system make this a realistic endeavour, which is why I will save my energy on proposing deeper structural changes here.

A topic I do not want to leave untouched as it has been so heavily dominating our industry and our community this year is LLM assistance and autonomous agents.
Upfront, I am not strongly against the use of LLM assistance, which understandably may upset some of my endorsers.
I have no hard feelings against you if this is a deal breaker.
I use them at work, exclusively in the form of open weight models hosted on European infrastructure (supposedly powered by renewable energies, but I have not yet gone the extra mile to verify these claims end to end).
I do not use them for nixpkgs contributions so far, and in the event that we were to ban LLM assisted contributions from nixpkgs, it would not be driving me away from the project.
At the same time, I believe that the LLM policy established by the former nixpkgs core team is a good baseline and I am very thankful for their work and the attempt to listen to the community in the process.
Their approach to this policy is how we should aim to drive forward any change with far consequences to our projects:
By listening to our fellow contributors, giving them the time to react and propose modifications and clarifications, instead of working out policies behind closed doors and then presenting it as a fait accompli.

Nonetheless, an open source project at the scale of nixpkgs depends entirely on human interaction, and the human factor is what is keeping most of us here.
Without the human factor of Nixcon 2025, I would have never considered running for the SC.
My personal opinion is that while LLM assistance should not be banned in its entirety (at the very least I see value in using them for problem / build issue analysis, even if we require the code resulting from the analysis to be written by humans), fully autonomous agents that create PRs without human input, as well as facilitating / inviting mechanisms like an "AGENTS.md" need to be blocked.
Yet, this is not something the SC should decide in isolation.
We need a new nixpkgs core team to think about issues such as these and find the nuances, we need to be in contact with the established teams that actually do the work to hear what would keep them and what would drive them away, and on the topic of a general LLM ban on foundation projects, [we should hold a referendum as has been proposed in the previous term](https://github.com/NixOS/steering-committee/blob/main/vote-logs/0029-referendum-on-llm-contribution-ban.md).


<!-- BEGIN GENERATED Q&A -->
## Q&A

### Do you think there should be a minimum age requirement to serve on the Nix SC ? ([link](https://github.com/NixOS/SC-election-2026/issues/38))


I fully acknowledge that age is not necessarily a reliable indicator of maturity. However, I believe (_actually, I am totally convinced_) that serving on the Steering Committee requires more than technical expertise. It also demands emotional maturity, sound judgement, diplomacy, life experience, and the ability to handle disagreements constructively.

While these qualities are not exclusive to any particular age group, I believe that life experience often plays an important role in developing them.

1. Do you think a minimum age requirement would be appropriate ?
2. If not, how do you think the community should assess whether candidates possess the maturity and perspective needed to take on such responsibilities ?

Please elaborate on your answers and explain your reasoning.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/38#issuecomment-6210575694">link</a>)</summary>

I think the electorate is capable of judging the maturity of candidates by themselves, we don't need an extra barrier. I also don't think that age automatically makes you mature, we have immature people above 30 in both the Nix and FOSS communities, and more generally in world politics and positions of power.

How _should_ the electorate assess maturity of candidates? By reading their candidate statements and by asking questions on the SC election repository, on topics that they deem important or relevant. Ideally you have come across them on your way through our community spaces as well (e.g., Github, Discourse, Matrix, Nixcon), and if you haven't, ask your peers what they think of them.

</details>

### Are you up to update the constitution to prevent foundation members to also have a SC seat? ([link](https://github.com/NixOS/SC-election-2026/issues/37))


Are you up to update the constitution to prevent foundation members to also have a SC seat?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/37#issuecomment-6078679096">link</a>)</summary>

Yes, the foundation board is supposed to be a "partner with the SC in leadership" as per the constitution, and as such, there should be no overlap in membership.

</details>

### Should the Steering Committee vote to unilaterally stabilize (or deprecate) Flakes? ([link](https://github.com/NixOS/SC-election-2026/issues/31))


Would you support the Steering Committee voting to stabilize (or deprecate) Flakes against the preferences of the Nix Core Team? e.g. seeking to stabilize Flakes despite the opinion of the Core Team being they are not technically ready.

If no, what about to make the experimental flag(s) on by default without formal stabilization?

For additional context: https://github.com/NixOS/steering-committee/blob/main/vote-logs/0003-stabilize-flakes.md

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/31#issuecomment-6057179536">link</a>)</summary>

The problem of flake stabilization is multi faceted. I will thus split my answer into the status quo, responsibility, and how the SC may act to improve on the situation. Upfront, I can already say that "unilaterally" is a term we should seldom have to see in combination with SC decisions, and that includes this particular matter.

## Where are we now?

The status quo I derive from the latest [2025 NixOS Community Survey Results](https://nixos.org/surveys/community/2025/):

> Which Nix experimental features do you use?
>
> Flakes (78.9%) and the new nix CLI (66.7%) lead. The next-ranked feature (pipe operators, 8.0%) trails by 58.7 points. 10.9% report using no experimental features; 7.9% are not sure.

Just a fifth of our community do not use flakes. I think it can be said, without much doubt, that a large majority of our community would be rather disturbed by either a removal of or breaking (user-facing) changes to flakes as they exist now.

I also think it is evidence that the barrier to entry for using flakes isn't _that_ high, further improved by the [new Nix installer](https://github.com/NixOS/nix-installer) making it easy to enable flakes at installation time, like the Determinate Nix and Lix installer had already allowed for the years prior. Nonetheless the percentage of flake users has slightly decreased compared to the [2024 survey](https://discourse.nixos.org/t/nix-community-survey-2024-results/55403) (where it was at 85%), and I can only make guesses on the origin of this change, but whenever I do encounter a discussion of new users asking whether to use flakes, the experimental status rarely is the breaking point, and actual shortcomings of flakes are what leads people to abandon flakes in favor of alternatives.

## Whose responsibility is it to stabilize (or deprecate) flakes?

While only one implementation of Nix is an official foundation project, and thus within the SC's influence, I will again refer to the aforementioned community survey results that show two alternative implementations in particular that enjoy a high user base in our community: Lix at 14.8% and Determinate Nix at 9.8%. Note that these are not used exclusively by their own users, as 87.5% of the survey respondents also stated to use the foundation's implementation of Nix.
Yet, that means around a quarter of Nix users are on an implementation that has either decided on a complete feature freeze of flakes or at the very least announced stability guarantees from their own end years ago.

For Lix, the long-term plans _as far as I am aware_ (I am not a Lix contributor or in any other way involved in the project) are still to extract flakes from the core functionality and move them into a plugin, which would again allow inclined users to switch to an implementation aiming for compatibility with the foundation's Nix project.
It would also allow community experimentation on improving flakes, or come up with alternatives that enjoy the same powers as flakes do (like integration into the nix3 commands, evaluation caching, enforced pure evaluation).
Determinate Systems have announced that they will ensure backwards compatibility for flakes in Determinate Nix even in the event that the upstream implementation introduces breaking changes, which is entirely understandable as they target enterprise users with hundreds of developers dependant on the current form of flakes.

Now what does this mean for the foundation's implementation of Nix?
As mentioned before, I don't think we're in a position to introduce fully backwards incompatible changes anymore, despite the experimental status.
Even inside the foundation, Nix doesn't exist in isolation.
If changes were to have direct implications towards nixpkgs, the (hopefully to be reformed) nixpkgs core team must be in the loop.
But this has no implication on whether flakes are deprecated (which doesn't exclude still shipping the functionality as a plugin for backwards compatibility) or continue to be evolved (in the form of versions, or by warning on use of deprecated features).

## What can the SC do?

Foremost, the issue the SC _can_ help with is communication.
This includes communication between teams, both internal and external to the foundation, as well as towards end users.
In particular, we should look into transparently and regularly (as in quarterly, or bi-yearly) communicating the current status of upstream Nix's flake implementation and what is needed to have them reach the finish line.
This doesn't have to be something the SC itself should have to be kept in the loop for, but something we can look into establishing in communication with the Nix team and community members interested in keeping track of and communicating the progress.
I can also imagine the forming of a cross-team flakes working group to be of help, and the SC can try to reach out to all interested parties to kick off the effort, including Lix, Snix and Determinate Nix (though the latter already has a representative on the Nix team, so it seems redundant), but also users outside these Nix implementations with a high dependence on flakes that would be directly affected by any changes.

Yet we cannot and should not force any of these parties (particularly the external ones) into working together if they are not interested, and end users can still signal to individual implementations how important flakes are to them by switching to ones with the feature set they need (which could be Lix, if the plugin system were to come, thus enabling iterative improvements on the status quo) or the stability they need (which also can be Lix, in case of the plugin, or Determinate Nix for enterprise users with support guarantees).

</details>

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2026/issues/34))


This is something I asked in 2024 but it's something I think is still relevant today.

Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/34#issuecomment-6247919655">link</a>)</summary>

> **TLDR**: Yes, but it requires a lot of planning, forming of a working group to do the required research and preparation, and most importantly funding for the infrastructure and for the teams we want to maintain this infrastructure.

This is definitely worth exploring, and as I have proposed during last year's election, it makes sense to start with our non-nixpkgs-scale repositories first, if there is interest in the repositories' respective teams to lead this change. The [Lix project](https://git.lix.systems/lix-project/lix) has already shown this to work very well, using a combination of Forgejo and Gerrit. Other examples for prominent (but not nixpkgs-scale) projects are [Blender](https://projects.blender.org/blender/blender) (using Gitea) and [FFmpeg](https://code.ffmpeg.org/FFmpeg/FFmpeg) (using Forgejo).

For nixpkgs itself, I would love to support a working group that investigates potential alternatives and lays out the work needed to get there. From previous nixpkgs fork attempts, I have heard that Gerrit has turnt out to work the best for a repository of this scale, while Forgejo and Gitea have significant issues in dealing with a repository of this size and activity. I'm personally fascinated by [Tangled](https://tangled.org/) and its ability to entirely replace the git server implementation per repository, potentially allowing us to investigate one better suited for the scale of nixpkgs. They also are users of Nix themselves and I can imagine them to be supportive of such an endeavour. As a VC funded entity I've initially been wary of them, but after having tried to selfhost all relevant components of the stack myself, I'm reasonably confident in a Tangled-driven nixpkgs to be able to survive the company.

At the end of the day, we unfortunately can't neglect the topic of funding and workload. Hardware and server pricing has been exploding over the past 12 months and there is no near end in sight. Github Actions has saved us from the outfall of another sponsorship ending on short notice. We are very likely to depend on new sponsorships or public funding to make this happen. Also, we must not forget that the infra team is already doing tremendous work for the project, and we can't just offload the administration of a new large scale git infrastructure onto them. On the other hand, there is no saying when Github's (or rather, Microsoft's) benevolence will end, and we must be prepared for it. As a reminder, as of last year, Github does not have its own CEO anymore but is now part of [Microsoft's CoreAI division](https://www.techspot.com/news/109040-microsoft-ai-push-tightens-grip-github-after-ceo.html).

</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2026/issues/36))


This is something I asked in 2024 but it's something I think is still relevant today.

What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/36#issuecomment-6210726305">link</a>)</summary>

While I think the current degree of transparency is sufficient, we can work on improving its reach. This isn't something the SC has to work on as a whole, but @JulienMalka's transparency reports carried a lot of weight during this year, and I would love to collaborate with him and other willing SC members on regular SC updates on Discourse, possibly in combination with a revived foundation newsletter (not authored by the SC, so it depends on a willing team to form). We can still call them informal if need be, I think it's more important to not require a full approval vote by the SC on every issue.

We should also look into offering more regular office hours (which also is something Julien has tried to offer on a limited basis at least) in form of public video / voice calls. While that can't be mandatory for all SC members, it's again something I would be happy to collaborate on with willing members. On the positive side, I don't see this requiring any kind of vote by the SC (just like the informal transparency reports).

</details>

### What should be done to improve Nix documentation? ([link](https://github.com/NixOS/SC-election-2026/issues/63))


We all know that Nix documentation is currently quite a big pain point for new users and veterans alike. What would you do to steer it toward the right direction? What would you advocate doing to improve documentation?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/63#issuecomment-6210954800">link</a>)</summary>

I'm leaning towards the opinion that this currently is not in requirement of further _steering_, thanks to @hsjobeki taking the initiative, and indeed, much thanks to him and the docs team is overdue. The docs team is in progress on moving to a multi-page documentation setup on <https://docs.nixos.org/> and if you are reading this and documentation is a topic you want to succeed, you should consider helping them out on the points listed here: https://discourse.nixos.org/t/one-portal-for-nixos-documentation-the-docs-team-vision/77818/16

You can also follow their progress through their regular [meeting notes](https://discourse.nixos.org/t/2026-10-14-documentation-team-meeting-notes/80573) or by joining their documentation office hours, the link to which is included in these meeting notes.

I would also like to point out that we are still seeing innovation from our community in terms of learning resources, most recently in the form of [Nixmap](https://vimjoyer.com/nixmap/), which I consider a very neat introduction to all topics Nix and NixOS. We should look into curating such community material on nixos.org to make them easier to find (and consequently review and remove them when they are taken offline or become too outdated).

</details>

### Who should decide the policy on LLM-assisted contributions? ([link](https://github.com/NixOS/SC-election-2026/issues/57))


Given the discussions around LLM-assisted contributions, who should have authority over this policy decision? Individual project teams? The Steering Committee? Contributors through a referendum? What approach would you push for and who would you push for having the authority to decide this policy?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/57#issuecomment-6193210442">link</a>)</summary>

I believe this is already sufficiently addressed in my candidate statement. An org-wide referendum makes sense to decide on a general ban, but the specifics of the policies (if no general ban results from a referendum) should be handled on a per-project level, and as such, the ultimate authority for the nixpkgs policy falls to the nixpkgs core team, and the policy for the nix project to the nix team. Adopting the current nixpkgs policy as a default for all org projects might be something to consider, and should only be done by the SC in cooperation with our established teams, while still giving the teams the option to override it on a per-project basis.

For why I think such a referendum makes sense to hold in the first place, I will refer to the polls in Discourse thread [LLMs in nixpkgs](https://discourse.nixos.org/t/llms-in-nixpkgs/78964):

- In the first poll, 49% of respondents stated that they are against or strongly against LLM usage
- In the second poll, 50% of respondents stated that more LLM usage would drive them away from nixpkgs
- In the third poll, 56% of respondents stated that they would not review LLM assisted PRs

While a Discourse poll is not strictly representative of the electorate, it delivers sufficient reason to believe our contributors are equally divided on the topic and only a referendum will give us the data we need to decide on a potential ban.

</details>

### What should the future of declarative home management in the Nix ecosystem look like? ([link](https://github.com/NixOS/SC-election-2026/issues/59))


With projects like [Home Manager](https://github.com/nix-community/home-manager) and [Hjem](https://github.com/feel-co/hjem) offering pretty different approaches to declarative home management, what direction do you think the Nix ecosystem as a whole should take? Do you think NixOS should adopt one of these solutions for an official default home management solution? Should NixOS develop its own solution from scratch taking inspiration from the various home management projects out there? What role should the SC have in supporting these efforts?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/59#issuecomment-6210397939">link</a>)</summary>

The adoption of home-manager as an official NixOS foundation project [has already been decided](https://github.com/NixOS/steering-committee/blob/main/vote-logs/0018-official-home-manager.md), paddling back on it post-election would be unprofessional in my opinion.

The question of whether it should be integrated into nixpkgs itself, or continue to live as a separate (but official) project, I will defer to the future nixpkgs core team.

For a separate solution (be it based on wrappers or symlinks) more tailored towards nixpkgs integration, I would love to see proposals being discussed _inside nixpkgs_, and if enough people with strong expertise and opinions on the topic are willing to work on it, forming a team or goal-oriented working group makes sense.

</details>

### What principles are more important to you than working toward the best available resolution? ([link](https://github.com/NixOS/SC-election-2026/issues/48))


On the SC, you will disagree with your peers. Sometimes you will find yourself in the minority, and in those cases you have the option of either continuing to participate in the conversation, doing your part to influence the group toward a least-bad outcome for everyone (even if all of the likely outcomes seem bad — surely one is least bad!); or concluding early that the best outcome is for the SC to fail at its current enterprise and withdrawing from the conversation, voting against anything the remainder decides.

You might take the latter option and justify it by asserting that you were ‘elected to uphold’ certain core principles, and since all of the available outcomes seem to violate one of those principles, it would be wrong to continue to participate. In that case, the electorate ought to know what those principles are when we elect you!

So what are they? Not asking for every single one of your principles; just the ones for which you would say, if elected, ‘I was elected to uphold this, and that *outweighs* the goes-without-saying thing I was elected to do: participate in the SC's deliberations and use my voice to steer the process toward a successful consensus or compromise.’ (Hopefully it's a short list — few could credibly claim they were ‘elected to uphold’ twenty distinct things!)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/48#issuecomment-6310065841">link</a>)</summary>

I pledge to not cooperate with or tolerate severe bigotry on the SC. Among all current SC members and all currently confirmed candidates, this only applies to one person, as far as I'm aware. More specifically, in the event that @mightyiam gets elected, I intend to invoke a [Removal for Conduct](https://github.com/NixOS/org/blob/main/doc/constitution.md#removal-for-conduct) as outlined in the constitution. As one of the many examples of his behavior that is entirely unacceptable for an SC member, I will quote his response to [#44](https://github.com/NixOS/SC-election-2026/issues/44):

> What if the person is a terrorist, in the sense that they're bitter and resentful and sold on class-warfare ideas, environmentalism, sexual liberation propaganda, suicidal emphathy and so on? Don't negotiate with terrorists.

Ironically, this question was about empathy towards people he disagrees with, and he has proven to lack any of it.

</details>

### How well can you empathize with people you disagree with? ([link](https://github.com/NixOS/SC-election-2026/issues/44))


I strongly believe that empathy is the foundation of healthy communication and collaboration. I think that a good indicator that someone is capable of exercising empathy is their ability to state, in their own words, an accurate, good-faith representation of any belief someone else has (especially if they disagree), and why that person believes it. This is not to say that people _shouldn't have_ beliefs or positions (even strong ones!), just that I believe that it is irresponsible for people in positions of authority to hold those beliefs without understanding _why_ others hold different ones.

**Can you write a _good-faith_ description (i.e. not strawman or criticism) of a position of at least one SC member or candidate with whom you disagree?** (Preferably multiple, to show that you are also capable of seeing issues as multifaceted instead of just binary.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/44#issuecomment-6322037197">link</a>)</summary>

I was long contemplating on whether to answer this one. I believe I am potentially putting myself on the spot by doing so, but I also know Sam (the question author) good enough to understand that it was asked with good intentions. I will reference @philiptaron for this exercise, and I want to emphasise that I do not mean to put you on the spot by doing so. Indulging in this exercise means that I hope we can continue to work together in the coming two years. Ideally, this format should be a direct back and forth between the referenced person and myself, preferably _in person_ instead of a public internet thread, but I will have to make do with the short time before the answer deadline.

I have met Philip in person before and I have experienced him as a very charismatic and tolerant person. I will refer to a specific topic we have differing views on. Philip voted against an AI referendum, comparing it to the very narrowly decided Brexit referendum and stating it would only further community division. I have thought about this comparison a lot during the past weeks, and also his intention to leave the project in the event of a total ban. I understand he has a demanding job and a family to take care of. Being able to automate tedious tasks with LLMs (like analysing and fixing build issues, or transcribing SC meetings) allows him to fit nixpkgs and SC work between these responsibilities, and taking that away likely makes it impossible to fit this work into a time frame where he does not have to neglect things that are understandably more important to him. I am sure Philip is not alone with these feelings and circumstances. A lot of work in nixpkgs is carried out by unpaid students (arguably too much, and whether that is fair to them is another issue), and I see how a total AI ban will further drive away many of our full-time employed contributors with families. As a final remark, I have no reason to believe that LLMs negatively affect the quality of his contributions, and we are very lucky to have him.

</details>

## Unanswered questions

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
<summary>How will you ensure community engagement and participation in SC decisions? (<a href="https://github.com/NixOS/SC-election-2026/issues/35">link</a>)</summary>


This is something I asked in 2024 but it's something I think is still relevant today.

How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

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
<summary>Should the community be able to initiate binding referendums? (<a href="https://github.com/NixOS/SC-election-2026/issues/58">link</a>)</summary>


Do you think voters should have a mechanism to initiate binding referendums on policies without needing the SC? If you do agree then what voting requirements and limits on referendum scope would you support? How should the steering committee implement this in a way that avoid overriding the technical authority of teams while respecting the community voice simultaneously?

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
<summary>How would you ensure that the community doesn&apos;t get fractured? (<a href="https://github.com/NixOS/SC-election-2026/issues/52">link</a>)</summary>


There's been increasing polarization within and outside of the Nix community, as evidenced by the wildly distinct positions from the current nominees. While disagreements are a part of any healthy community, there are times when major and/or delicate issues become fighting points that have led some to question their permanence in NixOS projects, as was the case with the AI policy in nixpkgs or certain sponsorships to NixCon.

If you believe that community retention is an important goal of your job as an SC member, how would you work towards maintaining it? And if not, why don't you consider it important?

</details>

<!-- END GENERATED Q&A -->
