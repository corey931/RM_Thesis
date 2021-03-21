# To-do

- [] intro (1d): completely restructure
  - [x] biological markets
  - [x] prosociality
  - [x] anti-social behavior
  - [x] social norms
  - [] define 
    - [] cooperation
    - [] prosociality
  - [x] H2
  - [x] H3
  - [] hypotheses
  - [] refs
- [] methods: reshuffle (0.75d)
- [] results (1d)
  - [] rerun analyses
  - [] improve graphs
- [] discussion (1.25d)
  - [] outline
  - [] write 
- [] abstract (0.25d)

# Argumentation

<**H1**: 1. Norms of rule-following will establish over time. 1. Scores will increase in the fair environment 2. Scores will decrease in the corrupt environment #h1 

digraph flowchart {

      # setup: graph and node statements
      graph [rankdir=LR, color=grey]
      node [fontname = Helvetica, fontcolor = white, shape = rectangle, fixedsize=false, width= 3, style=filled,fillcolor=darkgrey] 
      edge [arrowhead=vee]

      # relations: classes
      H1Scores -> H2Anchor -> H3Choice;
      
      # Hypotheses
      node [fontname = Helvetica, fontcolor = black; shape = rectangle, fixedsize=true, width= 3,color=grey,fillcolor=grey] 
      subgraph cluster01{
          rank = same; H1Scores; IncreaseInFairEnv; DecreaseInCorruptEnv;

          subgraph cluster1{
              node [fillcolor = white]
          rank = same; IncreaseInFairEnv; Hello 
          }
      }
      subgraph cluster02{
          rank = same; H2Anchor; AverageScoresInSecond;
      }
      subgraph cluster03{
          rank = same; H3Choice; MoreInCorruptEnv; LessInFairEnv;
      }

      
      
      

      

}


digraph flowchart {

      # setup: graph and node statements
      graph [rankdir=LR, color=grey]
      node [fontname = Helvetica, shape = rectangle, fixedsize=false, width= 3, style=filled,fillcolor=grey] 
      edge [arrowhead=vee]

      # relations: classes
      H1Scores -> H2Anchor -> H3Choice;

      # relations: methods
      edge [arrowhead=vee, color=Gray]
    
      # methods
      node [fontname = Helvetica, shape = rectangle, fixedsize=true, width= 3,color=grey,fillcolor=white] 
      
      subgraph cluster1{
          rank = same; H1Scores; IncreaseInFairEnv; DecreaseInCorruptEnv;
      }
      subgraph cluster2{
          rank = same; H2Anchor; AverageScoresInSecond;
      }
      subgraph cluster3{
          rank = same; H3Choice; MoreInCorruptEnv; LessInFairEnv;
      }

}
      
# Notes

## Structure

Don’t You Trust Me? Signalling Trustworthiness For Receiving Other’s Help
Don’t You Trust Me? Signalling Untrustworthiness To Collectively Defect

Variables
Partner-choice
Norm-abidance
Bad reputation 

Research Question: Does partner-choice influence 

Context (examples)
Mexican drug cartels (and the government cooperating with them)
Black markets in third world countries
Politicians 

Abstract

Introduction
Rationale
Premises
People usually choose who they befriend with (those who serve their own strategy)
People usually benefit from being selfish more than from helping others
Reputation polarises the degree to which people serve either the self or others

There are contexts in which people benefit by violating rules
Conclusion
Backgroundinfo
Rules like social norms guide people’s decisions: even though social norms usually prescribe to cooperate, there can also be social norms to defect: Volkswagen example
social norms need to be costly 
Mechanism through signalling trustworthiness/reputation
model: honesty/not dishonesty —> cooperation; mediator: reputation
Award reputation points for each act of help (Nowak in Milinkski); what about both help and refusal being displayed
Despite the effectiveness of punishment in increasing cooperation (especially in the long-term in PGs), reputation is gained by reward (which is usually not chosen over punishment)
  —> shying away from taking responsibility for own reputation? 
