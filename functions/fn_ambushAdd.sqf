/*
Author : ElDoktor
Group : IA
Addon nécessaire : Task Force Radio.
Description : Permet de coucher les unités au sol en position d'embuscade. Se place dans un Game Logic ou dans l'init de l'unité.
arg1 : objet/Logic
Exemple : positionne un groupe en embuscade : les couche au sol et les mets en mode combat "WHITE"
Syntax : this call DOK_fnc_ambushAdd;
*/
if(!isServer)exitWith{};
_this spawn {
	params ["_obj"];
	private ["_grp","_units"];

	_units = _obj call DOK_fnc_getUnitOrLogic;

	{
		_grp = group leader _x;
		_grp setCombatMode "WHITE";
		{
			_x setUnitPos "DOWN";
		}forEach units _grp;
	} forEach _units;
};

