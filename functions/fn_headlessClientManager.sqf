/*
Author : ElDoktor
Group : Utils
Description : recherche le headless client s'il y en a un et lui attribut les groupes de combat. Se positionne dans un Game Logic ou l'init.sqf
Exemple : L'initialisation se fait de la façon suivante
Syntax : 0 spawn DOK_fnc_headlessClientManager
*/
params [["_idHC",0]];

if!(hasInterface || isServer)then{
	clientOwner remoteExec ["DOK_fnc_headlessClientManager",2];
};

if(_idHC == 0)exitWith{};
if(!isServer)exitWith{};

private ["_hasTrigger"];
{
	if(side _x == east){
		_hasTrigger = false;
		{
			if(count (synchronizedWaypoints _x) > 0)then{
				_hasTrigger = true;
			};
		}forEach (waypoints _x);

		if(!_hasTrigger)then{
			_x setGroupOwner _idHC;
		};
	};
}forEach allGroups;