When do norms to defect come into existence?
Theory of self-concept maintenance

Methods
One-shot vs repeated
Partner choice (in die roll task with 4 players for example)
Games


Results

Discussion

Notes
If a) you asked me to help you and b) I indeed did help you, then you need to wait until you can ask me again. Otherwise, I feel exploited and my trust towards you diminishes. What is the tipping point?
  —> number of requests decrease reputation/trust; mediated by time passed

Issues 
Making clear to participants that defecting increases one’s reputation


Structure, conditions, incentive schemes (how much money earned), number of rounds

Ethics approval

Programming

Writing

Reading

Deadlines: 
06-03-2019: overview
18-03-2019: feedback for programming
20-03-2019: ethics approval
10-04-2019: methods

## Removed

**Dump**
- In this regard, individuals who signal their trustworthiness appear more attractive to others for future social interactions. Specifically, signaling theory holds that when parties have different information they can resolve the problem by honestly communicating, also called signaling, their ability and willingness to cooperate. For instance, individuals [ex].
- In order to do so, individuals signal their trustworthiness to others and they do so by showing that they reciprocate. direct reciprocity is one way of such safety and occurs when, say, person A asks person B for a favor and person B returns the favor directly to person A. 
- Rule following has been studied widely in behavioral economics, where economic games have shown that rule following increases in step-level games as opposed to one-shot games.  
- This competition has been shown to reverse, so that competitors become more corrupt when anonymity exists in addition to other factors. 
- narrow demand and thereby broaden supply, inadvertently increasing competition. 
- Reputation draws on signaling theory with reputation being a social measure of multiple signals over time and, importantly, individuals keep score of others' reputation. This is also known as image scoring. 
- Therefore, the benefits and selection pressures that come with biological markets establish incentive structures where some benefits are more desirable than others. 
- and in addition to the inherent property of biological markets of creating incentive structures, asymmetries in partner choice often exist.
- In addition, the possibility of partner switching increases competition among group members for desirable behaviors. 
- However, different from previous research, participants dynamically learn each others' rule following scores. 
- [blabla] have shown that those choosing enforce which qualities are desirable by excluding undesirable competitors to maximize their profit. 
- Asymmetries in partner choice often exist. Asymmetric partner choice occurs when some individuals have more potential partners at their disposal and ready to choose from than others. [ex]. These asymmetries in partner choice also fortify already existing incentives. [ex]. Therefore, partner choice asymmetrically incentivizes qualities and thereby increases pressures to be categorized as a good interaction partner. 
  - When partner choice asymmetries exist in biological markets, incentive structures are established with desirable behaviors being unilaterally enforced and undesirable behaviors implicitly punished.
- Biological markets are therefore a place where individuals are required to cooperate through quality signaling. 
- However, markets do not exist in a vacuum, rather, in an environment that shapes interactions through its incentive structure, and it is this structure that can shape individuals' signals and which partners they choose. 
- and in doing so they choose those who display desirable qualities. 
- Importantly, both prosocial and corrupt behavior can exacerbate, thus increase in frequency, and both can influence the other, potentially diminishing either prosocial or corrupt behavior. 
- Cooperation becomes rather asymmetric when only one individual in a group can choose who to interact with, which creates selection pressures for potential cooperators. However, which individuals are preferred has been shown to depend on the incentives of the social environment. In prosocial environments, prosociality is preferred and in corrupt environments, corrupt collaboration is preferred. These propensities can exacerbate with each behavior increasing in frequency in its respective environment. In addition, these propensities can spillover from one environment to another. 
- Specifically, competitive altruism 
- by maximizing gains and avoiding losses that follow from their chosen interaction partners. 
- [blabla] have shown the impact of descriptive norms of a neighborhood on household electricity consumption 


## Abstract or so

