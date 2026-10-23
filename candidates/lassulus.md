## Candidate Template

- Name: lassulus
- GitHub handle: [lassulus](https://github.com/lassulus)
- Email address: nixos@lassul.us
- Discourse handle (optional): lassulus
- Matrix handle (optional): [@lassulus:lassul.us](https://matrix.to/#/@lassulus:lassul.us)

### Conflict of interest disclosure

Right now I have no clients, so I guess no CoIs

### Motivation to be on the Steering Committee

#### What I have done

- Board
- wiki
- NixCon
- NCA
- probably more stuff I forgot

#### What I will do

- ban being on board and SC at the same time
- more direct democracy experiments
- less consensus (if immediate consensus is not possible, maybe voting and commiting is a better idea)
- refine voting structure
- more steering than micromanaging (delegation is key!)


<!-- BEGIN GENERATED Q&A -->
## Q&A

### Do you think there should be a minimum age requirement to serve on the Nix SC ? ([link](https://github.com/NixOS/SC-election-2026/issues/38))


I fully acknowledge that age is not necessarily a reliable indicator of maturity. However, I believe (_actually, I am totally convinced_) that serving on the Steering Committee requires more than technical expertise. It also demands emotional maturity, sound judgement, diplomacy, life experience, and the ability to handle disagreements constructively.

While these qualities are not exclusive to any particular age group, I believe that life experience often plays an important role in developing them.

1. Do you think a minimum age requirement would be appropriate ?
2. If not, how do you think the community should assess whether candidates possess the maturity and perspective needed to take on such responsibilities ?

Please elaborate on your answers and explain your reasoning.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/38#issuecomment-6087156894">link</a>)</summary>

I would usually expect people to vote on someone they know and met in real life.
But not everybody has the privilege of meeting everybody and "On the Internet, nobody knows you're a dog".

I don't think age is a good metric, maturity should be measured through interactions. If you never interacted with a person and can't judge how mature they are, maybe don't vote for them :)

Also this seems more a question for the people voting than for the candidates. Since this right now, by answering these questions, is the process in which I try to convince you that I'm mature and responsible :D 

</details>

### Are you up to update the constitution to prevent foundation members to also have a SC seat? ([link](https://github.com/NixOS/SC-election-2026/issues/37))


Are you up to update the constitution to prevent foundation members to also have a SC seat?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/37#issuecomment-6078259606">link</a>)</summary>

yes, I would like to ban that option. I think it breaks one body checking in on the other a bit and we (the NCA) didn't ban it in the beginning, because we feared there wouldn't be enough candidates up for SC. The last elections showed enough interested parties so this (seems) no longer a concern

</details>

### Should the Steering Committee vote to unilaterally stabilize (or deprecate) Flakes? ([link](https://github.com/NixOS/SC-election-2026/issues/31))


Would you support the Steering Committee voting to stabilize (or deprecate) Flakes against the preferences of the Nix Core Team? e.g. seeking to stabilize Flakes despite the opinion of the Core Team being they are not technically ready.

If no, what about to make the experimental flag(s) on by default without formal stabilization?

For additional context: https://github.com/NixOS/steering-committee/blob/main/vote-logs/0003-stabilize-flakes.md

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/31#issuecomment-6081516074">link</a>)</summary>

Stabilizing Flakes is a nix team decision. If they don't want to stabilize it, the SC should not pressure them into doing it. This is unhealthy micromanagement the SC should not engage in. If there is an unsolvable conflict inside the Nix Team the SC (or some dedicated members) should mediate inside the Team and help them find a conclusion. Demanding flakes as stable from a political perspective seems unhealthy.

</details>

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2026/issues/34))


This is something I asked in 2024 but it's something I think is still relevant today.

Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/34#issuecomment-6081220562">link</a>)</summary>

We probably should migrate at some point. It's a good idea to take a look at alternatives every now and then and do a cost/benefit calculation. In the short term I see a lot of work required to do it, so it probably won't happen if there is not a group of dedicated people wanting to work on it.

</details>

### What is your vision for the technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2026/issues/60))


