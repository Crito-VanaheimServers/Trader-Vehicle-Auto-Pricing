targetVehType = "All";				//choices are All, Land, Car, Tank, Air, Plane, Helicopter, or Ship.
									//All gets you Land, Air, and Ship mixed into one print out.
									//Land gets you Car and Tank into one pritout.
									//Air gets you Plane and Helicopter into one print out.
									//If you want organization I would run this each time for Car, Tank, Plane and Helicopter.

targetMod = "";					//name of mod you want uniforms from. Leave blank to get all uniforms in arma and any loaded mods.
								//possible mod names for use are but not limited to "Exile" = Exile Mod, "CUP" = CUP Mods,
								//"rhs" = all the RHS mods. 


vehBasePrice = 1000;		//set initial price for all land vehicles
heliBasePrice = 25000;		//set initial price for all helicopters
planeBasePrice= 75000;		//set initial price for all planes/jets
boatBasePrice = 1000;		//set initial price for all boats/subs/ships

vehBulletPrice = 25;		//price per bullet in each mag that comes with Land vehicle if it has a mounted gun
vehShellPrice = 150;		//price per shell in each mag that comes with Land vehicle if it has a grenade launcher
vehRocketPrice = 2000;		//price per rocket that comes with the Land vehicle if it has rocket launcher
vehMissilePrice = 10000;	//price per missle that comes with the Land vehicle if it has missles

heliBulletPrice = 8;        //price per bullet in each mag that comes with Helicopter if it has a mounted gun
heliShellPrice = 50;        //price per shell in each mag that comes with Helicopter if it has a grenade launcher
heliRocketPrice = 650;      //price per rocket that comes with the Helicopter if it has rocket launcher
heliMissilePrice = 1500;    //price per missle that comes with the Helicopter if it has missles

planeBulletPrice = 25;      //price per bullet in each mag that comes with planes/jets if it has a mounted gun
planeShellPrice = 150;      //price per shell in each mag that comes with planes/jets if it has a grenade launcher
planeRocketPrice = 2000;    //price per rocket that comes with the planes/jets if it has rocket launcher
planeMissilePrice = 8000;   //price per missle that comes with the planes/jets if it has missles

boatBulletPrice = 20;       //price per bullet in each mag that comes with boats/subs/ships if it has a mounted gun
boatShellPrice = 50;       //price per shell in each mag that comes with boats/subs/ships if it has a grenade launcher
boatRocketPrice = 2000;     //price per rocket that comes with the boats/subs/ships if it has rocket launcher
boatMissilePrice = 10000;   //price per missle that comes with the boats/subs/ships if it has missles


armorPrice = 40;			//price per each armor rating
loadPrice = 10;				//price per each inventory space
speedPrice = 20;			//price per each speed rating
fuelPrice = 15;				//price per each fuel capacity

//quality ratings for tiers are determined by 4 factors. 1 by armor rating and can set each tier min and max rating in these settings.
//so here the tier1ArmorMin = 0; and tier1ArmorMax = 99;  work together so if the vehicle armor rating is between these points it first 
//gets classified as a tier 1 vehicle but then gets moved up in tier depending on the next 3 factors. Factor 2 if it has a weapon. Factor 3
//is what type of projectile it shoots. Factor 4 is how many weapons systems it has. each factor adds a point and calculates
//the final quality level max is 6.

//Start quality's is the quality you want to start at. If set to 2 then quality 2 is where it starts before the calculations in script 
//determine if it gets raised or stays at this quality. Did this because I do not like players flying helis or planes at a lvl 1.
vehStartQuality = 1;		
heliStartQuality = 3;
planeStartQuality = 3;
boatStartQuality = 1;


tier1ArmorMin = 0;
tier1ArmorMax = 99;

tier2ArmorMin = 100;
tier2ArmorMax = 199;

tier3ArmorMin = 200;
tier3ArmorMax = 299;

tier4ArmorMin = 300;
tier4ArmorMax = 399;

tier5ArmorMin = 400;
tier5ArmorMax = 499;

tier6ArmorMin = 500;
tier6ArmorMax = 100000;

useManualMode = false;		//set this to false for system to find all vehicles automatically.
							//If set to true it will look at the list of vehicles in the array below.

				///If you have a list of vehicles you want to price instead of pricing every vehicle
				///put them in the array below and set useManualMode to true.
userVehicleArray = 	[
						"Exile_Boat_MotorBoat_Orange",
						"Exile_Boat_MotorBoat_Police",
						"Exile_Boat_MotorBoat_White",
						"Exile_Boat_RHIB",
						"Exile_Boat_RubberDuck_Black",
						"Exile_Boat_RubberDuck_Blue",
						"Exile_Boat_RubberDuck_CSAT",
						"Exile_Boat_RubberDuck_Digital",
						"Exile_Boat_RubberDuck_Orange",
						"Exile_Boat_WaterScooter"
					];