Cooperation is key for groups and societies to function, where social norms help safeguarding such cooperation. Many societies have norms of prosociality, while others have norms that foster anti-social behavior like corrupt collaboration. These contradicting sets of norms, raise two questions: First, how do groups resolve contradicting norms of rule following when they switch from one environment to the other? Second, to which extent are partners who signal behaviors that are in line with the norms of the respective environment preferred over those who do not? Here we expect rule following and partner choice to be consistent with the norms respective to their environments. We argue for reputation-based partner choice along with partner switching as the underlying mechanisms for driving the effects of environmental consistency. We conclude that over time, groups can adapt to and prefer partnerships consistent with the norms of the environment they are in. 

Social norms such as, for instance, rule following are key for groups and entire societies to function. 

Social norms such as, for instance, rule following guide entire societies. Rule following is [def].  

Cooperation is key for groups and entire societies to function. Norms help to achieve such cooperation [ex]. 

Importantly, social norms are crucial for safeguarding cooperation. Social norms are [def]. Specifically, injunctive norms are [def], while descriptive norms are [def]. Rule following, for example, is widely researched. [research]. [example].

## Methods

**RQ**
1. Do individuals follow rules differently across environments? / Can switching from a corrupt environment to a fair environment make individuals more rule following?
2. And are they chosen differently across those environments? / Are dishonest partners preferred in corrupt environments and prosocial partners preferred in fair environmnents?

**Vars**
- Rule following: 0 - 15 (count)
- Partner choice: 0 / 1
- Dictator game: 1 - 6 
- Die rolling game: 1 - 6 

**Hypotheses**
- rf -> pc (binomial); <-env>: poisson
  - rf -> pc 
  - rf -> pc; <-env>
- pc -> rf (count); <-env>: logistic
  - pc -> rf 
  - pc -> rf; <-env>
  - 
- svo different among: 
  - dictator vs die roll contributions
  - selectors vs deciders 
  - role vs env

- nested models with REML taking intraclass correlation into account [Gelman]
- (poisson) regression models

In this research we first aim to show that partner choice depends on the goals of the chooser. 

Second we expect that competitors adjust their rule following behavior in order to be chosen.

- [] research question
- [] checks in general
- [] check + H1 + surprises
- [] check + H2 + surprises
- [] check + H3 + surprises
- [] surprises in general

# Resources

- The ability to choose cooperative partners likely contributed to the evolution of cooperation (e.g., Aktipis 2004) and created biological markets in which individuals compete to choose and be chosen by the best available partners (Noë and Hammerstein 1994, 1995). There is evidence ofsuch cooperative marketplaces in nonhuman species (e.g., Barrett and Henzi 2006;Bsharyand Noë 2003), and research suggests that humans also choose co- operative partners on the basis of dispositional cooperativeness: people exhibit strong preferences for more generous and cooper- ative partners (e.g., Delton and Robertson 2012), vigilance against cheating in social relationships (Cosmides and Tooby 1992), and even tendencies to compete to appear generous under conditions that allow partner choice (Barclay and Willer 2007; Roberts). Although the partner choice literature to date has focused
on prosociality and generosity in potential cooperative part- ners, there is reason to think that partner preferences should also be informed by potential partners’ productivity (Barclay 2013, 2016). A cooperative partner who produced many ma- terial resources (e.g., from exceptional skill in hunting) could in principle have provided a larger stream of fitness benefits than a less skilled but more generous partner. Some nonhumans choose partners based on competence (e.g., Melis et al. 2006;Vailetal. 2014), and anthropological work has found that individuals or households with productive rep- utations receive more help from others (Gurven et al. 2000; Macfarlan and Lyle 2015). Likewise, recent research demon- strated that individuals with facial cues of ancestral forms of productivity (e.g., the ability to successfully hunt or gather food in the wild) received preferential treatment in an econom- ic game (Eisenbruch et al. 2016), suggesting subjects’ sensi- tivity to cues of productivity as well as generosity. (The Skillful and the Stingy: Partner Choice Decisions and Fairness Intuitions Suggest Human Adaptation for a Biological Market of Cooperators)

## Cooperation