What are the three most important technical improvements that Nix (or NixOS) should pursue? What would you deprioritize, if anything, to make room for them, and how would you work with the relevant teams to actually get it done?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/60#issuecomment-6336797865">link</a>)</summary>

I don't think the SC should decide where nix should be going in a technical sense. Although I have a small wishlist of features and some visions I want to get to:

- smaller codebase, exchangeable components (we should be able to split the language and the store layer, etc)
- better language features for bootstrapping (builtins:writeFile :))
- language versioning

</details>

### Participation and absenteeism ([link](https://github.com/NixOS/SC-election-2026/issues/47))


Historically the SC has suffered from various issues regarding participation and ability to execute. We are all volunteers and we cannot ask that the SC supersede all other obligations, but asking the community to elect you as a representative comes with some responsibility and an implied promise to perform that representation. The SC requires a time-commitment and an ability to participate.

- Describe your ability to participate and available to commit time throughout the expected 1 to 2 year term.
- How should absenteeism be analyzed and dealt with?
- What changes would you explore to either encourage more participation or to enable appropriate delegation?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/47#issuecomment-6141352954">link</a>)</summary>

I will probably have the time, but things can change that can shift priorities away. Although the nix/nixos community takes a pretty high priority already as people maybe know :D

Transparency (voters need to learn who to vote for and who not) is probably the best tool here. Also not everyone has the same capacity for sync calls and timezones can also make things more complicated, so enabling more async processes would be an idea as well.

This is a bit hard to plan without seeing the new SC in action. So I would try to adapt dynamically to what I think would be the best way to work together. maybe doing smaller and more meetings, doing more discussions in zulip or doing discussions more in the open? Maybe we can bring forth the people we represent (like say an infra team member) to discuss specific topics in my stead. But these are just lose ideas floating around in my mind, nothing concrete yet! 

</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2026/issues/36))


This is something I asked in 2024 but it's something I think is still relevant today.

What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/36#issuecomment-6081126030">link</a>)</summary>

I think having meeting notes and public votes should be enough transparency? We could maybe try an open call format where non SC members can join and ask questions. From experience those are usually not super productive but can help with understanding each SC members motivation.
In my head-canon you usually would reach out to an SC member directly if you are confused by a a decision, more mechanisms require more work which would probably not payoff for now. Maybe I'm speaking from a position of information privilege here, but in the last period I didn't have the feeling SC decisions were obscure or unclear.

</details>

### How will you ensure community engagement and participation in SC decisions? ([link](https://github.com/NixOS/SC-election-2026/issues/35))


This is something I asked in 2024 but it's something I think is still relevant today.

How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/35#issuecomment-6081187364">link</a>)</summary>

For some people voting is as far they want to be involved in Governance decision. delegate and forget and check in a year later again.

For everyone else: Talk to the SC if you want to have an impact. The SC is meant to represent the community so the SC members should talk to the community. formalizing community interaction probably won't help.

Maybe a monthly open call with SC members (that are available) could be an idea.

Also I want to experiment a bit with community voting for issues, get more data out of the populace. Probably some polling platform where people can authenticate with github and if they are eligible voters, they can cast a vote. One potential question could be the stabilization of flakes.

</details>

<details>
<summary>Additional response (<a href="https://github.com/NixOS/SC-election-2026/issues/35#issuecomment-6144013190">link</a>)</summary>

discussions are not meant to be done below here, not sure what the EC this time thinks about it though. But for now I would use the same schema for polling as we do for the elections (so Github) and just as a temperature check at first.

NixOS IDP could be an alternative in the future, but someone has to set it up & maintain it and so on. So I don't want to force this decision on anyone lightly :) but I would would be happy to help with it

</details>

### What should be done to improve Nix documentation? ([link](https://github.com/NixOS/SC-election-2026/issues/63))


We all know that Nix documentation is currently quite a big pain point for new users and veterans alike. What would you do to steer it toward the right direction? What would you advocate doing to improve documentation?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/63#issuecomment-6335866181">link</a>)</summary>

