"ANABELLE" by Kai Wong

Include Rideable Vehicles by Graham Nelson.

use no scoring

When play begins: say "It's getting dark outside and Mommy and Daddy haven't been home for 2 months. There's strange, dead people walking around outside, making scary noises. I don't like it here. It is frightening. I've run out of food. I need to find a way out."


[START RULES]

A person has a number called max health.
A person has a number called present health.

The max health of a person is usually 100.

The max health of the player is usually 100.

The present health of the player is usually 100.

The present health of a person is usually 100.

A person has a number called max hunger.
A person has a number called present hunger.

The max hunger of a person is usually 100.

The present hunger of a person is usually 100.

Definition: a person is dead if his present hunger is less than 1.

Definition: a person is dead if his present health is less than 1.

An every turn rule:
	if the player is dead:
		say "I think I'll just lie down and sleep now.";
		end the game in death.
		
every turn:
	if a random chance of 1 in 3 succeeds, decrease present hunger of the player by a random number between 3 and 6.

After printing the name of a dead person:
    if the person is dead for at least 1 turn, say "[apostrophe]s dead body" instead.

Instead of taking inventory:
if the number of things enclosed by the player is 0, say "I don[apostrophe]t seem to have anything at the moment.[line break](Health: [present health of the player])[line break](Hunger: [the present hunger of the player])[line break]" instead;
say "I'm carrying: [line break]"; list the contents of the player, with newlines, indented; say "(Health: [present health of the player])[line break]".

Check examining the player:
    say "My name is Anabelle. I am 10 years old.[line break]I'm wearing my favorite yellow shirt and blouse! My hair is in my favorite ponytail, as usual.[line break][line break][status of the player][line break](Health: [the present health of the player])[line break](Hunger: [the present hunger of the player])[line break]" instead.

To say status of the player:
	let x be the present health of the player;
	if x is 100:
		say "I feel perfectly fine, like being in a sunny field.";
	otherwise if x is at most 10:
		say "I'm shaking all over and I can't see straight.";
	otherwise if x is at most 20:
		say "I don't feel well at all. My knees are shaking and I can't see clearly. Where's Mommy";
	otherwise if x is at most 30:
        		say "I feel sore all over and could use some Band-Aids right now.";
    	otherwise if x is at most 60:
      	  	say "I don't feel too good.";
    	otherwise if x is at most 70:
        		say "I feel like my injuries are nothing! I may be a little girl, but I can take this!";
    	otherwise if x is at most 80:
        		say "I can almost pretend I don't hurt right now.";
    	otherwise if x is at most 90:
        		say "I have some cuts and bruises. Where's Mommy to help put on Band-aids?";
    	otherwise:
        		say "I'm a little messy, but Mommy always tells me that I look cute.";
	let y be the present hunger of the player;
	if y is 100:
		say "I don't feel hungry at all right now! Let's go do something.";
	otherwise if y is at most 10:
		say "I feel really weak and tired. Maybe I should just close my eyes and go to sleep.";
	otherwise if y is at most 20:
		say "I'm really hungry and I'm starting to feel really tired.";
	otherwise if y is at most 30:
		say "I feel like I'm starting to starve. I could eat a cow right now, as my Daddy always used to say.";
	otherwise if y is at most 40:
		say "I'm really really really hungry right now.";
	otherwise if y is at most 50:
		say "I'm really really hungry right now. I want some animal crackers, or maybe some Goldfish?";
	otherwise if y is at most 60:
		say "I probably should be thinking about getting some food. Or maybe I shouldn't? Gee, I'm quite hungry.";
	otherwise if y is at most 70:
		say "My stomach is starting to gurgle. I wonder what there is to eat?";
	otherwise if y is at most 80:
		say "Hmm, I haven't eaten in a small while. You know, I could really use some Oreos right now. I love the insides of them.";
	otherwise if y is at most 90:
		say "I'm not really feeling that hungry right now…";
	otherwise:
		say "I'm not hungry at all. Let's go do something!"

