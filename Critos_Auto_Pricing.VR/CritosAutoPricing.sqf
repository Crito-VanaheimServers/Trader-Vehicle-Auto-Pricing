
#include "config.sqf";
_armorPrice = armorPrice;
_loadPrice = loadPrice;
_speedPrice = speedPrice;
_fuelPrice = fuelPrice;
                          
_tier1ArmorMin = tier1ArmorMin; 
_tier1ArmorMax = tier1ArmorMax; 
_tier2ArmorMin = tier2ArmorMin; 
_tier2ArmorMax = tier2ArmorMax;
_tier3ArmorMin = tier3ArmorMin;
_tier3ArmorMax = tier3ArmorMax;
_tier4ArmorMin = tier4ArmorMin;
_tier4ArmorMax = tier4ArmorMax;
_tier5ArmorMin = tier5ArmorMin;
_tier5ArmorMax = tier5ArmorMax;
_tier6ArmorMin = tier6ArmorMin;
_tier6ArmorMax = tier6ArmorMax;

_mapCenter = [worldSize / 2, worldsize / 2, 0];
_vehicle = vehicle player;
_vehicles  = objNull;

if (useManualMode == true) then
	{
			_vehicles = _mapCenter nearEntities ["AllVehicles", 80000];
			_elementsDelete = [_vehicle];
			_vehicles = _vehicles - _elementsDelete;
	}
	else
	{
		_vehicles = [];
		{
		_vehSpawn = [position player, 100, 1000, 1] call BIS_fnc_findSafePos;
		_vehObject = createVehicle [_x, _vehSpawn];
		_vehicles pushback _vehObject;
		}forEach userVehicleArray;
	};

 _br = toString [13,10];

_ArmedVehicleClasses = [];
_UnarmedVehicleClasses = [];
_vehicleClassNames = [];
_ArmedPriceArray = [];
_UnarmedPriceArray = [];
_characterNumbersArray = [];
_R3FArmedArray = [];
_R3FUnarmedArray = [];
_ArmedPriceArrayFormat = "";
_UnarmedPriceArrayFormat = "";
_ArmedListFormat = "";
_UnarmedListFormat = "",
_R3FUnarmedListFormat = "";
_R3FArmedListFormat = "";

_deleteTurrArry = [
					["Laserdesignator_vehicle","SmokeLauncher"],
					["TruckHorn","SmokeLauncher"],
					["SmokeLauncher"],
					["TruckHorn"],
					["Laserdesignator_vehicle"],
					"SmokeLauncher",
					"TruckHorn",
					"Laserdesignator_vehicle"
				  ];
{
	_ammoArray = [];
	_turretPathArray = [];
	_className = typeOf _x;

	_mags = [["",[],0,0,0]];
	
	_magsTurretArray = magazinesAllTurrets _x;
	if (count _magsTurretArray > 0) then
	{
		_mags = magazinesAllTurrets _x;
	};

	{
		_ammoClass = _x select 0;
		_ammoItemInfo = _ammoClass call BIS_fnc_itemType; 
		_ammoItemType = _ammoItemInfo select 1; 
		_ammoCount = _x select 2;
		_ammoArray pushBack [_ammoCount,_ammoItemType];
		_turretPath = _x select 1;
		_turretPathArray pushBack _turretPath;
	}forEach _mags;
	
	_turretPathArray = _turretPathArray arrayIntersect _turretPathArray;
		
	_turretweapArray = [];
	_vehObj = _x;
	{
		if (count _turretPathArray > 0) then
		{
			_turretArray = _vehObj weaponsTurret _x;
			if (_turretArray in _deleteTurrArry)then
			{
				_turretArray = [];
				_turretweapArray pushback _turretArray;
			}
			else
			{
				_turretweapArray pushback _turretArray;
			};
		}
		else
		{
			_turretArray = [];
			_turretweapArray pushback _turretArray;
		};
	}forEach _turretPathArray;
	
	_vehInfo = [_className,_ammoArray,_turretweapArray];
	_vehicleClassNames pushBack _vehInfo;
}ForEach _vehicles;