The docs team should decide the direction of the documentation. The SC and board should support them in that by coordinating with other teams or using team funding based approaches. The technical direction of documentation should lie within the team and the SC should not micromanage that/overrule that.

</details>

### Who should decide the policy on LLM-assisted contributions? ([link](https://github.com/NixOS/SC-election-2026/issues/57))


Given the discussions around LLM-assisted contributions, who should have authority over this policy decision? Individual project teams? The Steering Committee? Contributors through a referendum? What approach would you push for and who would you push for having the authority to decide this policy?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/57#issuecomment-6338295153">link</a>)</summary>

This is a decision which the SC is tasked with.

I think the current policy is the biggest consensus and a community wide poll/referendum will probably approve that, but I'm happy to be proven wrong.

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
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/42#issuecomment-6096716362">link</a>)</summary>

I want to improve working with teams and basically do hardcore delegation.

We should always take inspiration from other OSS projects, I particular like the idea rust has of a Leadership Council https://github.com/rust-lang/leadership-council. Where leads/representative from each team decide the direction of the project. I haven't spend too much time weighing it's ups and downs yet but we should get inspiration from that and empower our teams more in decisions and enable them. If the SC becomes obsolete through a reform into a new structure that is fine as well. We shouldn't be afraid of reforming and improving our governance structures :)

Apart from that radical change, I think inviting team leads to meetings with the SC could help bring forth their grievances and problems they are facing. Not sure if one call with all teams or separate calls with teams are the thing to do here.
I think if at least one SC member is on every bigger team meeting, just to be there to forward requests and answer questions, that could already smoothen things up a bit :)

Happy to take more inspirations on how to lower barriers of communication between teams and have everyone have the same amount of information!

</details>

### Do you support the antitrust and funding proposal in NixOS/org#298? ([link](https://github.com/NixOS/SC-election-2026/issues/32))


Do you agree with the principles and proposed changes outlined in [NixOS/org#298](https://github.com/NixOS/org/pull/298)?

The proposal seeks to preserve maintainer independence by restricting direct corporate funding and asset ownership by the NixOS Foundation, instead favoring independent, contributor-controlled entities.

Would you support this approach? Why or why not? Are there specific parts of the proposal you agree or disagree with?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/32#issuecomment-6081484314">link</a>)</summary>

I argued my opinion on the PR and stand by it

</details>

### What should the future of Nixpkgs governance look like? ([link](https://github.com/NixOS/SC-election-2026/issues/64))


Following the disbandment of the Nixpkgs core team, how do you think governance and decision-making within nixpkgs should be structured going forward? How do you plan to prevent this from happening again and to strengthen and make future teams more resilient? What should be the plan for any future nixpkgs core team if any?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/64#issuecomment-6335825993">link</a>)</summary>

nixpkgs core is a big responsibility. The team got burned out by multiple factors, one of them being stuck behind slow SC decisions or an unwillingness to decide them. If we want to try our nixpkgs core team v2, we should empower them more and give them the resources they need. There is no ultimate solution to make governance great. Less overhead in decisions, committing to do them and the energy to course correct if something goes wrong would be the first steps. I think good governance should be able to evolve fast to different needs :)  

</details>

### Should the foundation prioritize funding individual contributors or companies? ([link](https://github.com/NixOS/SC-election-2026/issues/61))


When funding development within the Nix ecosystem, should the foundation prioritize paying individual contributors directly, contracting companies, or maintaining a balance between the two? How would you allocate resources fairly, avoid conflicts of interest, and measure whether the funding is going where its supposed to be going and actually goes toward improving the project? Do you think funding indie contributors would help make contributing to Nix more sustainable and lead to less burnout?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/61#issuecomment-6336090468">link</a>)</summary>

both could be fine, Obviously people need to contribute to the project in some capacity before they can get funded in any way. If they do it as part of some company or as individuals should not play a big role in funding decisions. For a certain complexity multiple people will be required, if they want to do it as a company, why not?

For checking the impact of the grand: There likely will be a PM per project that is tasked to track this. Depending on the work being done grands are not one round usually and if wouldn't see the return in some funded work, the funding could not be extended? All in all this has to be decided case by case and writing all rules out beforehand leaves you with a big inflexible apparatus which is harder to change :D

