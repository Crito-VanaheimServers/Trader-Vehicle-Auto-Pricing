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
planeStartQuality = 4;
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

useManualMode = false;		//Set to true to place out vehicles into the editor for pricing.

				//If useManualMode is set to false you must put a list of vehicle class names between these brackets.
userVehicleArray = 	[
						"B_G_Offroad_01_F",
						"B_G_Offroad_01_repair_F",
						"B_G_Quadbike_01_F",
						"B_G_Van_01_fuel_F",
						"B_G_Van_01_transport_F",
						"B_MRAP_01_F",
						"C_Hatchback_01_F",
						"C_Hatchback_01_sport_F",
						"C_Offroad_01_F",
						"C_Offroad_01_repair_F",
						"C_Quadbike_01_F",
						"C_SUV_01_F",
						"C_Truck_02_box_F",
						"C_Truck_02_covered_F",
						"C_Truck_02_fuel_F",
						"C_Truck_02_transport_F",
						"C_Van_01_box_F",
						"C_Van_01_fuel_F",
						"C_Van_01_transport_F",
						"I_G_Offroad_01_repair_F",
						"I_G_Quadbike_01_F",
						"I_G_Van_01_fuel_F",
						"I_G_Van_01_transport_F",
						"I_MRAP_03_F",
						"I_Quadbike_01_F",
						"I_Truck_02_ammo_F",
						"I_Truck_02_box_F",
						"I_Truck_02_covered_F",
						"I_Truck_02_fuel_F",
						"I_Truck_02_medical_F",
						"I_Truck_02_transport_F",
						"O_G_Offroad_01_F",
						"O_G_Offroad_01_repair_F",
						"O_G_Quadbike_01_F",
						"O_G_Van_01_fuel_F",
						"O_G_Van_01_transport_F",
						"O_MRAP_02_F",
						"O_Quadbike_01_F",
						"O_Truck_02_Ammo_F",
						"O_Truck_02_box_F",
						"O_Truck_02_covered_F",
						"O_Truck_02_fuel_F",
						"O_Truck_02_medical_F",
						"O_Truck_02_transport_F",
						"O_Truck_03_ammo_F",
						"O_Truck_03_covered_F",
						"O_Truck_03_device_F",
						"O_Truck_03_fuel_F",
						"O_Truck_03_medical_F",
						"O_Truck_03_repair_F",
						"O_Truck_03_transport_F",
						"B_APC_Tracked_01_AA_F",
						"B_APC_Tracked_01_CRV_F",
						"B_APC_Tracked_01_rcws_F",
						"B_APC_Wheeled_01_cannon_F",
						"B_G_Offroad_01_armed_F",
						"B_G_Offroad_01_AT_F",
						"B_MBT_01_arty_F",
						"B_MBT_01_cannon_F",
						"B_MBT_01_mlrs_F",
						"B_MBT_01_TUSK_F",
						"B_MRAP_01_gmg_F",
						"B_MRAP_01_hmg_F",
						"I_APC_tracked_03_cannon_F",
						"I_APC_Wheeled_03_cannon_F",
						"I_G_Offroad_01_armed_F",
						"I_G_Offroad_01_AT_F",
						"I_MBT_03_cannon_F",
						"I_MRAP_03_gmg_F",
						"I_MRAP_03_hmg_F",
						"I_Truck_02_MRL_F",
						"O_APC_Tracked_02_AA_F",
						"O_APC_Tracked_02_cannon_F",
						"O_APC_Wheeled_02_rcws_v2_F",
						"O_G_Offroad_01_armed_F",
						"O_G_Offroad_01_AT_F",
						"O_MBT_02_arty_F",
						"O_MBT_02_cannon_F",
						"O_MRAP_02_gmg_F",
						"O_MRAP_02_hmg_F"
					];