- Humans frequently cooperate to achieve mutual goals. Successful cooperation can lead to better performance, higher innovation, and better overall outcomes (e.g., Rusbult & Van Lange, 2003). Providing people with the freedom to seek trustworthy partners and abandon free riders helps to develop and safeguard cooperation (Efferson, Roca, Vogt, & Helbing, 2016; Rand, Arbesman, & Christakis, 2011). (Ethical Free Riding: When Honest People Find Dishonest Partners)
- Once cooperation is established, a complex evolution takes place, which depends on the size ofthe population, the cost-to- benefit ratio, the average number of rounds and the probability of errors. 32,34,35. A substantial part ofour life is spent in the company of strangers4, and many transactions are nolonger face-to-face. The growth of web-based auctions and other forms ofe-commerce is built, to a considerable degree, on reputation and trust5–10. The possibility to exploit such trust raises what economists call moral hazards. How effective is reputation, especially if information is only partial  (Evolution of indirect reciprocity)
- Cooperation among unrelated individuals has generally been explained by some form of condi- tional reciprocity (Trivers, 1971; Axelrod & Hamilton, 1981).

 
## Norms

- Centralized Sanctions and Leadership In contrast to most recent experimental studies ofnorms and sanctions, real-world collective action groups generally place restrictions on who can punish whom for violating norms (e.g., Ostrom 2000). For instance, the responsibility for monitoring and sanctioning others’ behaviors might be alternated among group members (O’Gorman et al. 2009) or based implicitly on who has more power or influence in the group (e.g., Przepiorka & Diekmann 2013). Perhaps most commonly, the ability to sanction others’ behaviors is often vested in an explicitly designated leader (van Vugt & De Cremer 1999). (Beyond Altruism: Sociologi)
- descriptive norms influencing behavior: household study on electricity usage in the neighbourhood [ref] 

## Signaling theory

- Gintis et al. (2001) show that cooperation can evolve as a costly signal of an unobservable but relevant quality, if this quality is causally related to an individual’s ability to cooperate (see also Leimar 1997; Roberts 1998; Lotem et al. 2003; Smith & Bliege Bird 2005). In the simplest case, there are high- quality and low-quality types who incur low costs (c1) or high costs (c2 > c1), respectively, from sending the signal. If the benefits (s) from being interacted with, conditional on having sent the signal, compensate the high-quality types but not the low-quality types (c2 > s > c1), only the high-quality types can afford to send it and thus will be identified as such. If, (Charitable giving as a signal of trustworthiness: Disentangling the signaling benefits of altruistic acts)
- Many actions function to signal one’s ability to confer benefits on partners, from athletic displays for signalling physical abilities, conspicuous consumption for signalling wealth (e.g., [5]), frequent affiliation with high status individuals to signal social connectedness, even war her- oism signalling strength and courage [6]. Extravagant generosity may do the same, including philanthropy to signal wealth, or sharing hunted game to signal physical abilities (e.g., [7]). These examples are reliable signals of underlying qualities because they would be impossible or disproportionately costly for those who do not possess those qualities [8?]. 
  - People tend to target wealthy, high-ability, and well-con- nected individuals for partnerships because of the benefits of pairing with them. Thus, people who are central in social networks receive more generosity from friends [9], healthy-looking people are more likely to have their trust reciprocated [10], and those wearing luxury brands are more likely to be hired or have their requests granted [5]. This principle generalizes beyond humanity: even rats and trout will cooperate more often with partners who are more effective or productive collaborators [11,12]. 
  - Good partners are not only able to confer benefits, but willing to do so. Indeed, the latter is deemed more important among hunter gatherers [13]. Many traits that we deem ‘nice’ are cues of others’ willingness to confer benefits [14]. For example, charitable giving is seen as a cue of trustworthiness [15], especially when the giver receives no personal benefits for giving [16]. Benefits to us are especially valued: ‘friends’ are partners who greatly value us and are emotionally committed to conferring benefits upon us, and vice versa. We distinguish between true friends and ‘fair weather friends’ by the attention they give us [17], especially when such attention is costly [18]; those who do not honestly value us would rather invest their limited attention elsewhere [19]. We can also assess others’ cooperativeness based on whether they deliberate before helping, because good allies (e.g., true friends) help without calculating the costs [20?]. These various actions become inputs in our estimations of others’ future behav- iour towards us (see [21], on ‘welfare trade-off ratios’), which then affects who we trust and partner with. (Biological markets and the effects of partner choice on cooperation and friendship)

