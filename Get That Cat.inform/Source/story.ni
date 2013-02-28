"Get That Cat!" by Douglas Kiang
The release number is 1. The story creation year is 2011. The story headline is "Steel Cage Match". The story genre is "Adventure". The story description is "Two go in, only one comes out.".

The target score is a number variable. The target score is 10.
The maximum score is 20.
Use the serial comma.
When play begins: 
    now left hand status line is "Exits: [exit list]"; 
    now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".
When play begins: say "You sigh and hang up the phone. This morning you had been looking forward to kicking back with a cold lemonade and a game of Super Mario 64. Now the vet has reminded you that your cat has a routine checkup in half an hour. Normally affable and outgoing, your large furry tabby cat understands English and the minute he heard the word 'vet' he made himself scarce. Now you have to chase him through the house and capture him. You aren't looking forward to the struggle."
The Living Room is a room. "This room is largeish, with a bank of sunny windows next to the door to the patio facing the street outside. There are lots of places a cat could hide, especially a cat who does not want to go to the vet. The hallway is to the south, and the kitchen is to the east."
The pappasan is an enterable supporter in the Living Room. The description is "What more is there to say? It's a pappasan."
After entering the pappasan for the first time: increase the score by 1; say "You have a seat on the pappasan. It creaks and flexes. Ahhhhhh... But this is no time to relax! There's a cat to catch!"
Understand "furniture" as the pappasan.
The windows are scenery in the Living Room. The description is "The windows are big and bright and look out on West Ivy Lane. Your beat-up maroon station wagon is idling outside, waiting for you to load the cat into the car."
Sam is an animal in the Living Room. The description is "Sam is a black and white cat. He is a faithful companion, whose blankness of face betrays a simplicity of purpose and absence of guile that is both noble and pathetic."
After examining Sam for the first time: increase score by 1.
The newspaper is in the Living Room. The description is "It is called the Englewood Times. There are all sorts of stories about traffic congestion in New Jersey, the hot, sticky weather, the Yankees losing to the Red Sox, what the heck is a pappasan? and so on, and so forth..."
After examining the Newspaper for the first time: increase the score by 1.
The tabby cat is in the Bathroom. The tabby cat is portable. The description is "The tabby cat is older and wiser than you. His fur is matted and tangled, with a pink nose and a prominent M on his forehead. He gazes at you with a look that is part interest, part contempt. He yawns."
After examining the tabby cat for the first time: increase score by 1.
Instead of taking Sam: say "Sam is the wrong cat."

Every turn: if Sam is in a room (called the current space) begin;
let next space be a random room which is adjacent to the current space;
if Sam is visible, say "Sam heads to [the next space].";
move Sam to next space;
if Sam is visible, say "Sam arrives from [the current space].";
end if.
Every turn when a random chance of 1 in 7 succeeds:
	Say "You hear a horrible choking and hacking sound. Somewhere, someone has coughed up a hairball."
Every turn: if the tabby Cat is in a room (called the current space) begin;
let next space be a random room;
if the Tabby Cat is visible, say "The large furry tabby cat leaves.";
move the Tabby Cat to next space;
if the Tabby Cat is visible, say "There is a large furry tabby cat here.";
end if.
An every turn rule:
	if player is carrying the Tabby Cat:
		say "The tabby cat kicks and squirms. It is hard to carry him.";
		if a random chance of 1 in 2 succeeds:
			say "With a supreme effort, the tabby cat escapes from your grasp, casting a baleful look in your direction as he hastily departs.";
			move the tabby cat to the Bathroom.
The Kitchen is east of the Living Room. "The kitchen is a bright, sunny room. A wraparound counter provides a place to stand up and eat, and the smell of freshly baked chocolate chip cookies wafts through the air. The tiles on the kitchen floor are faded and chipped from the sunlight. This is clearly the most popular room in the house. The living room is to the west of you."
The counter and the tiles are scenery in the Kitchen.
The Oven is a container in the Kitchen. It is closed and openable. It is fixed in place. The description is "An old working model from the 1970s, it is used but serviceable. In fact, it has to be serviced all the time."
Instead of smelling the Kitchen, say "The aroma of freshly baked cookies is irresistable."
After examining the Oven for the first time: increase score by 1.
Instead of taking Oven, say "That's too heavy! You'll throw your back out."
Cookies are a thing. Cookies are edible. Cookies are inside the Oven.
After opening the oven: say "A blast of hot air and the aroma of soft, chewy chocolate chip cookies greets you as you peer eagerly into the hot oven."
[
	if player takes cookies:
		say "The scorching hot tray of cookies burns your unprotected hands and you fall, motionless and still hungry, to the floor.";
		end the game in death.]
