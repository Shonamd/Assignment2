# Assignment2

This program is a tower defence style game in which you must destroy bugs before they reach the end of the lane they're in.

The game works by clicking on the desired flower, either the pink or the orange. The pink cost 30 energy and can be placed in any row in any column on the grass. It will fire bullets whenever a bug appears. The orange flower costs 20 energy and will automatically be placed under one of the spotlights under the grass. They will automatically produce 8 energy every 5 seconds but energy is automatically generated 1 per second as well. 

When the game starts, a bug will appear at random in one of the 3 lanes and will start moving towards the end in a sin wave pattern. This makes it harder to hit as it can dodge bullets this way. The bug will vanish upon being hit 3 times and a new bug will appear in a random lane. This will continue until the score reaches a cetain number which will level up the game and cause the bugs to go faster. This will occur twice before the final score is reached which will bring you to the final screen which will show your score.

If the bug manages to reach the end of the lane without being hit 3 times, the game will end and you will be shown the score you managed to achieve.

The game uses inheritance twice, to create the bullets for the pink flower which will use its co-ordinates to appear beside its specific flower before firing. Thee orange flower also uses inheritance to produce a tiny sun every 5 seconds that will increase energy. I'm very pleased with this as it really helped better my unserstandng of inheritance. I am also happey with the bug moving in a sin wave as it makes the game slightly more challanging.