### Reciprocity

- kin selection, group selection, reciprocal altruism (Evolution of indirect reciprocity by image scoring)

### Reputation

- This shows the strong relationship between reciprocity, trust and reputation as described by Ostrom [12]. Nowak & Sigmund [32,33] showed by both computer simu- lations and an analytical model that cooperation through indirect reciprocity can evolve if everybody has an ‘image score’ that is increased by one point after each act of helping and is decreased by one point after each act of refused help. A less costly way than punishment to induce cooperation
in the public goods game is provided by combining the public goods game with a game in which a good reputation is necessary for gaining money [69,70]. If rounds of the public goods game are alternated with rounds of the indirect reci- procity game and players have the same pseudonym in both games, the public good is maintained at the high start- ing level [69]. cooperation assume that a person’s reputation is public knowl- edge (e.g. [10]), known either from direct observation of social interactions or from gossip. (Reputation, a universal currency for human social interactions)
- In the last decade, perhaps no mechanism promoting cooperation and prosocial behavior has received as much attention as reputation. Once viewed as secondary to material incentives, the reputational rewards that go to those who behave in generous or cooperative ways are now also viewed as a powerful force shaping prosocial action. Researchers generally conceive of reputation as the “set of judgments a community makes about the personal qualities of one of its members” (Emler 1990, p. 171). Here we are particularly concerned with reputational judgments with moral content, specifically judgments of a person’s cooperativeness, trustworthiness, or generosity. (Beyond Altruism: Sociologi)
- Here, we retain the original term "generalized reciprocity", which proposes that people expect to receive benefits from other in-group members, especially if they have a positive reputation (Yamagishi et al., 1999) (Unbounded indirect reciprocity: Is reputation-based cooperation bounded by group membership?)

**Updating strategies**
- Other theorists [46] questioned the suitability of the scoring strategy and showed theoretically with a more complex popu- lation structure that Sugden’s [47] ‘standing’ strategy is superior in establishing cooperation through indirect recipro- city. Using the image scoring strategy a player would correctly refuse to help an individual with a low score thereby reducing their own score. This player might suffer from not being helped thereafter. In Sugden’s [47] standing model everybody starts in good standing, but loses good standing by failing to help a recipient in good standing. However, failing to help reci- pients who lack good standingdoes not damage the standing of a donor. It seems to be fair to refuse to help someone who lost their good standing without losing one’s own good standing. Ohtsuki & Iwasa [48] did an in-depth analysis of these two and several other reputation updating rules for indirect recipro- city and found standing strategies to be more successful than scoring strategies in most cases. The updating rule defines the ‘reputation dynamics’ of a person [48]. We Why do humans not adopt the superior reputationupdating
strategy of standing? They use scoring, which is not among Ohtsuki and Iwasa’s ‘leading eight’. They [48] assume that each player has a binary reputation, either good or bad, which is known publicly. This is a perfect world. In reality, people do not know about all interactions. Missing information can be filled by gossip to some extent [11]. If your potential receiver has decided ‘no’ in their last interaction as a donor, you need to know whether this ‘no’ was justified to determine whether theyare nowin goodstandingandyouwill help themaccording to a standing strategy. If they had respondedwith their ‘no’ to a ‘no’ of their previous receiver that they had decided as a donor, you need to go further back to previous interactions until you know whether the last ‘no’ you encounter was justified or not, to determine whether your current receiver’s ‘no’ is justified and they are in good standing. If information about only one interaction is missing, you cannot decide how to respond to your present receiver. This is different with an image scoring strategy. A receiver’s image score is the net sum of all ‘yes’ and ‘no’ they have decided in the past. A rather cooperative person will have a positive image score of, say, þ15. It does not matter if information about a few interactions is missing, their image score will still be positive and you help them if you use a scoring reputation updating strategy. Standing strategies might have failed too often in the past, so that humans today prefer the less precise but applicable reputation updating strat- egy of scoring. New theoretical approaches have approved the above reasoning formally and have re-established the validity of the scoringstrategy [49,50], but see [51] for a different solution. (Reputation, a universal currency for human social interactions)

