"Southern Adventure" by Sylvan Zheng

Include Basic Screen Effects by Emily Short.

[ definitions ]

A person can be wet.

A person can be drunk.

A person can be bleeding.

The player is not wet.

The player is not drunk.

The player is not bleeding.

A thing can be pettable. A thing is usually not pettable.

A thing can be attached. A thing is usually not attached.

A thing can be noticeable. A thing is usually noticeable.

Before listing nondescript items: 
    now every marked for listing not noticeable thing is not marked for listing.

Understand the command "pet" as something new. Understand "pet [something]" as petting. petting is an action applying to one visible thing. Check petting: if the noun is not pettable, say "That wouldn't make very much sense[line break]" instead. Carry out petting: say "You pet [the noun]". Report petting: do nothing.

A thing has some text called printing. The printing of a thing is usually "blank".

Understand the command "read" as something new. Understand "read [something]" as reading. Reading is an action applying to one visible thing. Check reading: if the printing of the noun is "blank", say "Nothing is written on [the noun]." instead . Carry out reading: say "[printing of the noun]: [line break]". Report reading: do nothing.

Understand "use [something]" as reading.

Understand the command "remove" as something new. Understand "remove [something]" as removing. removing is an action applying to one visible thing. Check removing: if the noun is not attached, say "That wouldn't make very much sense[line break]" instead. Carry out removing: do nothing. Report removing: do nothing.

understand "unattach [something]" as removing.

Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something.").

a thing can be drinkable. a thing is usually not drinkable.

Understand the command "board" as something new. Understand "board [something]" as boarding. boarding is an action applying to one visible thing. 

[Understand the command "drink" as something new. Understand "drink [something]" as reading. drinking is an action applying to one drinkable thing. Check drinking: if the noun is not drinkable, say "That doesn't seem very pleasant" instead. Carry out drinking: say "You drink [the noun]. [line break]". Report drinking: do nothing.]

[ HOSPITAL ROOM ] 

Hospital Room is a room.  "You are in what appears to be a hospital room. The walls are bare save for a bulletin board. [if the player is wet]A small puddle has formed on the ground.[end if]"

puddle is scenery in the hospital room. "[if the player is wet]You see nothing special about the puddle, although the ceiling looks perfectly dry and undamaged.[else]You can't see any such thing[end if]"

keys are here. The description of the keys is "A set of housekeys.". it is not noticeable

The cracked window is a door. It is south of Hospital Room and north of a Grassy Slope. "[if the player is in the bed or the player is in the hospital room]A cracked window lets in a feeble amount of light.[end if]". It is not noticeable.

The hall door is an open door. It is east of Hospital Room and west of the Hallway. "[if the hall door is open]A door across the room is slightly ajar. Outside, voices drift softly back and forth.[otherwise]The door across the room has been tightly locked.[end if]". It is lockable and unlocked. The keys unlock the hall door.

check opening the hall door:
	say "The door is locked tightly." instead;

An IV drip is here. The description of the IV drip is "It's a bag of fluid raised above you. A small tube runs from the bag into your arm.". It is fixed in place. It is attached. It is not noticeable.

carry out removing IV drip:
	say "You wrap your fingers around the needle and yank out the IV drip. A [if the player is bleeding]trail of blood streams down your arm, joining several streaks of dried blood[else]small trail of blood runs down your arm[end if].";
	now the IV drip is not attached;
	now the player is bleeding;

A bed is in the hospital room. The description of the bed is "It's a small bed. [if the player is wet] The sheets are damp, perhaps more than you might expect from a normal amount of sweat. [otherwise] The over-starched sheets are slightly uncomfortable. [end if]". The bed is fixed in place. The bed is enterable. The player is in the bed. the bed is not noticeable.

A phone is here. "You see a phone, wallet, and keys on the table across the room." The description of the phone is "It's a basic cell phone.". The printing of the phone is "You turn on the phone. There are no unread messages."

A wallet is here. The description of the wallet is "A simple brown leather wallet.". it is not noticeable. it is openable. it is closed.

one dollar is inside the wallet.

A Loungent Technologies ID card is inside the wallet.

A bulletin board is here. The description is "A page pinned to the board suggests that Mr. Roaldmann's sepsis complication has reached a critical stage. [line break][if the hall door is locked]Another page notes that he has been found wandering the hospital premises and is to be put under tighter security.[end if] It's difficult to read the small print, so you quickly give up.". the bulletin board is fixed in place. it is not noticeable.