_vehicleClassNames = _vehicleClassNames arrayIntersect _vehicleClassNames;

	{
	_strClass = _x select 0;
	_characterNumbers = count str _strClass;
	_characterNumbersArray pushBack _characterNumbers;
	}forEach _vehicleClassNames;
	
	_maxCharacters = selectMax _characterNumbersArray;
	
{
	_vehicleClassNameIndex = _x select 0;
	_baseQuality = 0;
	_vehBasePrice = 0;
	_bulletPrice = 0;
	_shellPrice = 0;
	_rocketPrice = 0;
	_missilePrice = 0;

		if (_vehicleClassNameIndex isKindOf "LandVehicle") then
		{
			_baseQuality = vehStartQuality;
			_vehBasePrice = vehBasePrice;
			_bulletPrice = vehBulletPrice;
			_shellPrice = vehShellPrice;
			_rocketPrice = vehRocketPrice;
			_missilePrice = vehMissilePrice;
		};
		
	if (_vehicleClassNameIndex isKindOf "Helicopter") then
	{
		_baseQuality = heliStartQuality;
		_vehBasePrice = heliBasePrice;
		_bulletPrice = heliBulletPrice;
		_shellPrice = heliShellPrice;
		_rocketPrice = heliRocketPrice;
		_missilePrice = heliMissilePrice;
	};

	if (_vehicleClassNameIndex isKindOf "Plane") then
	{
		_baseQuality = planeStartQuality;
		_vehBasePrice = planeBasePrice;
		_bulletPrice = planeBulletPrice;
		_shellPrice = planeShellPrice;
		_rocketPrice = planeRocketPrice;
		_missilePrice = planeMissilePrice;
	};
	
	if (_vehicleClassNameIndex isKindOf "Ship") then
	{
		_baseQuality = boatStartQuality;
		_vehBasePrice = boatBasePrice;
		_bulletPrice = boatBulletPrice;
		_shellPrice = boatShellPrice;
		_rocketPrice = boatRocketPrice;
		_missilePrice = boatMissilePrice;
	};

	_bulletCountArray = [];
	_shellCountArray = [];
	_rocketCountArray = [];
	_missileCountArray = [];
	_projectileTypes = [];

	_armorRating = (getNumber (configFile >> "CfgVehicles" >> _vehicleClassNameIndex >> "armor"));
	_Armortotal = 0;
	_Armortotal = _Armortotal + _armorRating * _armorPrice;

	_loadRating = (getNumber (configFile >> "CfgVehicles" >> _vehicleClassNameIndex >> "maximumLoad"));   
	_Loadtotal = 0;
	_Loadtotal = _Loadtotal + _loadRating * _loadPrice;

	_speedRating = (getNumber (configFile >> "CfgVehicles" >> _vehicleClassNameIndex >> "maxSpeed"));  
	_Speedtotal = 0;
	_Speedtotal = _Speedtotal + _speedRating * _speedPrice;

	_fuelRating = getNumber (configfile >> "CfgVehicles" >> _vehicleClassNameIndex >> "fuelCapacity"); 	   
	_Fueltotal = 0;
	_Fueltotal = _Fueltotal + _fuelRating * _fuelPrice;
	
	_turretPathArrayIndex = _x select 2;
	_ammoCountArrayIndex = _x select 1;

	{
		_projectile = _x select 1;
		_projectileTypes pushBack _projectile;
	}forEach _ammoCountArrayIndex;

	_addedProjectilePoint = false;
	_armorQuality = 0;
	if ((_armorRating >= _tier1ArmorMin) && (_armorRating <= _tier1ArmorMax)) then
	{
		_armorQuality = _baseQuality + 0;
	};
	if ((_armorRating >= _tier2ArmorMin) && (_armorRating <= _tier2ArmorMax)) then
	{
		_armorQuality = _baseQuality + 1;
	};
	if ((_armorRating >= _tier3ArmorMin) && (_armorRating <= _tier3ArmorMax)) then
	{
		_armorQuality = _baseQuality + 2;
	};
	if ((_armorRating >= _tier4ArmorMin) && (_armorRating <= _tier4ArmorMax)) then
	{
		_armorQuality = _baseQuality + 3;
	};
	if ((_armorRating >= _tier5ArmorMin) && (_armorRating <= _tier5ArmorMax)) then
	{
		_armorQuality = _baseQuality + 4;
	};
	if ((_armorRating >= _tier6ArmorMin) && (_armorRating <= _tier6ArmorMax)) then
	{
		_armorQuality = _baseQuality + 5;
	};
	
	_adjBaseQuality = _armorQuality;
	_projectileTypequality = 0;
	if ("Bullet" in _projectileTypes) then
	{
		_projectileTypequality = _adjBaseQuality + 1;
		_addedProjectilePoint = true;
	};
	if (("Shell" in _projectileTypes) || ("Artillery" in _projectileTypes)) then
	{
		_projectileTypequality = _adjBaseQuality + 2;
		_addedProjectilePoint = true;
	};
	if ("Rocket" in _projectileTypes) then
	{
		_projectileTypequality = _adjBaseQuality + 3;
		_addedProjectilePoint = true;
	};
	if (("Missile" in _projectileTypes) || ("MissileLauncher" in _projectileTypes)) then
	{
		_projectileTypequality = _adjBaseQuality + 4;
		_addedProjectilePoint = true;
	};
	if ((count _projectileTypes >= 0) && (_addedProjectilePoint == false)) then
	{
		_projectileTypequality = _adjBaseQuality
	};
	
	_adjProjectileQuality = _projectileTypequality;
	_numWeaponsQuality = 0;
if (_addedProjectilePoint == true) then
	{
		if (count _turretPathArrayIndex == 1) then
			{
				_numWeaponsQuality = _adjProjectileQuality + 1;
			};
		if (count _turretPathArrayIndex == 2) then
			{
				_numWeaponsQuality = _adjProjectileQuality + 2;
			};
		if (count _turretPathArrayIndex == 3) then
			{
				_numWeaponsQuality = _adjProjectileQuality + 3;
			};
		if (count _turretPathArrayIndex == 4) then
			{
				_numWeaponsQuality = _adjProjectileQuality + 4;
			};
		if (count _turretPathArrayIndex == 5) then
			{
				_numWeaponsQuality = _adjProjectileQuality + 5;
			};
		if (count _turretPathArrayIndex == 6) then
			{
				_numWeaponsQuality = _adjProjectileQuality + 6;
			};
	}
	else
	{
		_numWeaponsQuality = _adjProjectileQuality;
	};
	
		_quality = _numWeaponsQuality;
	
	if (_quality > 6) then
	{
		_quality = 6;
	};
		
	{
		if (_x select 1 == "Bullet") then
			{
				_bulletCountIndex = _x select 0;
				_bulletCountArray pushback _bulletCountIndex;
			};
	}forEach _ammoCountArrayIndex;
	
	{
		if ((_x select 1 == "Shell") || (_x select 1 == "Artillery")) then
			{
				_shellCountIndex = _x select 0;
				_shellCountArray pushback _shellCountIndex;
			};
	}forEach _ammoCountArrayIndex;
	
	{
		if (_x select 1 == "Rocket") then
			{
				_rocketCountIndex = _x select 0;
				_rocketCountArray pushback _rocketCountIndex;
			};
	}forEach _ammoCountArrayIndex;
		
	{
		if ((_x select 1 == "Missile") || (_x select 1 == "MissileLauncher")) then
			{
				_missileCountIndex = _x select 0;
				_missileCountArray pushback _missileCountIndex;
			};
	}forEach _ammoCountArrayIndex;

	_bullettotal = 0;
	if ("Bullet" in _projectileTypes) then
	{
		{_bullettotal = _bullettotal + _x * _bulletPrice} forEach _bulletCountArray;
	};

	_shelltotal = 0;
	if (("Shell" in _projectileTypes) || ("Artillery" in _projectileTypes)) then
	{
		{_shelltotal = _shelltotal + _x * _shellPrice} forEach _shellCountArray;
	};
	
	_rockettotal = 0;
	if ("Rocket" in _projectileTypes) then
	{
		{_rockettotal = _rockettotal + _x * _rocketPrice} forEach _rocketCountArray;
	};
	
	_missiletotal = 0;
	if (("Missile" in _projectileTypes) || ("MissileLauncher" in _projectileTypes)) then
	{
		{_missiletotal = _missiletotal + _x * _missilePrice} forEach _missileCountArray;
	};
	
	_totalVehiclePrice = _vehBasePrice+_bullettotal+_shelltotal+_rockettotal+_missiletotal+_Armortotal+_Loadtotal+_Speedtotal+_Fueltotal;
	
	_roundedVehiclePrice = round _totalVehiclePrice;
	
	_vehicleClassName = _x select 0;
	
		_vehClassNameCharacters = count _vehicleClassName;
		_addedSpaces = " ";				
		_Spacing = "";
		_spacingAmount = _maxCharacters - _vehClassNameCharacters + 20;
		_spaceCounter = 0;
		
			for "_i" from 0 to _spacingAmount do
			{
				_spaceCounter = _spaceCounter + 1;
				_Spacing = _Spacing + _addedSpaces;
			};	
			
		_vehicleClassName =  _vehicleClassName splitstring "";
		_Spacing = _Spacing splitstring "";	
		_vehicleClassName = _vehicleClassName + _Spacing;
		_vehicleClassName = _vehicleClassName joinstring "";										

	if (_addedProjectilePoint == true) then
	{
		_basePriceInfo = format ['class %1{quality = %2; price = %3;};',_vehicleClassName,_quality,_roundedVehiclePrice];
		_classListformat = format ['"%1",', _vehicleClassNameIndex];
		_R3FTransportFormat = format ['["%1", %2],',_vehicleClassNameIndex,_loadRating];
		_ArmedPriceArray pushback _basePriceInfo;
		_ArmedVehicleClasses pushBack _classListformat;
		_R3FArmedArray pushBack _R3FTransportFormat;
	}
	else
	{
		_basePriceInfo = format ['class %1{quality = %2; price = %3;};',_vehicleClassName,_quality,_roundedVehiclePrice];
		_classListformat = format ['"%1",', _vehicleClassNameIndex];
		_R3FTransportFormat = format ['["%1", %2],',_vehicleClassNameIndex,_loadRating];
		_UnarmedPriceArray pushback _basePriceInfo;
		_UnarmedVehicleClasses pushBack _classListformat;
		_R3FUnarmedArray pushBack _R3FTransportFormat;
	};
	systemChat str _vehicleClassNameIndex;
	sleep .05;
}ForEach _vehicleClassNames;

	_ArmedPriceArray sort true;
	_UnarmedPriceArray sort true;
	_ArmedVehicleClasses sort true;
	_UnarmedVehicleClasses sort true;
	_R3FArmedArray sort true;
	_R3FUnarmedArray sort true;

	{
		_UnarmedPriceArrayFormat = _UnarmedPriceArrayFormat + format['%1%2',_x, endl];
	}forEach _UnarmedPriceArray;
	
	{
		_ArmedPriceArrayFormat = _ArmedPriceArrayFormat + format['%1%2',_x, endl];
	}forEach _ArmedPriceArray;
	
	{
		_UnarmedListFormat = _UnarmedListFormat + format['%1%2',_x, endl];
	}forEach _UnarmedVehicleClasses;
	
	{
		_ArmedListFormat = _ArmedListFormat + format['%1%2',_x, endl];
	}forEach _ArmedVehicleClasses;
	
	{
		_R3FUnarmedListFormat = _R3FUnarmedListFormat + format['%1%2',_x, endl];
	}forEach _R3FUnarmedArray;
	
	{
		_R3FArmedListFormat = _R3FArmedListFormat + format['%1%2',_x, endl];
	}forEach _R3FArmedArray;

	_finalPriceInfo = composeText ["//UNARMED PRICING:",_br,_UnarmedPriceArrayFormat,_br,_br,"//ARMED PRICING:",_br,_ArmedPriceArrayFormat,_br,_br,"//UNARMED CLASS NAMES:",_br,_UnarmedListFormat,_br,_br,"//ARMED CLASS NAMES:",_br,_ArmedListFormat,_br,_br,"//UNARMED R3F LOGISTICS CAN TRANSPORT CARGO:",_br,_R3FUnarmedListFormat,_br,_br,"//ARMED R3F LOGISTICS CAN TRANSPORT CARGO:",_br,_R3FArmedListFormat];
	copyToClipboard str _finalPriceInfo;

systemChat str "AUTO PRICING POVIDED BY CRITO";
systemChat str "COMPLETE AND COPIED TO CLIPBOARD READY TO PASTE";