### Impression management

- (An Organizational Impression Management Perspective on the Formation of Corporate Reputations)

## Corruption

- no differences in corruption across countries (Cut From the Same Cloth:
Similarly Dishonest Individuals Across Countries)
- Humans frequently cooperate to achieve mutual goals. Successful cooperation can lead to better performance, higher innovation, and better overall outcomes (e.g., Rusbult & Van Lange, 2003). Providing people with the freedom to seek trustworthy partners and abandon free riders helps to develop and safeguard cooperation (Efferson, Roca, Vogt, & Helbing, 2016; Rand, Arbesman, & Christakis, 2011). However, cooperation is also an essential part of corruption (Köbis, van Prooijen, Righetti, & Van Lange, 2016; Weisel & Shalvi, 2015). People often engage in corrupt collaboration—the attainment of per- sonal profits by joint acts of rule violation (Weisel & Shalvi, 2015). Such corrupt collaboration, for example, occurred in the recent Volkswagen scandal, when employ- ees collaboratively manipulated Volkswagen engine soft- ware to pass key emissions tests, possibly because of their motivation to obtain team bonuses (Goodman, 2015). These joint rule violations resulted in an estimated societal cost of 59 early deaths and $450 million (Barrett et al., 2015). In collaborative settings in which people work together, one’s behavior may affect the partner’s behavior. Indeed, unethical behavior, such as helping someone else cheat on an exam, can be learned from observing peers, colleagues, and even strangers (O’Fallon & Butterfield, 2012). Merely seeing someone lie facilitates imitation of such behavior (Kocher, Schudy, & Spantig, 2017; Soraperra et al., 2017), being exposed to norm violations increases subsequent norm violation (Keizer, Lindenberg, & Steg, 2008), and the more prevalent cor- ruption is in a country, the more likely people from that country are to violate rules (Gächter & Schulz, 2016). Furthermore, because people do not like to be excluded (Kurzban & Leary, 2001), and are even willing to violate rules that benefit the group to avoid being excluded (Thau, Derfler-Rozin, Pitesa, Mitchell, & Pillutla, 2015), honest people might adapt their behav- ior and start lying to prevent their dishonest partners from leaving them. (Research Article Ethical Free Riding: When Honest People Find Dishonest Partners)
- However, cooperation is also an essential part of corruption (Köbis, van Prooijen, Righetti, & Van Lange, 2016; Weisel & Shalvi, 2015). People often engage in corrupt collaboration—the attainment of per- sonal profits by joint acts of rule violation (Weisel & Shalvi, 2015). (Ethical Free Riding: When Honest People Find Dishonest Partners)
- This information alters the behavior of other group members to act, for purely sel"sh motives, in ways that provide positive payo!sto signalers*for example, preferring them as alliesor mates, or deferring to them in competitive situations (Smith & Bliege Bird, 2000). (Costly signaling and cooperation)
- free-riding

### Dishonesty 

