import '../model/guide.dart';

const guide1 = Guide(name: 'Controls', imageUrl: 'assets/controls.png');
const guide2 =
    Guide(name: 'Tips', imageUrl: 'assets/tips.png', contents: tipsContent);
const guide3 = Guide(
    name: 'Detective',
    imageUrl: 'assets/detective.jpg',
    contents: detectiveContent);
const guide4 = Guide(
    name: 'Imposter',
    imageUrl: 'assets/imposter.png',
    contents: imposterContent);
const guide5 = Guide(
  name: 'Crew',
  imageUrl: 'assets/crew.png',
  contents: crewContent,
);

const tipsContent = [
  Content(
      title: '1. BE QUITE',
      text:
          'This might seem kind of obvious, but don\'t just start blathering away as soon as the game starts. The game is meant to be played silently, with the only talking being done during the meeting phase. It would basically ruin the game for all parties if a crewmate were to yell something along the lines of, [blank] killed me! over voice chat without any deliberation. The fun of the game lies within the deduction skills of the Crewmates and the craftiness of the Imposter. Remaining silent maintains a level of fairness between both parties.'),
  Content(
      title: "2. GHOST AREN'T USELESS",
      text:
          "It's only a matter of time before a player finds themselves pushing up daisies. Whether it's because of the Imposter or poor judgment from your peers, the player will turn into a ghost upon death. However, even dead, a Crewmate is still able to complete their assigned tasks. As an added bonus, ghosts generally move faster than the average Crewman, allowing them to move between tasks more quickly. The downsides to being a ghost (besides being dead) are that they aren't able to stop ship emergencies (like reactor melt-downs) and they can't chat."),
  Content(
    title: "3. IMPOSTERS CAN FIX SABOTAGE",
  ),
  Content(
      title: "4. MED-SCAN IS FOOLPROOF",
      text:
          "One of the tasks a Crewmate may encounter is 'Submit Scan' in the Medbay. For this task, a Crewmate must stand in the scanner for ~10 seconds. A green holographic scan will appear over the player and complete the task. What's helpful about this particular scan is that it guarantees the initiator is a Crewmate. Imposters cannot pretend to do this task as the green holographic scan will not appear over them."),
  Content(
      title: "5. READ YOUR TASK CAREFULLY",
      text:
          "Sometimes a Crewmate will receive a task and have no idea what they're supposed to do. Players may find themselves looking in a storage room with no obvious prompt in front of them. For these situations, it's essential to review the tasks carefully. The Task description usually gives a hint as to what the player is supposed to do. Additionally, some tasks are two-part, which means players need to do something in one room and finish in another. If players still aren't sure, they can consult Crewmates during discussion time."),
  Content(
      title: "6. THEY'RE COMING OUT OF WALLS !",
      text:
          "If players witness another player coming out of a vent, that should immediately raise a red flag. Only Imposters are capable of using vents to navigate the map, so seeing a person pop out of one should be a huge give-away. Upon sighting this, a Crewmate should immediately run away (lest they be killed) and hit the emergency button to call a meeting."),
];

