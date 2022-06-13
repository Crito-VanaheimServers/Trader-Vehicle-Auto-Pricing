vehBasePrice = 1000;		//set initial price for all land vehicles
heliBasePrice = 10000;		//set initial price for all helicopters
planeBasePrice= 25000;		//set initial price for all planes/jets
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


armorPrice = 30;			//price per each armor rating
loadPrice = 10;				//price per each inventory space
speedPrice = 20;			//price per each speed rating
fuelPrice = 15;				//price per each fuel capacity

roundPricing = true;		//Set True to Round Number to nearest 10s or you want it to round farther set to true and set
							//roundToNearest to desired value.

roundToNearest = 100;		//Round the price to nearest 100s, or 1,000s

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

useManualMode = true;		//Set to true to place out vehicles into the editor for pricing.

getPricingFormat = false;	//Set getPricingFormat and getR3FCanTransport both to false to get list of class names in format for Catagories List.
							//If set to true and getR3FCanTransport is set to true you will not get R3FLogistics Can Transport List this needs
							//to be set to false and getR3FCanTransport set to true for R3FLogistics Can Transport List.
							//values that print out for R3FLogistics are the inventory capacity of the vehicle so change how you like this
							//was just added to give you correct formating to work with.
							
getR3FLogFormat = false; 	//Set to true to get Formatting of the vehicles for R3FLogistics. 
							//This is just the format, you will need to manually set the values you want
							//values that print out for R3FLogistics are the inventory capacity of the vehicle

				//If useManualMode is set to false you must put a list of vehicle class names between these brackets.
