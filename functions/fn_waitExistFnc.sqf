
//Exemple : ["DOK_fnc_test",["p1","p2"]] call DOK_fnc_waitExistFnc
_this spawn {
	params ["_fncName","_params"];
	private ["_fncCode"];

	waitUntil {sleep 1;!isNil _fncName};
	_fncCode = compile _fncName;
	_params spawn _fncCode;
};