a tattered novel is here. The description of the novel is "It's a dog eared copy of Don Quixote, by Miguel Cervantes." The printing of the novel is "'It seems to me,' responded don Quixote, 'that you aren’t well-versed in adventures—they are giants; and if you’re afraid, get away from here and start praying while I go into fierce and unequal battle with them.' [line break] And saying this, he spurred his horse Rocinante without heeding what his squire Sancho was shouting to him, that he was attacking windmills and not giants. But he was so certain they were giants that he paid no attention to his squire Sancho’s shouts, nor did he see what they were, even though he was very close. Rather, he went on shouting: 'Do not flee, cowards and vile creatures, for it’s just one knight attacking you!'”

Instead of examining the window:
	say "Through the window you make out a grassy meadow cut by a deep and raging river. Beyond it lies a forest."

Instead of climbing the window:
	try entering the window.
	
Understand "climb through [something]" as climbing. Understand "jump through [something]" as climbing.

Instead of going through the closed window: 
    say "The window is shut."

check going:
	if the iv drip is attached:
		say "You can't move very far while attached to the IV drip." instead.

before reading the novel in the hospital room:
	say "The book falls open to a well worn page. [line break]"
	
after reading the novel in the hospital room:
	say "You feel a slight headache. You put the book down."
	
To send back:
	say "<press SPACE to continue>[line break]";
	wait for the SPACE key;
	now there is a dollar in the wallet;
	now the iv drip is attached;
	now the hall door is locked;
	now the hall door is closed;
	now the player is in the bed;

after going through the hall door:
	say "The hallway is full of hospital staff, bustling to and fro. Eventually, one notices your hospital gown and ushers you back into your room, reconnecting the IV and putting you back into bed.";
	send back;

[ GRASSY SLOPE ]

Grassy Slope is a room. "The meadow outside the hospital is peaceful and quiet. The sun, directly above, warms your face. "	

The river is a door. "A deep and raging river runs through to the south. Further, a dark forest looms." The river is south of the grassy slope and north of the forest.

check opening the river:
	say "That doesn't make any sense" instead;
		
Instead of going through the closed river:
	say "The river is far too wide and dangerous to cross on foot. Best to find another way. Continue anyway?";
	if player consents:
		say "You make one or two steps into the river before losing your footing and being swept away by the current.";
		now the player is wet;
		send back;
	
the parking lot is a room. it is east of the grassy slope.

instead of going east from the grassy slope:
	say "The meadow soon gives way to the hospital parking lot, where you are quickly apprehended by security.";
	send back;

[ MEADOW ]

The Riverbank is a room. It is west of the Grassy Slope. "You arrive at a small peninsula in the riverbank. An unkempt woman sits on the porch of a small hut, absentmindedly tapping the ground beside her with a blackened fire poker.". [Inside from the riverbank is the Hut. ]

before going from the grassy slope to the riverbank:
	say "You meander west along the riverbank for what seems like hours. Above you the sun barely moves in the sky, its rays continuing to illuminate your surroundings with a golden glow...";
	say "<press SPACE to continue>[line break]";
	wait for the SPACE key;
	
Sharon is a woman in the riverbank. The printed name of Sharon is "The unkempt woman". Sharon is not noticeable. 

Every turn when the player can see Sharon:
	say "The woman's scratching forms a dreamlike rhythm..." 

understand "woman" as Sharon.

The bridge is a closed door. The bridge is south of the riverbank and north of the Dark Forest. "A rickety bridge extends toward the opposite bank. It sways gently into the wind." The description of the bridge is "It looks dangerous."

Understand "bridge/river/crossing" or "the bridge" or "the river" or "crossing the river" as "[the bridge]"

Instead of asking Sharon about "[the bridge]":
	say "The woman is willing to guide travelers across the river for a small fee - one dollar will do. [line break]"
	
Instead of asking Sharon about "her name":
	say "The woman says her name is Sharon."

The Hut is in the riverbank. "The hut is small and bare, with only the barest necesseties." The hut is enterable. The hut is fixed in place. the description of the hut is "The hut is small and bare, with only the barest necesseties."

tuna is in the hut.

Instead of giving a dollar to Sharon:
	now the dollar is nowhere; 
	say "The woman pockets the money and guides you across the bridge. As you cross she warns you against stepping on several of the bridge planks, which have led more than one traveler to their deaths. Before long you have lost track of which planks are safe to step on.[line break] She dances away, leaving you at the edge of the forest.";
	say "<press SPACE to continue>[line break]";
	wait for the SPACE key;
	now the player is in the Dark Forest;
	
a person can be angry. a person is usually not angry;
	
Before entering the hut:
	say "The woman angrily brandishes her fire poker at you, but you narrowly dodge her attack and slip inside.";
	say "<press SPACE to continue>[line break]";
	wait for the SPACE key;
	now Sharon is angry;

Instead of going through the closed bridge:
	say "You gingerly take a few steps. The planks creak menacingly.";
	if player consents:
		say "On the fourth step the bridge plank cracks beneath your feet! You plummet into the depths of the river.";
		now the player is wet;
		send back;
	else:
		say "You decide to turn back".
	