userVehicleArray = 	[
"B_CTRG_Heli_Transport_01_sand_F",
"B_CTRG_Heli_Transport_01_tropic_F",
"B_Heli_Attack_01_dynamicLoadout_F",
"B_Heli_Light_01_dynamicLoadout_F",
"B_Heli_Light_01_F",
"B_Heli_Transport_01_F",
"B_Heli_Transport_03_F",
"B_Heli_Transport_03_unarmed_F",
"C_Heli_Light_01_civil_F",
"C_IDAP_Heli_Transport_02_F",
"Exile_Chopper_Hellcat_FIA",
"Exile_Chopper_Hellcat_Green",
"Exile_Chopper_Huey_Armed_Desert",
"Exile_Chopper_Huey_Armed_Green",
"Exile_Chopper_Huey_Desert",
"Exile_Chopper_Huey_Green",
"Exile_Chopper_Hummingbird_Civillian_Blue",
"Exile_Chopper_Hummingbird_Civillian_BlueLine",
"Exile_Chopper_Hummingbird_Civillian_Digital",
"Exile_Chopper_Hummingbird_Civillian_Elliptical",
"Exile_Chopper_Hummingbird_Civillian_Furious",
"Exile_Chopper_Hummingbird_Civillian_GrayWatcher",
"Exile_Chopper_Hummingbird_Civillian_ION",
"Exile_Chopper_Hummingbird_Civillian_Jeans",
"Exile_Chopper_Hummingbird_Civillian_Light",
"Exile_Chopper_Hummingbird_Civillian_Red",
"Exile_Chopper_Hummingbird_Civillian_Shadow",
"Exile_Chopper_Hummingbird_Civillian_Sheriff",
"Exile_Chopper_Hummingbird_Civillian_Speedy",
"Exile_Chopper_Hummingbird_Civillian_Sunset",
"Exile_Chopper_Hummingbird_Civillian_Vrana",
"Exile_Chopper_Hummingbird_Civillian_Wasp",
"Exile_Chopper_Hummingbird_Civillian_Wave",
"Exile_Chopper_Hummingbird_Green",
"Exile_Chopper_Huron_Green",
"Exile_Chopper_Mohawk_FIA",
"Exile_Chopper_Orca_Black",
"Exile_Chopper_Orca_BlackCustom",
"Exile_Chopper_Orca_CSAT",
"Exile_Chopper_Taru_Black",
"Exile_Chopper_Taru_Covered_Black",
"Exile_Chopper_Taru_Covered_CSAT",
"Exile_Chopper_Taru_CSAT",
"Exile_Chopper_Taru_Transport_Black",
"Exile_Chopper_Taru_Transport_CSAT",
"ffaa_famet_ch47_mg",
"ffaa_famet_cougar",
"ffaa_famet_cougar_armed",
"ffaa_famet_ec135",
"ffaa_famet_tigre",
"ffaa_nh90_nfh_transport",
"ffaa_nh90_tth_armed",
"ffaa_nh90_tth_transport",
"I_C_Heli_Light_01_civil_F",
"I_E_Heli_light_03_dynamicLoadout_F",
"I_E_Heli_light_03_unarmed_F",
"I_Heli_light_03_dynamicLoadout_F",
"I_Heli_light_03_unarmed_F",
"I_Heli_Transport_02_F",
"O_Heli_Attack_02_dynamicLoadout_F",
"O_Heli_Light_02_dynamicLoadout_F",
"O_Heli_Light_02_unarmed_F",
"O_Heli_Transport_04_ammo_F",
"O_Heli_Transport_04_bench_F",
"O_Heli_Transport_04_box_F",
"O_Heli_Transport_04_covered_F",
"O_Heli_Transport_04_F",
"O_Heli_Transport_04_fuel_F",
"O_Heli_Transport_04_medevac_F",
"O_Heli_Transport_04_repair_F",
"RHS_AH1Z",
"RHS_AH1Z_wd",
"RHS_AH64D",
"RHS_AH64D_wd",
"RHS_AH64DGrey",
"RHS_CH_47F",
"RHS_CH_47F_10",
"RHS_CH_47F_light",
"RHS_Ka52_vvs",
"RHS_Ka52_vvsc",
"rhs_ka60_c",
"rhs_ka60_grey",
"RHS_MELB_AH6M",
"RHS_MELB_H6M",
"RHS_MELB_MH6M",
"RHS_Mi24P_vdv",
"RHS_Mi24P_vvs",
"RHS_Mi24P_vvsc",
"RHS_Mi24V_vdv",
"RHS_Mi24V_vvs",
"RHS_Mi24V_vvsc",
"RHS_Mi24Vt_vvs",
"RHS_Mi24Vt_vvsc",
"rhs_mi28n_vvs",
"rhs_mi28n_vvsc",
"RHS_Mi8amt_civilian",
"RHS_Mi8AMT_vdv",
"RHS_Mi8AMT_vvs",
"RHS_Mi8AMT_vvsc",
"RHS_Mi8AMTSh_vvs",
"RHS_Mi8AMTSh_vvsc",
"RHS_Mi8mt_Cargo_vdv",
"RHS_Mi8mt_Cargo_vv",
"RHS_Mi8mt_Cargo_vvs",
"RHS_Mi8mt_Cargo_vvsc",
"RHS_Mi8mt_vdv",
"RHS_Mi8mt_vv",
"RHS_Mi8mt_vvs",
"RHS_Mi8mt_vvsc",
"RHS_Mi8mtv3_Cargo_vdv",
"RHS_Mi8mtv3_Cargo_vvs",
"RHS_Mi8mtv3_Cargo_vvsc",
"RHS_Mi8MTV3_heavy_vdv",
"RHS_Mi8MTV3_heavy_vvs",
"RHS_Mi8MTV3_heavy_vvsc",
"RHS_Mi8MTV3_vdv",
"RHS_Mi8MTV3_vvs",
"RHS_Mi8MTV3_vvsc",
"RHS_Mi8t_civilian",
"RHS_Mi8T_vdv",
"RHS_Mi8t_vv",
"RHS_Mi8T_vvs",
"RHS_Mi8T_vvsc",
"rhs_uh1h_hidf",
"rhs_uh1h_hidf_gunship",
"rhs_uh1h_hidf_unarmed",
"rhs_uh1h_idap",
"RHS_UH1Y",
"RHS_UH1Y_d",
"RHS_UH1Y_FFAR",
"RHS_UH1Y_FFAR_d",
"RHS_UH1Y_UNARMED",
"RHS_UH1Y_UNARMED_d",
"RHS_UH60M",
"RHS_UH60M2",
"RHS_UH60M2_d",
"RHS_UH60M_d",
"RHS_UH60M_ESSS",
"RHS_UH60M_ESSS2",
"RHS_UH60M_ESSS2_d",
"RHS_UH60M_ESSS_d",
"RHS_UH60M_MEV",
"RHS_UH60M_MEV2",
"RHS_UH60M_MEV2_d",
"RHS_UH60M_MEV_d",
"rhsgref_b_mi24g_CAS",
"rhsgref_cdf_b_Mi24D",
"rhsgref_cdf_b_Mi24D_Early",
"rhsgref_cdf_b_Mi35",
"rhsgref_cdf_b_reg_Mi17Sh",
"rhsgref_cdf_b_reg_Mi8amt",
"rhsgref_cdf_Mi24D",
"rhsgref_cdf_Mi24D_early",
"rhsgref_cdf_Mi35",
"rhsgref_cdf_reg_Mi17Sh",
"rhsgref_cdf_reg_Mi8amt",
"rhsgref_ins_g_Mi8amt",
"rhsgref_ins_Mi8amt",
"rhsgref_mi24g_CAS",
"rhsgref_un_Mi24V",
"rhsgref_un_Mi8amt",
"rhssaf_airforce_ht40",
"rhssaf_airforce_ht48",
"rhssaf_airforce_o_ht40",
"rhssaf_airforce_o_ht48",
"rhsusf_CH53E_USMC",
"rhsusf_CH53E_USMC_D",
"rhsusf_CH53E_USMC_GAU21_D",
"RwG_Mozzie_Carl_Black",
"RwG_Mozzie_Carl_Blue",
"RwG_Mozzie_Carl_Exile",
"RwG_Mozzie_Carl_Gold",
"RwG_Mozzie_Carl_Green",
"RwG_Mozzie_Carl_Orange",
"RwG_Mozzie_Carl_Pink",
"RwG_Mozzie_Carl_Red",
"RwG_Mozzie_Carl_White",
"RwG_Mozzie_Carl_Yellow",
"UH1H_Clo",
"UH1H_Closed_TK",
"UH1H_M240",
"UH1H_M240_TK"];