</details>

### What should the future of declarative home management in the Nix ecosystem look like? ([link](https://github.com/NixOS/SC-election-2026/issues/59))


With projects like [Home Manager](https://github.com/nix-community/home-manager) and [Hjem](https://github.com/feel-co/hjem) offering pretty different approaches to declarative home management, what direction do you think the Nix ecosystem as a whole should take? Do you think NixOS should adopt one of these solutions for an official default home management solution? Should NixOS develop its own solution from scratch taking inspiration from the various home management projects out there? What role should the SC have in supporting these efforts?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/59#issuecomment-6337927526">link</a>)</summary>

Seems like a very technical discussion to me, so I don't think the SC should wear the ultimate decision here.

Personally, as people may know, I think home-manager is the wrong abstraction, and I think a more wrappers like approach is more composable and reusable by other ecosystems. One of my near term goals is the introduction of package modules (modules next to packages in nixpkgs). That would carry the portable parts of config generation, which are currently hardcoded in our nixos modules. This would enable different users (nix-darwin, home-manager, devshells, etc) to reuse those modules. Logic would be deduplicated and could live next to the package definition :)

</details>

### Should the community be able to initiate binding referendums? ([link](https://github.com/NixOS/SC-election-2026/issues/58))


Do you think voters should have a mechanism to initiate binding referendums on policies without needing the SC? If you do agree then what voting requirements and limits on referendum scope would you support? How should the steering committee implement this in a way that avoid overriding the technical authority of teams while respecting the community voice simultaneously?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/58#issuecomment-6337966887">link</a>)</summary>

I want to experiment with more direct voting on topics instead of voting for representatives. I think the current representation of votes (someone working on staging has the same power as someone bumping package versions for their own packages) are not ideal for this purpose. I don't think the referendums should be binding in the beginning, I would use them more of a tool to inform SC decisions (or other teams).

</details>

### What principles are more important to you than working toward the best available resolution? ([link](https://github.com/NixOS/SC-election-2026/issues/48))


On the SC, you will disagree with your peers. Sometimes you will find yourself in the minority, and in those cases you have the option of either continuing to participate in the conversation, doing your part to influence the group toward a least-bad outcome for everyone (even if all of the likely outcomes seem bad — surely one is least bad!); or concluding early that the best outcome is for the SC to fail at its current enterprise and withdrawing from the conversation, voting against anything the remainder decides.

You might take the latter option and justify it by asserting that you were ‘elected to uphold’ certain core principles, and since all of the available outcomes seem to violate one of those principles, it would be wrong to continue to participate. In that case, the electorate ought to know what those principles are when we elect you!

So what are they? Not asking for every single one of your principles; just the ones for which you would say, if elected, ‘I was elected to uphold this, and that *outweighs* the goes-without-saying thing I was elected to do: participate in the SC's deliberations and use my voice to steer the process toward a successful consensus or compromise.’ (Hopefully it's a short list — few could credibly claim they were ‘elected to uphold’ twenty distinct things!)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/48#issuecomment-6265549917">link</a>)</summary>

since I was on the NCA most of my core beliefs ended up in the values and I plan to uphold them as good as I can.

Some topics where I'm not compromising would be:
- moderation: my experience in the moderation team taught me that blind rule following and automatic moderation won't do anyone any good. Moderation needs a human touch. If we start to blindly follow rules we can be replaced by machines and it won't do the community any good or the people in charge.
- Nix is open and free software, we should never depend on single commercial entities for our core or sellout. We currently have some of those dependencies and I want to have less of those instead of more :)

</details>

### How you approach the balance between political decisions and technical solutions? ([link](https://github.com/NixOS/SC-election-2026/issues/43))


For some issues there is a hope for a solution that satisfies almost everyone. It might be hard to find, and a lot of effort to implement. A consensus is apriori plausible and desirable. 

For some issues it seems very likely that the interests are directly opposed. There are limits to logically possible compromises, and there is an inavoidable question which coalition to build and whom to disappoint with the fundamental policy decision. 