[format for code above taken from Brandon Lau's 'Assassin']

Instead of eating the pain pills:
	if the pill-count of the pills is greater than 0:
		decrease the pill-count of the pills by 1.;
		if the present health of the player is at most 75:
			increase the present health of the player by 25.;
			say "I eat the pills and suddenly the pain in my boo-boos goes away.[line break](Health: [the present health of the player])".;
		otherwise:
			now the present health of the player is 100.;
			say "I eat the pills and suddenly I have no more pain in my boo-boos![line break](Health: [the present health of the player])".;
	otherwise:
		say "I don't have any more pills left…".

Instead of using the bandaids:
	if the bandaid-count of the bandaids is greater than 0:
		decrease the bandaid-count of the bandaids by 1.;
		if the present health of the player is at most 75:
			increase the present health of the player by 25.;
			say "I put on a bandaid and suddenly the pain in my boo-boos goes away.[line break](Health: [the present health of the player])".;
		otherwise:
			now the present health of the player is 100.;
			say "I put on a bandaid and suddenly I have no more pain in my boo-boos![line break](Health: [the present health of the player])".;
	otherwise:
		say "I don't have any more pills left…".
		
understand the command "use" as something new. understand "use [things]" as using. using is an action applying to one thing.



[END RULES]


[APARTMENT]

Apartment Living Room is a room. "Our living room…or mine now, anyways. There's our couch in the corner, facing daddy's TV. A glass coffee table is next to the couch. Our large baywindow looks out to the street. 

I can see our kitchen to the west and our bedroom to the south. Our door out is to the east."

understand "coffee table" as the glass coffee table.
understand "table" as the glass coffee table.

Couch is scenery in Apartment Living Room. "It's a nice, cozy, black couch where I spent many days with Mommy and Daddy watching movies on our TV. My favorite was Finding Nemo."
[Think about turning TV on/off]
TV is scenery in Apartment Living Room. "Our TV is on. It's replaying the statewide message that was sent out months ago. 'Seek shelter and food. Stay inside at all times. Do NOT go outside in any case. This has been an official CEDA announcement.'" 
Glass coffee table is scenery supporter in Apartment Living Room. The description is "Mommy left a note on top of the table for me."

Note is on the Glass Coffee Table. It is undescribed. The description is "Ella - We're heading into town for the day. We'll be back before nightfall. Don't worry, sweetie. - Love, Mommy."

understand "baywindow" as window.

The window is a door in Apartment Living Room. The window is undescribed. The window is open. The window is north of the Apartment Living Room. Through the Window is Parking Lot. The description is "I look out our open window. I can see a form of something crawling down below on the street but I can't really tell what it is. I can probably tie something to this window."

[KITCHEN]

Kitchen is west of Apartment Living Room. "Our small, little kitchen. Mommy always baked yummy chocolate chip cookies for me. There are some cupboards overhead. We have a sink, a refrigerator, a stove, and a floor mat. 

I can see our living room to the east."

Cupboards is a closed openable scenery container in the Kitchen. It is locked and lockable. The description is "Daddy hides something in here. I've tried opening it one time, but he keeps it locked up."

Instead of unlocking cupboards with key:
	say "I unlock the cupboards and open it.";
	now the cupboards are unlocked;
	now the cupboards are open.
	
	
[Check printing "You can't see any such thing.":
	say "I can't see that." instead.]

[Check opening cupboards:
	if cupboards are unlocked:
		say "I see my Daddy's gun and bullets." instead.]

				[GUN]

The bullets is a thing. The bullets is in the cupboards. The printed name is "case of [bullet-count] bullet(s) for Daddy's revolver". The bullets have a number called bullet-count. The bullet-count is usually 8. The description is "Some bullets for my Daddy's revolver."

The revolver is a thing. The revolver is in the cupboards. The description is "With great power comes great responsibility, my Daddy always told me. I barely know how to [bold type]shoot[roman type] this thing."

The cupboard key is a thing. The cupboard key unlocks the cupboards. The cupboard key can be found. The cupboard key is not found.

Instead of looking under the Floor mat:
	if the cupboard key is found:
		say "I don't see nothin' else of interest under there.";
	otherwise:
		now the cupboard key is found;
		now the player carries the cupboard key;
		say "I find a key under the floor mat, which I bend down and pick up."
The Floor mat is a scenery supporter in the Kitchen. The description is "A regular, brown floor mat."

[CHECK OPENING REFRIGERATOR]

The stove is a scenery container in Kitchen. It is closed and openable. The description is "There isn't much special about our stove."

The refrigerator is a scenery container in Kitchen. It is closed and openable.
Instead of examining refrigerator:
	say "It's the brand new white refrigerator we got a few months ago. There's letter magnets on it."

Letter magnets is scenery in Kitchen. The description is "I made it spell 'Hello' before but Daddy made it spell 'tam rednu' I wonder what that means?"

Instead of examining Letter magnets for the second time:
	say "tam rednu…hmmm.".

The sink is a scenery supporter in Kitchen. The description is "Our sink. Daddy puts stuff underneath it."

The axe is a thing. The description is "Daddy's red fire axe."

Instead of looking under the sink:
	say "I see Daddy's red fire axe here. I lift it up. It's quite heavy but I can manage.";
	move axe to player.

	
[BEDROOM]	

Bedroom is south of Apartment Living Room. "Our cozy, little bedroom. Mommy and Daddy have a big bed in the middle of the room, with a nightstand next to it. Our small closet is in the wall. 

I can see our living room to the north and our bathroom to the west."

The bed is a scenery supporter in the Bedroom. "Mommy and Daddy's big bed! I feel so small lying on it. They have such big pillows and big bedsheets!"

Pillows is a thing on the bed. It is undescribed. The description is "Big! Covered with big white pillowcases!".

Pillowcase is a thing on the bed. It is undescribed. The description is "Big! Maybe I can combine something with this pillowcase to make something useful…".

Understand "combine [something] with [something]" as combining it with. Combining it with is an action applying to two carried things. 

The combining it with action has an object called the item built.

Setting action variables for combining something with something: 
	let X be a list of objects; 
	add the noun to X; 
	add the second noun to X; 
	sort X; 
	repeat through the Table of Outcome Objects: 
		let Y be the component list entry; 
		sort Y; 
		if X is Y: 
			now the item built is the result entry.
Check combining it with: 
	if the item built is nothing, 
		say "I can't combine [the noun] and [the second noun] into anything useful." instead.
Carry out combining it with: 
	move the item built to the holder of the noun; 
	move the noun to DEATH; 
	move the second noun to DEATH.
Report combining it with: 
	say "I now have a [an item built]!".


Table of Outcome objects
component list			result
{pillowcase, yarn}			pillowcase bag

pillowcase bag is a thing.	

A thing can be tied or untied.

An every turn rule:
	if the player is not carrying the pillowcase bag:
		change the carrying capacity of the player to 3;
	if the player is carrying the pillowcase bag:
		change the carrying capacity of the player to 10.

Check taking a thing:
	if the player is not carrying the pillowcase bag:
		if the player is carrying 3 things:
			say "I can't hold anymore! I'm going to have to find a way to hold more things…" instead;
	if the player is carrying the pillowcase bag:
		if the player is carrying 10 things:
			say "I can't hold anymore! I'm going to have to make some room in my bag…" instead;
			
Instead of taking scenery:
	say "Mmmph! I can't move it!"

[An every turn rule:	
	Instead of printing the things inside a container:
		say "I see: [line break]"; list the contents of the container, with newlines, indented;]
		
	
		
poop is thing in apartment living room. it is undescribed. the description is "Andy Bae is a MILF".

Instead of taking poop:
	say "ANDY BAE IS A MILF."

bedsheets is a thing on the bed. The bedsheets are untied. It is undescribed. The description is "Big and long! Maybe I can combine something with this to make something useful...".

Nightstand is scenery container in the Bedroom. It is closed and openable. The description is "Mommy and Daddy's nightstand. It has a drawer in it."

Yarn is a thing inside the Nightstand. The description is "Some of Mommy's yarn. Maybe I can make something with it…". 

Flashlight is a device inside the Nightstand. The description is "Daddy's flashlight. He uses it to look under the sink." The flashlight is unlit.

understand "drawer" as nightstand.
Instead of opening nightstand:
	say "I open the nightstand and I can see a flashlight here and some yarn.";
	now the nightstand is open.
	
Batteries is a thing.

Instead of taking batteries:
	say "I take the batteries and put it in my flashlight.";
	move batteries to player.

The flashlight is switched off.

After switching on the flashlight:
	if player is carrying batteries:
		now the flashlight is lit;
		say "The flashlight turns on!";
	if player is not carrying batteries:
		say "The flashlight doesn't have batteries…".
		

Bathroom is west of Bedroom. "Our small bathroom. There's a toilet, a shower, a sink, and a medicine cabinet here. 

I can see our bedroom to the east."

Toilet is scenery in bathroom. The description is "It's just our shiny, white toilet.";

Shower is scenery in bathroom. The description is "It's just our shower.";

BathroomSink is scenery in bathroom. The printed name of the BathroomSink is "Sink". The description is "Our sink. Nothing too special."

understand "sink" as bathroomsink.

Medicine cabinet is scenery container in Bathroom. It is closed and openable. The description is "When I get sick or have a boo boo, Daddy gets some medicine or Band-aids from here."

Check opening medicine cabinet:
	say "I open the medicine cabinet. I can see some pain pills and a bandaid.";
	[omit contents in listing.]

Pain pills is a thing inside the Medicine cabinet. The printed name is "[pill-count] pills". The pills has a number called pill-count. The pill-count of the pills is usually 2. The description is "Mmm yum! Some pain pills! Maybe I can eat these if I get hurt."

Bandaids is a thing inside Medicine cabinet. The printed name is "[bandaid-count] bandaids". The bandaids has a number called bandaid-count. The bandaid-count of the bandaids is usually 1. The description is "Some bandaids if I get any boo-boos."

The Hallway is a room.

Apartment Door is scenery in Apartment Living Room. The Apartment Door is a door. It is closed and openable. The Apartment Door is east of Apartment Living Room. Through the Apartment Door is the Hallway. The description is "I hear some scary groaning and moaning noises through the door. I think I'll have to find a different way out."

Instead of going through Apartment Door:
	say "As I walk to our front door, I hear scary noises coming from the other side. I don't want to go through there. I should find a different way out."

Instead of going through Apartment Door for the third time:
	say "As I open the door, a dozen zombies flood into the room, groaning and moaning, reaching and grasping their rotten arms towards me. I am trapped. I guess I'll be seeing Mommy and Daddy again very soon.";
	end the game in death.


Instead of tying bedsheets to the window:
	if player is carrying bedsheets:
		move the bedsheets to the window;
		say "I tie the bedsheets to the window and let it hang down below to the ground.";
		now the bedsheets are tied.
		
Instead of going through the window:
	if bedsheets are tied:
		say "I climb down the bedsheets to the street below. Horay!";
		move the player to Parking Lot;
	if bedsheets are not tied:
		say "It's a looooong way down!".
		
Parking Lot is a room. The description is "I'm here in the parking lot in front of our small little apartment.[line break][line break]I can see a trainyard to the east and the town square to the west." It is west of Trainyard. It is east of Town Square.

			[ENCOUNTER WITH STRANGE PERSON]
Every turn:
	If the player is in the Parking Lot:
		if the player has been in Parking Lot for less than 2 turns:
			say "I can see a strange looking person here. He's lying on the pavement, pawing at something and making groaning noises.";
		if the strange looking person is in DEATH:
			if the player has been in Parking Lot for 1 turns:
				say "I see the dead person just lying here.";
			move deadman to Parking Lot.
			
			



Strange Looking Person is a male person in the Parking Lot. It is undescribed. The description is "He's scary looking. I shouldn't get too close."

[done]
Every turn:
	If the location of the strange looking person is the location of the player:
		if the player has been in Parking Lot for only 2 turns:
			say "The strange looking person notices me and gets up, groaning and moaning. It's coming for me!";
			now the strange looking person is angry;

			
Every turn rule:
	if the location of the strange looking person is the location of the player:
		if the strange looking person is angry:
			say "The strange looking person is groaning and moaning and is trying to kill me!";
			if a random chance of 2 in 3 succeeds:
				Let Z be a random number from 1 to 15;
				if Z is greater than 10:
					say "The strange looking person hits me really hard! Owieee…";
					decrease the present health of the player by Z;
					say "My health goes down by [Z].";
					say "[status of the player]. (Health: [the present health of the player])[line break]";
				otherwise:
					say "The strange looking person hits me hard.";
					decrease the present health of the player by Z;
					say "My health goes down by [Z].";
					say "(Health: [the present health of the player])[line break]";
			otherwise:
				say "The strange looking person swings at me but I dodge it.";


A person can be angry or not angry.					

					
[every turn:
	If the present health of the strange looking person is less than 1:
		the strange looking person is dead;
		say "I kill the zombie!";]

An every turn rule:
	if the present health of the strange looking person is less than 1:
		move the strange looking person to the DEATH;
		if the strange looking person is in the DEATH for less than 2 turns, say "I land a killing blow and the person falls to the ground!";
		



[AXE MECHANIC- STRANGE LOOKING PERSON]

Instead of attacking the strange looking person with the axe:
	If the player is carrying the axe:
		If a random chance of 4 in 5 succeeds:
			Let F be a random number from 20 to 40;
			If F is greater than 30:
				say "My axe swing sinks into the zombie!";
				decrease the present health of the strange looking person by F;
				say "I damaged the zombie for [F] HP.";
				say "(Health: [the present health of the strange looking person])[line break]";
			otherwise:
				say "I swing my axe at the zombie, hitting him!";
				decrease the present health of the strange looking person by F;
				say "I damaged the zombie for [F] HP.";
				say "(Health: [the present health of the strange looking person])[line break]";
		otherwise:
			say "I swing my axe but I miss!";
	otherwise:
		say "I don't have an axe!".

Attacking it with is an action applying to two things. Understand "attack [something] with [something]" and "hit [something] with [something]" as attacking it with.


Instead of attacking the strange looking person:
	say "What do I attack the person with?";

Understand the command "shoot" as something new.
Shooting it with is an action applying to two things. Understand "shoot [something] with [something]" as shooting it with.

An every turn rule:
	if the player is dead:
		end the game in death.

understand "gun" as the revolver.

[GUN MECHANIC - STRANGE LOOKING PERSON]

Instead of shooting the strange looking person with the revolver:
	if the player is carrying the revolver:
		If a random chance of 9 in 10 succeeds:
			Let F be 100;
			say "I shoot the person with my revolver, hitting him!";
			decrease the present health of the strange looking person by F;
			say "I damaged the zombie for [F] HP.";
			say "(Health: [the present health of the strange looking person])[line break]";
		otherwise:
			say "I shoot my revolver but I miss!";
	otherwise:
		say "I don't have a revolver!".
		
understand "hit" as attacking.
	
[AXE MECHANIC - REGULAR]

Instead of attacking the zombie with the axe:
	If the player is carrying the axe:
		If a random chance of 4 in 5 succeeds:
			Let F be a random number from 20 to 40;
			If F is greater than 30:
				say "My axe swing sinks into the zombie!";
				decrease the present health of the strange looking person by F;
				say "I damaged the zombie for [F] HP.";
				say "(Health: [the present health of the strange looking person])[line break]";
			otherwise:
				say "I swing my axe at the zombie, hitting him!";
				decrease the present health of the strange looking person by F;
				say "I damaged the zombie for [F] HP.";
				say "(Health: [the present health of the strange looking person])[line break]";
		otherwise:
			say "I swing my axe but I miss!";
	otherwise:
		say "I don't have an axe!".


[GUN MECHANIC - REGULAR]

Instead of shooting the zombie with the revolver:
	if the player is carrying the revolver:
		If a random chance of 9 in 10 succeeds:
			Let F be 100;
			say "I shoot the person with my revolver, hitting him!";
			decrease the present health of the strange looking person by F;
			say "I damaged the zombie for [F] HP.";
			say "(Health: [the present health of the strange looking person])[line break]";
		otherwise:
			say "I shoot my revolver but I miss!";
	otherwise:
		say "I don't have a revolver!".

[ZOMBIE]

Zombie is a person. It is undescribed. The description is "A dead man walking!" The zombie is in DEATH.

Every turn rule:
	if the location of the zombie is the location of the player:
		if the zombie is angry:
			say "The zombie is groaning and moaning and is trying to kill me!";
			if a random chance of 2 in 3 succeeds:
				Let Z be a random number from 1 to 15;
				if Z is greater than 10:
					say "The zombie hits me really hard! Owieee…";
					decrease the present health of the player by Z;
					say "My health goes down by [Z].";
					say "[status of the player]. (Health: [the present health of the player])[line break]";
				otherwise:
					say "The zombie hits me hard.";
					decrease the present health of the player by Z;
					say "My health goes down by [Z].";
					say "(Health: [the present health of the player])[line break]";
			otherwise:
				say "The zombie lunges at me but I dodge it.";
		otherwise:
			say "He hasn't noticed me yet."
				
An every turn rule:
	if the location of the zombie is the location of the player for three turns:
		now the zombie is angry.


Outdoors is a region.
Town Square, Trainyard and Parking Lot are in Outdoors.

An every turn rule:
	if player is in Outdoors:
		 if a random chance of 1 in 5 succeeds, say "A zombie starts to take notices me. He might try kill me!";
		move zombie to location of player;
		change the present health of the zombie to 100.

Town Square is a room. The Town Square is west of Parking Lot. The description is "I'm here at the town square. I see some zombies milling about.[line break][line break]To the south I can see a small house. To the east I can see a general store. To the north I can see a hardware store."

Zombies is scenery in Town Square. The description is "Some are walking, some are sitting. They don't look very nice."
Zombies1 is scenery in Parking Lot. The printed name is "zombies". The description is "Some are walking, some are sitting. They don't look very nice."
Zombies2 is scenery in Trainyard. The printed name is "zombies". The description is "Some of walking, some are sitting. They don't look very nice."

Understand "zombies" as zombies2.
Understand "zombie" as zombie.


Front of the Small House is a room. The Front of the Small house is south of Town Square. The description is "I'm at the small, dark house. It looks scary! There's a door leading inside.[line break][line break]I see the Town Square to the north."

The small house's door is north of front of the small house and south of the small house's living room. The small house's door is a scenery door. The small house's door is a closed door. The description is "The front door to the small house."

Instead of opening small house's door:
	say "I open the door.";
	now the small house's door is open.


Small House's Living Room is a room. The Small House's Living Room is dark. "There's a fresh zombie here! Aiee!"
Small House's Kitchen is a room. The Small House's Kitchen is west of the Small House's Living Room.
		

Rule for printing the announcement of darkness:
	if the location is the Small House's Living Room:
		say "Click--now I can't see anything!." instead;
	otherwise:
		say "I can't see anything!"
		

Front of the General Store is a room. The general store is west of the Town Square. The description is "I'm standing in front of the town's small general store. Some of the letters on the sign are gone.[line break][line break]I see the Town Square to the east."

Front of the Hardware Store is a room. The hardware store is north of the Town Square. The description is "I'm standing in front of the town's hardware store. The doors and windows are all boarded up.[line break][line break]I see the Town Square to the west."



































Trainyard is a room. The Trainyard is east of Parking Lot. The description is "I'm here at the trainyard. I see a rail stretching into the distance. A train is on the rail to the north but it is derailed. I can see a small little shack off to the south.[line break][line break]I can see the parking lot west of here and the train to the north."

Rail is scenery in Trainyard. The description is "I see the rail go on and on and on. I have a feeling that this is my ticket out of here."

[TRAIN COUPLER]
The Train is a room. The Train is north of the Trainyard. The description is "I'm standing on the train. It's derailed, but to the west the train engine car is still on. I look down at my feet and I can see the couple attaching the engine car to the rest of the derailed train.[line break][line break]I can see another train compartment to the east and the engine car to the west."

train coupler is scenery in Train. The description is "It's twisted together in an ugly angle, a result of the rear train cars becoming derailed. Maybe I can somehow [bold type]break[roman type] this coupler apart."


Engine car is a room. The engine car is west of the Train. The description is "I'm standing on the engine car. I see a panel in the side of the car and a door going inside the engine room. I can see a window looking inside the room.[line break][line break]To the east I can see the train coupler."

Container car is a room. The container car is east of the train. The description is "I'm standing inside the container car. It is yellow. I see a sleeping mat here and a crate.[line break][line break]I can see the train coupler to the west."

understand the command "break" as something new.
Breaking it with is an action applying to two things. Understand "break [something] with [something]" as breaking it with.

Instead of breaking train coupler with hands:
	say "I'm not that strong!"

Engine window is scenery in Engine Car. The description is "I look inside. I see some panels with knobs and switches. There is a conductor's chair in there. Sitting on the chair is a dead man." [make it so you can look through instead of look at.]

The Engine Room is a room. The description is "I'm inside the engine room. There's a dead man sitting on the chair here. On the wall is a panel full of switches and buttons.[line break][line break]The door to the engine car is to the east."

The chair is scenery in Engine Room. The description is "The conductor's chair."

The deadperson5 is scenery in Engine Room. The description is "Looks like he died here…it makes me too sad to think about. He's holding something in his hand."

The hand5 is scenery in engine room. The description is "The dead man's hand is still grasping a lever."

understand "hand" as hand5.
understand "dead man's hand" as hand5.
understand "man's hand" as hand5.

[PANEL]
The panel is scenery in engine room. The description is "The panel is covered with switches and buttons.[line break][line break]Lever A's light is turned off.[line break][line break]Lever B's light is turned on.[line break][line break]Lever C's light is turned off and the lever is missing.[line break][line break]There is a large red button that says 'Start'."
Lever A is a device in engine room. Lever A is scenery. Lever A is switched on.
Lever B is a device in engine room. Lever B is scenery. Lever B is switched off.
Lever D is a thing in engine room. It is undescribed.The description is "It looks like it can be [bold type]put[roman type] in the slot of Lever C." The printed name is "the lever that the dead man is holding".

Lever C is a device in DEATH. Lever C is scenery. The lever C is switched off. The description is "I've taken this from the dead man. It looks like it can be [bold type]put[roman type] in the slot of Lever C."

Instead of examining Lever C:
	if Lever C is in lever slot:
		say "I've taken this from the dead man. I put it into the slot of lever C.";
	otherwise:
		say "I've taken this from the dead man. It looks like the [bold type]lever[roman type]can be [bold type]put[roman type] in the slot of Lever C." instead;

Instead of taking lever D:
	say "Taken.";
	move lever c to player;
	move lever D to DEATH.
	
Instead of switching on Lever B:
	say "I switch the Lever B on. There's a satisfying clunk!";
	now the Lever B is switched on.
	
lever slot is scenery in engine room. It is undescribed. The description is "It belongs to Lever C."

understand "slot" as the lever slot.
understand "lever C slot" as lever slot.
understand "slot C" as the lever slot.

Instead of putting lever C in lever slot:
	say "I put the lever C into the lever slot and flip it on!";
	now the Lever C is switched on.

understand "lever that the dead man is holding" as lever D.
understand "the lever that the dead man is holding" as lever D.

understand "lever that the dead man is holding" as lever C.
understand "the lever that the dead man is holding" as lever C.




understand "dead man" as deadperson5.
understand "man" as deadperson5.

understand "engine door" as enginedoor5.
understand "door" as enginedoor5.

The enginedoor5 is west of the engine car and east of the engine room. The enginedoor5 is a scenery door. The enginedoor5 is an open door. The description is "A door leading to the engine room. It has a window."

understand the command "put" as something new.
Putting it in is an action applying to two things. Understand "put [something] in [something]" as putting it in.


Button is a device in Engine Room. It is undescribed. The Button can be pressed. The description is "The button is red. It has the word 'Start' on it."

understand "red button" as the button.
understand "large red button" as the button.


Instead of pushing the button:
	if Lever A is switched on:
		if Lever B is switched on:
			if Lever C is switched on:
				end the game in victory;
			otherwise:
				say "Not all of the levers are switched on yet!";
		otherwise:
			say "Not all of the levers are switched on yet!";
	otherwise:
		say "Not all of the levers are switched on yet!"











[OUT OF WORLD MOVE]
Instead of going northwest:
	move player to town square;
	move revolver to player;
	move bullets to player;
	move bandaids to player;
	move pills to player;
	move bedsheets to player;
	move pillowcase bag to player;
	move axe to player;
	move lever C to player.


DEATH is a room.

understand "dead person" as the deadman.
understand "person" as the deadman.

Hands is a thing.

deadman is a man in DEATH. The printed name is "dead person". The description is "Dead body of the disfigured person. Scary."

[PAY ATTENTION FIRST TO GENERAL GAME THEN CONCENTRATE CHANGING THE YOUS TO I'S]