- Previous studies have revealed that working with other people leads to more dishonesty than working alone (Conrads, Irlenbusch, Rilke, & Walkowitz, 2013; Gino, Ayal, & Ariely, 2013; Sutter, 2009; Weisel & Shalvi, 2015), prosocial lies breed trust (Levine & Schweitzer, 2015), and working with the same partner over time increases bribery as people develop trust (Abbink, 2004). Outside the laboratory, however, people can often choose how long and with whom to interact. Do dishonest people search for a dishonest partner—a “partner in crime”? dishonesty. Such behavior is comparable with free riding in a public- goods dilemma in which people may profit from others’ contributions to a public good while not contributing themselves (Andreoni, 1988). (Ethical Free Riding: When Honest People Find Dishonest Partners)

## Biological markets

- Biological market theory suggests that more valuable partners are entitled to more
advantageous resource distributions, so intuitions about “fair” distributions should track cues of partner value (Baumard et al. 2013). Eisenbruch et al. (2016) found that apparently valuable partners received higher offers and lower demands in a bargaining game, suggesting that in- tuitions about how resources should be divided reflect biological markets, in which individuals bid for relation- ships with more valuable partners. (The Skillful and the Stingy: Partner Choice Decisions and Fairness Intuitions Suggest Human Adaptation for a Biological Market of Cooperators)

## Partner Choice

- The ability to choose partners allows people who are willing to violate rules (in the present case, lie) to increase personal profit by abandoning those who are not willing to cooperate (Reuben & Stephenson, 2013). studies have shown that people do not lie much, even when lying is profitable (Abeler, Nosenzo, & Raymond, 2016); they avoid situations that may tempt them to lie (Fishbach, Friedman, & Kruglanski, 2003); and they prefer to interact with those who are similar (Currarini, Jackson, & Pin, 2009). people care about seeing themselves as moral but at the the same time seek to maximize personal profit (Mazar, Amir, & Ariely, 2008). To maintain such an honest self- image, people use various self-serving justifications when violating rules (Ayal & Gino, 2011; Shalvi, Gino, Barkan, & Ayal, 2015). (Ethical Free Riding: When Honest People Find Dishonest Partners)

## Social norms

-  Social norms refer either to the perception of common (dis)approval of a particular kind of behavior (injunctive norm) or to a particular behavior common in a setting (descriptive norm) (11–16). (The Spreading of Disorder)

# Resources (Old)

## reputation
- milinski, semmann, krambeck (2002): reputation as a currenty that is valid in social games. people cooperate if indirect reciprocity is a concern, else they do not.  
- wedekind and milinski (2000): image scoring promotes cooperative behavior in situations where direct reciprocity is unlikely.  
przepiorka, norbutas, corten (2017): reputation formation has been found to promote cooperation. in cryptomarkets for illegal drugs, reputation creates real incentives for cooperative behavior at a large scale.  
- falk and szech (2013): preferences in markets (bilateral and multilateral) erodes moral values, relative to individual preferences  
- ely, fudenberg, levine (2006): The key to bad reputation is that participation is optional for the short-run players, and that every action of the long-run player that makes the short-run players want to participate has a chance of being interpreted as a signal that the long-run player is “bad.”
- cottrell, neuberg, li (2007): Across different measures of trait importance and different groups and relationships, trustworthiness was considered extremely important for all interdependent others.  
- barclay (2016): The best partners are those most willing, able, and available to confer benefits, either intentionally or incidentally [2. Barclay, 2013: Strategies for cooperation in biological markets, especially for humans. Evol Hum Behav]  
- gintis and smith (2001): We show that honest signaling of underlying quality by providing a public good to group members can be evolutionarily stable, and can proliferate in a population in which it is initially rare, provided that certain plausible conditions hold, including a link between group-bene"cial signaling and underlying qualities of the signaler that would be of bene"t to a potential mate or alliance partner.  
- fehrler and przepiorka (2013): Here we show that if a proportion of individuals with social preferences is maintained in the population through kin or multi-level selection, cooperative acts that are truly altruistic can be a costly signal of social preferences and make altruistic individuals more trustworthy interaction partners in social exchange.  