Of course issues are usually a mix; but for issues heavily biased to one side it might be unfortunate to bias the process to the other side.

Do you think there are issues that are currently treated too politically or too technically?

In general, how will you decide your approach — how much of a new issue is technical or political?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/43#issuecomment-6125716651">link</a>)</summary>

I think some issues, like flakes, are more politically treated than technical currently. IMHO the SC is a political body and technical decisions should be delegated if possible.
If this is not possible, due to no consensus, the SC should find a consensus or decide in one direction with the input of the technical stakeholders.

About finding out if an issue is technical or political: I guess I would usually know? otherwise talking to involved parties would be my approach :)

I hope I understood the question correctly

</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2026/issues/33))

This is something I asked in 2024 but it's something I think is still relevant today.

If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/33#issuecomment-6081267255">link</a>)</summary>

Still a draft of an idea, but I wanted to push towards a more representative voting schema. People with a bigger impact/a bigger stake in the project should have a bigger say in it's direction.

I haven't come up with a good metric though that is not easily gameable or worthless in the age of AI. nevertheless I think it would be good to investigate and experiment in this direction :)

as mentioned in the other thread, I also want to ban dual membership in SC & Board!

</details>

### How should Nix improve supply-chain security? ([link](https://github.com/NixOS/SC-election-2026/issues/62))


What concrete improvements would you prioritize for Nix supply-chain security? What security responsibilities should be delegated to the relevant teams, and what resources should the SC and foundation respectively provide?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/62#issuecomment-6335966168">link</a>)</summary>

We have a (currently a bit small) security team. They should be empowered to do all security related decisions and get help from our governance bodies. Most NixOS security issues are also eco system wide issues, so coordinating with other distributions is key here. A secure nixpkgs helps everyone in the ecosystem and more automization/streamlining in finding CVEs and patching them is probably the biggest gain I could think about, although it doesn't seem like there are many blockers right now.

Speeding up staging with more builders and a better scheduler are also things that have been worked on. So I think we are on a good way already, but more resources could make it more better faster :)

</details>

### How would you improve pull request review situation? ([link](https://github.com/NixOS/SC-election-2026/issues/55))


I know these are not perfect metrics (e.g. they don't consider what actually _was_ merged), but to illustrate my point:
* There are thousands of pull requests to Nixpkgs opened just last week.
* There are 12,360 PRs to Nixpkgs opened at the moment of writing this question, 10,698 (87%) of them have no reviews.
* A similar picture is in the Nix repository: 502 of 546 (92%) open pull requests have no reviews.
* Some of these pull requests are stuck because there are plenty of maintainers who aren't active. Some are stuck because there are no named maintainers for some parts of the repository at all.
* There were multiple times when I had to post a link to my pull request to [#review-requests:nixos.org](https://matrix.to/#/#review-requests:nixos.org) to get it reviewed and/or merged. For some pull requests I had to post them twice, because the first time was not effective.

I feel like the current situation discourages some people from contributing to Nixpkgs, which is a shame, because ease of package changes is one of the huge strengths of Nixpkgs compared to other package distributions.

What will you do to ensure that community contributions are reviewed and accepted/declined in a timely manner?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2026/issues/55#issuecomment-6338356775">link</a>)</summary>

I experimented a bit with improving the review process. Currently I have a slopped prototype at https://review.lassul.us/

Most open PRs are new packages and I think we should expect some amount of likes on them before we should act on adding new packages, since nixpkgs can't grow forever (or just get slower in that growth). If we need a new package as a dependency for an existing one this barrier could be lifted.

Otherwise, just better tooling and better interactions could make it better. I think a lot of our problems come from being limited to GitHubs interface which is not made for our usecases.

I also want to give the maintainers field more power at some point. Maintainers should be at some point able to merge updates for the packages they maintain. But maybe we need some intermediary step first, where we go from maintainers to trusted maintainers that could yield these new powers and merge PRs that just touch the packages they maintain. I think most commiters don't need full tree access!

</details>

## Unanswered questions

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