The Dark Forest is a room. "The forest hums with the chatter of animal life. The trees cast deep shadows across the undergrowth. A faint trail winds south into the undergrowth." 

the trail is scenery in the dark forest. "The trail doesn't seem very well traveled."

the undergrowth is scenery in the dark forest. "The forest floor is thick with twisting vines and tree branches."

leaves are a thing.

to explore forest:
	say "There's no trail that way. Attempt to continue?";
	if player consents:
		say "You become lost in the forest.";
		now the player has some leaves;
		send back;

instead of going west in the dark forest:
	explore forest;
instead of going north in the dark forest:
	explore forest;
instead of going east in the dark forest:
	explore forest;

The Railroad Station is a room. It is south of the dark forest. "The railroad station is impeccably architected, with a large archway entrance and beautiful iron grated windows.".

before going to the railroad station from the dark forest:
	say "After pushing aside numerous branches and swatting away flies, you stand at the end of the trail before a large ornate railroad station.";
	say "<Press SPACE to continue>";
	wait for the SPACE key;

A black cat is an animal. it is inside the railroad station. "A cat with a beautiful dark coat of fur purrs gently, curled up on the tiled floor."

Instead of taking the cat:
	say "The cat easily eludes your attempt to capture it."

instead of petting the cat:
	say "You stroke the cat absentmindedly.";

Instead of giving tuna to the cat:
	move the tuna to the cat;
	say "The cat eats up the tuna. Yum!"
	
The ticket counter is a man inside the railroad station. the printed name of the ticket counter is "the man behind the ticket counter". "The man at the ticket counter seems familiar to you somehow."

understand "train/ticket/board" or "the train" or "buy a ticket" or "buying a ticket" as "[ticket]"

understand "man" or "the man" or "the man behind the counter" or "the ticket counter" as ticket counter.

instead of asking the ticket counter about "[ticket]":
	say "The man behind the ticket counter says that train tickets cost nine thousand dollars. An outrageous sum, surely there must be another way? The man shrugs, mumbling something about 'degenerate riffraff' and returns to tapping methodically on his desk."
	
a trainticket is a thing. the printed name of trainticket is "train ticket". the description is "A blank piece of paper. You used this to get onto the train."

instead of showing the Loungent Technologies ID card to the ticket counter:
	say "The man's eyes widen considerably.[line break]I'm so sorry Sir Roaldmann. For you, there will be no charge.[line break]He hands you a piece of paper and gestures toward the waiting train.";
	now the player has a trainticket;		

the faketrain is in the railroad station. the faketrain is fixed in place. the faketrain is not noticeable. 

instead of entering the faketrain:
	try going inside
	
instead of boarding the faketrain:
	try going inside
	
understand "train" or "the train" as faketrain.
	
the Train is a room. the train has a room called the station. the station of the train is the railroad station. the train is inside from the railroad station.

Before going outside when the player is in the Train: 
	try exiting instead.

Before going inside when the player is in the station of the Train:
	if the station of the train is the railroad station:
		if the player has a trainticket:
			say "You board the train. You sit down in an empty compartment, which isn't particularly difficult to find. You settle into your seat.";
			now the station of the train is the train;
		else:
			say "The conductor bars you from entering the train without a ticket." instead;
	if the player is in the train:
		say "You're already inside the train";
	move the player to the Train instead.
	
Instead of exiting when the player is in the Train: 
	if the station of the Train is the Train: 
		say "It would be wise to wait until the train is stopped before attempting to get off! Continue?";
		if player consents: 
			say "You fling yourself out of the train car, your body hitting the ground violently as the train speeds past. You hear the crunch of several bones breaking before losing consciousness.";
			send back instead;
	otherwise: 
		if the station of the train is the town square:
			say "You trek for a half mile along the train tracks, the yellow sun continuing to illuminate the 	great grassy plain around you with a golden aura.";
			say "<Press SPACE to continue>";
			wait for the SPACE key;
		move the player to the station of the train instead;

the conductor is a man.

the seat is scenery inside the train. "The train seat is a beautiful white leather."

there is a train window inside the train. "Looking out the window you see the forest give way to valleys and mountains, and then open plains with the occasional solitary cow. The sun, still yellow in the sky gives clouds a luminance that makes them like appear like marble. The shadow of the railroad car stretches longer and longer toward the horizon, yet the sun remains fixed in the sky, at that golden angle just before dusk. From your seat on the train the country appears both vast and intimate.". the description is "It's an ordinary train window. Beyond it though lies the changing scenery of the countryside, fields and trees somewhat unfamiliar to you."

the Town Square is a room. it is east of the saloon. "You are in a sleepy town square. You can see a saloon to the west and a shuttered general store to the east."