## rule violations / dishonesty / lying
-gross and de dreu (2017): Under oxytocin, participants violated the rule more often, especially when they had high need for structure and high approach sensitivity.
- gross and de dreu (2012): interindividual differences in rule following predict honesty and rule-following individuals exhibit a stronger social influence on others
- gross, leib, offerman (2018): Dishonest people seek a partner who will also lie—a “partner in crime.” Honest people, by contrast, engage in ethical free riding: They refrain from lying but also from leaving dishonest partners, taking advantage of their partners’ lies. 
- gerlach, teodorescu, hertwig (2019): meta-analysis. dishonest behavior depends on both situational factors, such as reward magnitude and externalities, and personal factors, such as the participant's gender and age. Further, laboratory studies are associated with more dishonesty than field studies, and the use of deception in experiments is associated with less dishonesty. To some extent, the different experimental paradigms come to different conclusions. For example, a comparable percentage of people lie in die-roll and matrix tasks, but in die-roll tasks liars lie to a considerably greater degree. We also find substantial evidence for publication bias in almost all measures of dishonest behavior.  
- dahling, chau, mayer et al (2000): pro-social rule breaking (PSRB) is negatively related to task performance ratings across both sources despite its pro-social motivation intended to help the organization.  
- gobinda goswami, oskooee, goswamif (2005): By using data from 60 developing countries over the 1982-1995 period, we show that the black market premium is higher in countries that are plagued by more corruption. This tinding seems to be insensitive to five different measures of corruption as well as whether cross-section or panel.  
- halevy, shalvi, verschuere (2013): we found self-reports of frequent lying to positively correlate with real-life cheating and psychopathic tendencies. Our findings question whether lying is normative and common among most people, and instead suggest that most people are honest most of the time and that a small minority lies frequently.  
- mann, garcia-rada, hornuf et al (2016): We found no meaningful relationships between dishonesty on our task and macro-level indicators, including corruption ratings and cultural values. These findings suggest that individuals around the world are similarly dishonest at their core.
Keywords.  
- morrison (2006): the likelihoodofpro-social rule breaking was positively related to job autonomy, coworker behavior, and risk-taking propensity.  
- ades and di tella (1996): overview of causes and costs of corruption

## partner choice
- eisenbruch and roney (2017): productivity mattered more to men than to women, and productivity mattered more when it revealed underlying skill rather than luck. In addition, gen- erosity had far larger effects than productivity, but the effect of productivity was moderated by generosity, suggesting sophis- ticated heuristics for choosing cooperative partners.  
- raihani and barclay (2016): When both partners were equally fair (or unfair), choosers typically preferred the richer partner. Nevertheless, when asked to choose between a rich-stingy and a poor-fair partner, choosers prioritized fairness over wealth—with this preference being particularly pronounced when wealth was unstable.  
- everett, crocket, pizarro (2016): people who make characteristically deontological judgments are preferred as social partners, perceived as more moral and trustworthy, and are trusted more in economic games. deontological moral intuitions may represent an evolutionarily prescribed prior that.  
- melnikoff and bailey (2018): the preference for morality vs. immorality in others is conditional on the evaluator’s current goals. Specifically, when immorality was conducive to participants’ current goals, the preference for moral vs. immoral traits in others was eliminated or reversed. The preferences for mercifulness vs. mercilessness (exper- iment 1), honesty vs. dishonesty (experiment 2), sexual fidelity vs. infidelity (experiment 3), and altruism vs. selfishness (experiment 4) were all found to be conditional. These findings oppose the con- sensus view that people have a dominant preference for moral vs. immoral traits in others.  
- barclay and willer (2007): we show here that people actively compete to be more generous than others when they can benefit from being chosen for cooperative partnerships, and the most generous people are correspondingly chosen more often as cooperative partners.  

## svo
- balliet, parks, joireman (2009): meta-analysis of 82 studies assessing the relationship between social value orientation (SVO) and cooperation in social dilemmas. A signifi cant and small to medium effect size was found (r = .30). Results supported a hypothesis that the effect size was larger when participants were not paid (r = .39) than when they were paid (r = .23). 