Instead of taking the Cookies when the player is not wearing the pair of Potholders:
	say "Are you sure? They look awfully hot.";
	if player consents:
		say "The scorching hot tray of cookies burns your unprotected hands and you fall, motionless and still hungry, to the floor.";
		end the game in death.
After eating the cookies: say "The warm chocolate and the soft dough practically melt in your mouth. They're almost good enough to make you forget there's a cat to catch!"
After taking the Cookies: say "Using the potholders, you pick up the warm, chewy cookies, trying to ignore the cat hair that sticks to the outside."; increase score by 1.
The Cabinet is in the Kitchen. It is a closed openable container. It is fixed in place. The description is "The cabinet stores pots, pans, and other cooking implements."
Instead of taking Cabinet, say "Are you kidding? You can't take the cabinet!"
After examining the Cabinet: increase score by 1.
The pair of Potholders is in the Cabinet. The pair of Potholders is wearable. The description is "The pair of potholders are made out of sturdy, thick, fireproof material. It looks like if you wore them they would protect your hands from all sorts of things."
After taking the pair of Potholders: increase the score by 1.
The Hallway is south of the Living Room. The hallway is below the Attic. "The carpet in the hallway is worn from the scuffling of furry cat feet as they run rapidly from room to room for no apparent reason. The bathroom is to the south and the living room is to the north. There are stairs here that lead up to the attic. The bedroom is to the west of the hallway."
The Bedroom is a room. The Bedroom is west of the Hallway. "The bedroom is just big enough for a king-sized bed. There is a big blue armoire that holds clothes, and a closet in the corner. A bright sunny window looks out over the lawn. The only exit leads back east to the Hallway."
The armoire is a container in the Bedroom. It is openable. It is fixed in place.
Instead of taking the armoire, say "It's too heavy to lift."
After opening the armoire, say "All you see are piles of clothes. No cat here."
The bed is an enterable supporter in the Bedroom.
After entering the bed, say "Ahhhh! It feels so nice to lie down. But shouldn't you be trying to Get That Cat?"
The closet is scenery in the Bedroom. "Looking into the closet, you see stacks of clothing and book boxes. Nothing remotely catlike."
The window is scenery in the Bedroom. "Looking out the window, you see a nicely mowed lawn and a big hammock in the shade. Why does everything have to remind you of how nice it would be take a nap?"
The Attic is a room. The Attic is above the Hallway. "The attic smells musty and is filled with junk. It is a large room that spans the entire house. There are a million places a cat could hide. The stairs lead down to the hallway."
The cat carrier is a container in the Hallway.
After taking the cat carrier: increase score by 1.
The Bathroom is south of the Hallway. The description is "The bathroom is small, just large enough to hold a mirror, the sink, the shower, and the toilet."
The toilet is scenery in the Bathroom. The description is "This is your litterbox. It needs a good cleaning. Now is probably not the best time."
After examining the Toilet: increase score by 1.
The mirror is scenery in the Bathroom. The description is "You look tired after chasing the cat around the house."
After examining the Mirror: increase score by 1.
The shower is here. It is fixed in place. "Opposite the mirror is the shower, which is closed." The description of the shower is "When it's open, you get in it to take a shower. Right now it's closed, keeping you from using it."
After examining the shower: increase score by 1.
Instead of opening or entering the shower, say "The lock is broken and can't be fixed."
Instead of taking the Tabby Cat when the player is not wearing the pair of Potholders:
	say "You look at his claws and teeth and think otherwise. The vet doesn't carry Band-Aids." 
The patio door is scenery in the Living Room. Instead of opening or entering the Patio Door, say "The door is barred from the outside."
At 9:15 AM: say "You realize that you have only fifteen more minutes to get the cat into his carrier." At 9:23 AM: say "Your exhaustion is threatening to send you crashing to the floor, unable to move." At 9:30 AM: say "You are about to drop dead of exhaustion. 'The cats will be the death of me,' you always said."
At 9:33 AM:
    say "You stumble to your knees and then collapse on the floor, quite surprised to find that the phrase 'drop dead of exhaustion' can be literally true.";
    end the game in death.
An every turn rule:
	if the tabby cat is in the cat carrier:
		say "You win!";
		end the game in victory.