after reading the novel in the train:
	say "A grinding screech jolts you out of Cervantes' intricate world. Looking out the window it seems the train has stopped. The conductor has reappeared and has opened the train door.";
	now the station of the train is the town square;
	now the conductor is in the train;
	
understand "the train" or "the stopped train" or "where the train is" or "train" as "[the train]"

instead of asking the conductor about "[the train]":
	say "The conductor apologizes, but the train won't be reaching it's final destination today. You'll have to get off here and call a taxi in the next town over."	
				
the General Store is a room. it is east of the town square.

instead of going from the town square to the general store:
	say "The general store is closed, which seems odd for this time of day. Perhaps that's just the way they do things out in the countryside.";
	
the Saloon is a room. it is west of the town square. it is inside from the town square. "An unremarkable saloon. [if unvisited]Your nurse from the hospital is absentmindedly drying glasses behind the bar. You blink. The bartender looks up at you quizzically and you realize you certainly made a mistake, misrecognizing him for someone else.[end if]"

the bartender is a man inside the saloon. the bartender is not noticeable.

a Sazerac is a thing. it is drinkable. 

a spitball is a thing. "A wadded up piece of paper covered in saliva. Gross!"

instead of drinking a Sazerac:
	now the sazerac is nowhere;
	say "You quaff the Sazerac. It goes down beautifully. You savor the tart relish of the liquor.";
	now the player is drunk;
	say "<press SPACE to continue>[line break]";
	wait for the SPACE key;
	say "Unexpectedly, a spitball hits you in the back of the head.";
	now the player has a spitball;
	
every turn when the player has a spitball and the player does not have a knife:
	if a random chance of 1 in 3 succeeds:
		say "Another spitball hits you in the back of the head.";
	if a random chance of 1 in 3 succeeds:
		say "The other table laughs among themselves....";
		
instead of asking the bartender for something, try asking the bartender about it.

instead of asking the bartender about "a drink":
	if the player has a knife:
		say "The bartender implores you not to follow the men outside." instead;
	if the player has a Sazerac:
		say "You need to finish your drink before I'll pour you another one!" instead;
	say "Would you care for [if the player is drunk]another[otherwise]a[end if] drink?";
	if player consents:
		say "The bartender pours you a Sazerac, the deep orange of the rye whiskey casting a faint glow on the dusty table. [if the player is not drunk]Certainly you haven't had one of these in a while - the hospital's bar service was rather lacking due to its nonexistence.[end if]";
		now the player has a Sazerac;
	else:
		say "The bartender shrugs, and returns to polishing glasses."

check going from the saloon:
	if the player has a knife:
		say "You follow the men outside, under the open sky. Although you are without hope, you are also, for some reason, without fear. This was the death you had chosen, or dreamt.";
		end the story finally;
	else if the player has a Sazerac:
		say "The bartender gives you a shout - you'll need to finish your drink before you can leave the saloon." instead;
		
understand "trio/patrons/men" or "the trio" or "the patrons" or "the trio of patrons" or "the men" or "the other patrons" or "the other table" as scoundrel.
		
scoundrel is a man. He is in the saloon. "A trio of patrons sit at the far end of the saloon.". the printed name of the scoundrel is "the trio of patrons". the description of the scoundrel is "A trio of good-for-nothings!"

a knife is a thing. The description of the knife is "It's a dagger, sharp enough to draw blood. You would have no idea how to use this in a fight, as you have no fighting experience...."

instead of asking the scoundrel about "the spitball":
	say "As you move toward the far table, the bartender interjects.[line break] Sir Roaldmann, ignore them. They are drunk. You needn't concern yourself with them.[line break] Go back to your seat?";
	if the player consents:
		say "You move back toward your seat at the bar";
	else:
		say "[line break]You approach the table, holding up the spitball. You demand the trio what they want.";
		say "One of them jeers at you, mockingly. He takes out a knife and begins cleaning his fingernails while continuing to leer at you.";
		say "<press SPACE to continue>[line break]";
		wait for the SPACE key;
		say "A naked dagger clatters to the floor at your feet. You look up, and see an old man sitting in a shadowy corner. He nods at you, almost imperceptibly.[line break]";
		now a knife is in the saloon.
		
every turn when a knife is in the saloon:
	if a random chance of 1 in 2 succeeds:
		say "The bartender tremulously asks you to leave the bar.";
	else:
		say "The bartender tremulously asks the other patrons to leave the bar.";
		
understand "dagger" as knife

after taking the knife:
	say "You bend down to pick up the dagger, the bartenders lamentations barely registering in your ears.";
	say "<press SPACE to continue>[line break]";
	wait for the SPACE key;
	say "The cold steel feels nearly hot beneath your fingers. As you pick up the dagger, the other men get up from their seats and motion you to follow them outside."
	
release along with an interpreter.
