# Trader-Vehicle-Auto-Pricing
This is a tool to help price vehicles for trader files
It will auto price, auto generat quality values, sort them in catagories of unarmed and armed for vehicles placed into editor or placed into the array found inside the
config.sqf. Results are not limited to just pricing, the results given are pricing formating for trader files along with class names list for trader files.
If you use R3FLogistics it will also provide formatting for can transport by using the vehicles actual capacity of its inventory as the results.

Example of results you get from running this tool on vehicles looks like the following:

//UNARMED PRICING:
class B_G_Offroad_01_F                                {quality = 1; price = 31440;};
class B_G_Quadbike_01_F                               {quality = 1; price = 9950;};
class B_MRAP_01_F                                     {quality = 3; price = 31690;};
class I_Truck_02_box_F                                {quality = 2; price = 37020;};
class O_Truck_02_medical_F                            {quality = 2; price = 37020;};

//ARMED PRICING:
class B_APC_Wheeled_01_cannon_F                       {quality = 6; price = 96360;};
class B_G_Offroad_01_armed_F                          {quality = 3; price = 41520;};
class B_G_Offroad_01_AT_F                             {quality = 5; price = 71520;};
class I_MRAP_03_gmg_F                                 {quality = 6; price = 80690;};
class O_MRAP_02_hmg_F                                 {quality = 6; price = 42090;};

//UNARMED CLASS NAMES:
"B_G_Offroad_01_F",
"B_G_Quadbike_01_F",
"B_MRAP_01_F",
"I_Truck_02_box_F",
"O_Truck_02_medical_F",

//ARMED CLASS NAMES:
"B_APC_Wheeled_01_cannon_F",
"B_G_Offroad_01_armed_F",
"B_G_Offroad_01_AT_F",
"I_MRAP_03_gmg_F",
"O_MRAP_02_hmg_F",

//UNARMED R3F LOGISTICS CAN TRANSPORT CARGO:
["B_G_Offroad_01_F", 2500],
["B_G_Quadbike_01_F", 600],
["B_MRAP_01_F", 2000],
["I_Truck_02_box_F", 3000],
["O_Truck_02_medical_F", 3000],

//ARMED R3F LOGISTICS CAN TRANSPORT CARGO:
["B_APC_Wheeled_01_cannon_F", 3000],
["B_G_Offroad_01_armed_F", 2500],
["B_G_Offroad_01_AT_F", 2500],
["I_MRAP_03_gmg_F", 4000],
["O_MRAP_02_hmg_F", 2000],

