# gurchin\_game



##### What is this game dude:



Zorbulon Pylon Defense Force is a wave based Arcade shooter developed in 2 and a half weeks in for CISC 3367 (Game Design and Development).

The focus for 4900 is to expand the games scope, providing more weapons, enemies, and adding online multiplayer functionality.



Weapons: 11/10

Enemies: 9/10 (13 technically but theyre not in rotation)

Multiplayer: functional but requires port forwarding or vpn



Test Build (Last Updated 5/11/2026): https://vulkinx.itch.io/zorb-pylon-defence-force-testing



to-do:

* Fix tab freezing(done)
* **Fix game getting progressively greener** (consequence of webgl build)
* Add 144 fps mode(done)
* Add special meter(done)
* Add Gurchin's Turret Special(done)
* Add Zelinka(done)
* Add Zelinka's Bullet Storm Special(done)
* Add a default weapon for Zelinka(done)
* Make character select interface(done)
* **Make room for selecting missions (done)**
* Make a ready up status before room transition into mission (done)
* Make weapon inventory mechanic(done)
* Add XOO-P1NG-TON (done)
* Add weapon level indicator(done)
* Adjust UI to look not so ugly (done)
* \- This means making health, fuel, and special meter more readable
* \- (this also meant reworking the weapon display menu but I got to that luckily
* Add and complete dasher enemy (done)
* **Add New York Invasion Mission (\*moving hand side to side gesture\*)**
* **Add Gurchenis Gauntlet Mission (scrapped)**
* Add G'Molgda (and his default and his special) (scrapped)
* Add Gurchin II (scrapped, J0UL3S was added instead)
* Add emote system (for signaling to other players context sensitive information like "I need help!" or "Great job!", should be unique lines per character) (done)
* (MAYBE) Adjust the Empresses design (maybe I made her too skinny) (no)
* **Add Multiplayer for gods sake (yeah)**
* **Get Node.js matchmaking server onto a public IP address (done\[fly.io])**
* **Fix scr\_afterimage (sort of)**



Multiplayer facilitating changes to be made:

* Rework grade rewarding sequence to something more object oriented and changable with internal game speed(so pausing finally works) (didn't have time for it)
* Figure out if players should share combo meter between them or have it be individual (how will this be graded?) (they will)
* Figure out if players share flub or not (yes they do)
* Make picking up flub increase score (didn't do that)



Far off stuff: (I suspected I wouldn't do these)

* **Add Takema (and her default and her special)**
* **Add J0UL3S (and their default and their special) (how the hell did this get done)**
* **Add Qwoth Invasion Mission**
* **Add Zorbulan Monument Mission**
* **Rework Bat to be more interesting**
* **Add default weapon setting**
* **Add different vendors that players can choose to go into a mission with to increase game depth**
* **Add weapon shop so buying weapons to load into your default (and a way to buy these weapons, should you also have to unlock them before being allowed to buy them?)**
* make the game like really good or something





Extensions/Frameworks/API's Used:

Easy Cam (https://marketplace.gamemaker.io/assets/8832/easy-cam)

Input V10 (https://codeberg.org/offalynne/Input)

Verlet Integration (https://github.com/sareklambert/gms-verlet-integration)

Circular Bars (https://marketplace.gamemaker.io/assets/5369/circular-bars-for-gms2)

Node.js \& Express