const detectiveContent = [
  Content(
      title: "GAMEPLAY",
      text:
          "If you are strictly doing tasks make sure to look out for any suspicious behavior around you. Or if you are doing just detective work do tasks from time to time because if the impostor is a slow player you just might give him more time to kill and end up screwing your self over. And now let's get to the main part."),
  Content(
      title: "3 Tactics",
      text:
          "a. You can camp in security and watch cameras or watch vitals\nb. You can just go around and investigate people's behavior and\nc. You can mixe them together"),
  Content(
      text:
          "a. is not that bad of an idea itself BUT camping is. Because once the imposter finds out that there is a person increasing his chance of getting caught staying in one place alone he is gonna get there probably activate some sabotage and kill you. But when you are on the move from time to time you are not an easy target."),
  Content(
      text:
          "b. Is a pretty good strategy eliminating the good and inspecting the suspicious but I feel like there is only one of you so you might miss on some important things which brings me to the third strategy."),
  Content(
      text:
          "c. As I said i think that both strategies have some flaws but I fell like mixing these is the best combination. Cameras will check multiple places at once and inspecting people will incriminate the impostor and vitals will expose the self reporters."),
  Content(
      tip:
          "Imposters can do the emergency repairs after sabotaging the system. I can't remember if in the past imposters couldn't do the emergency repairs but I fell most people know it by now."),
  Content(
      title: "SUSPICIOUS BEHAVIOR CHECKLIST :",
      text:
          "How do you do fellow crewmates?\nRunning away from a body\nThis one is self-explanatory"),
  Content(
      title: "1. FAKE TASKING",
      text:
          "Impostors will try to blend in with the crew so they will pretend to do task. After someone does a task always check if the progress bar goes up if not they are fake tasking. Another clue can be if they are doing the shooting astroids task and there is no shooting animation on the canon and in skield when you are doing the second part of throwing trash there should be an animation of ejecting trash into space. I think i heard another one about after repairing the shield some lights should flash outside or something, please correct me if I'm wrong. If you see this kind of behavior immediately report them, waste no time."),
  Content(
      title: "2. THEY ARE COMING FOR YOU",
      text:
          "So you just got to security and you start watching cams, just as you scroll trough cameras looking for something you see someone walking but they suddenly stop look at the camera blinking and they all of the sudden they start running towards the security room. My honest advice would be to get the heck out of there. This isn't any evidence but it certainly suspicious. I don't know how many times I was killed by a person all of the sudden going to security and just as I try to leave they kill me. You can doge bullet if you just get out there immediately."),
  Content(
      title: "3. KILLING THE ACCUSER",
      text:
          "An emergency meeting has been called and one of the crewmates says that he thinks possible impostor has vented he says he didn't saw him but he thinks he vented because he didn't see him exit. The crew dismisses the claims because there is not enough evidence in concern that he just might have not seen him. And after that, the accuser was found dead. This might be a coincidence or a cover up and it's on you to investigate it if he didn't get ejected by now."),
  Content(
      title: "4. ELEMINATING PEOPLE:",
      text:
          "An important part of your investigation is to eliminate the innocent from the suspect list so here are some pro tips."),
  Content(
      tip:
          "If you have bad memory write down the innocent people on a piece of paper."),
  Content(
      tip:
          "You are never going to prove fully prove someone's innocence just move from the innocent and semi suspicious to no evidence of innocence."),
  Content(
      tip:
          "Don't share your findings of who is innocent of semi innocent the impostor will probably kill them because imposter doesn't want anyone to be trusted because that will get them killed. What you can share is once you are down to three suspects tell everyone about but don't call an emergency meeting it's not that important."),
  Content(
      tip:
          "Always keep a good distance and don't enter the rooms they are in unless you need to and you can also stand outside of the room to see if they will vent."),
  Content(
      title: "5. INNOCENT PROOF",
      text:
          "They do the med bay scan or shoot asteroids. A group of people that never splits."),
  Content(
      title: "6. SEMI INNOCENT",
      text:
          "Every time you see them they are doing a task or they do task logically like downloading files from weapons for example then going to communication and uploading it or taking fuel and then refilling those stations you need to fill with fuel. From my experience almost never see the impostor do this."),
  Content(
      title: "7.INVESTIGATION AND NORMAL BEHAVIOR",
      tip:
          "Check the opposite way of the way they came from maybe you'll catch them running away from a body(you can do this from time to time)."),
  Content(
    tip:
        "When you see two people go together in a room wait some time and check if there is anybody or are they still alive.",
  ),
  Content(
    tip: "It's not a bad idea to have a team.",
  ),
  Content(
    tip:
        "If you decided you want to team with somebody tell them about it so they aren't going to call an emergency meeting once you start following them.",
  ),
  Content(
    tip:
        "If somebody asks you to follow them to scan or do asteroids follow them it will help your investigation.",
  ),
];

const imposterContent = [
  Content(
    text:
        "An impostor player who stands out is bound to arouse suspicion. So instead of wandering around obviously following potential victims, impostor players are recommended to look like they are completing tasks. Travel to and stand by computers, the engine, etc. Other crewmates will be doing something similar, so it's not like an impostor will be inconvenienced by playing along. But pretending to complete tasks will just make it that much harder for the crewmates to identify the player as an impostor.",
  ),
  Content(
    text:
        "Another important aspect of not looking suspicious is to engage in the discussion when a dead body is found. In that short discussion period before the expulsion vote, the impostor needs to act like they are another crewmate who is trying to win the game like everyone else.",
  ),
  Content(
    text:
        "While an impostor could lie and blame an innocent crewmate, this is not advised since the crewmates as a whole were likely spread all over the map. This means any crewmate the impostor blames could potentially have an alibi if another crewmate happened to be in the same area as them. Similarly, remaining completely silent is only going to cause nothing but suspicion. This means the impostor’s best discussion tactic is to act clueless. Ask questions, try determining who was where, etc. And when the group thinks they know who the impostor is? Agree with them. Even if it is another impostor. Trying to prove otherwise will only make the other impostor player stand out.",
  ),
  Content(
    title: "1. Sabotage And Shut Doors In Among Us",
    text:
        "Not looking suspicious is all well and good, but impostors still need to find the opportunity to kill other people. This means prolonging their time on the map so they can’t leave and actively putting up barriers that will enable impostors to kill more easily.",
  ),
  Content(
    text:
        "In practice, this means sabotaging whenever possible and shutting doors before killing someone off. These will provide an impostor several opportunities to off one of their targets with a higher chance of not getting caught. Taking out the lights, in particular, can be used to great effect if there only a few players left to eliminate. Similarly, something as simple as shutting the door before killing an opponent will allow an impostor player an additional few seconds to make a speedy escape if they need to.",
  ),
  Content(
    title: "2.Avoid Being Seen In Among Us",
    text:
        "This should seem obvious, but an impostor needs to avoid being seen when they are skulking around killing people. One way impostor players often get caught is by being witnessed killing. But they are not seen by a nearby player. Instead, they are seen killing on a security camera. It’s a small thing to miss and is easily overlooked, but there are cameras scattered throughout the map. If one is flashing red, that means someone is watching the feed from the security room. So always be sure to check the camera’s status before eliminating another player.",
  ),
  Content(
    text:
        "Just as important is to never be seen using the vent system. Ever. Traveling by vent is an impostor-only ability, which means if an impostor player is seen using it then they more or less just gave up their identity. So it is advised impostors avoid using the vents too often—especially toward the beginning of a match when there are more players around.",
  ),
  Content(
    text:
        "In fact, some players may only want to use the vents for quick escapes after committing a murder. Getting caught near the body will only seem suspicious after all, so going someplace that is not the scene of the crime seems reasonable. Just be sure to exit into a room where no one is present. Avoid using the vent system to enter a high-traffic or open areas like the café or the administration room. Also, be sure to avoid using the vent system to enter areas that have an active camera in them.",
  ),
  Content(
    title: "3.Know The Crewmates In Among Us",
    text:
        "While it is true that impostors need to kill nearly all of their compatriots, it may be worthwhile to pick who an impostor wants to avoid killing. A good part of the game is dedicated toward kicking out players, which means impostor players may want to tilt things in their favor by leaving less skilled players alive since they are less likely to determine an impostor’s identity. Beginner players are especially useful in this regard, since their newness to the game means they are not privy to how the game works yet.",
  ),
  Content(
    text:
        "So if an impostor player sees someone clearly struggling to make their way around the map, or seems genuinely clueless in their meetings, they may want to let them live for a bit longer. Target the more veteran players first. The rest will be easy pickings later on in the match.",
  ),
];

const crewContent = [
  Content(
    title: "Try to deduce who is/are the Impostor(s).",
    text:
        "Eject people with evidence. If you randomly point fingers, then you're just making it worse and you'll probably lose trust.",
  ),
  Content(
    title: "Use the security cameras.",
    text: "You can see who's doing what, and who's following who.",
  ),
  Content(
    text: "Always keep an eye out for people going inside vents.",
  ),
  Content(
    text: "Try to finish all of your tasks before it's too late.",
  ),
  Content(
    text:
        "If you have tasks such as Clear Asteroids (Weapons), Submit Scan (Medbay), Prime Shields (Medbay)-(only-use ever since a discussion or the intro is over) or Empty Garbage (O2 and Cafeteria to Storage), you should make it whenever someone is near, so you can prove your innocence because these are the only tasks that are animated.",
  ),
  Content(
    text:
        "If you're in a room, very high chances of survival are if you are with the amount of Impostors plus one. While it may be rare to encounter yourself with more than one Impostor while you're the only Crewmate in the room, having a buddy or more of them will certainly help you out if you happen to get killed, and you can use that as evidence if you get thrown under the bus.",
  ),
  Content(
    text:
        "If you have done a visual task and someone who also has a visual task has seen it, follow them so they proceed to do their task. Both will likely trust each other and follow themselves at most part of the game. If this is not the case, try not to follow any other player who hasn't been confirmed, as you'll most likely get ejected for being suspicious due to this following behavior, or you could also get murdered in the way.",
  ),
];
