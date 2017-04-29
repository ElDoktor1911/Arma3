/*
Author : ElDoktor
Group : Intel
Description : Permet d'ajouter une tâche à accomplir et d'en informer l'ensemble des équipes quand celle-ci est validée. Se place dans un Game Logic ou l'init.sqf.
arg1 : Texte à afficher
arg2 : Condition de réussite (du code)
arg3 : Condition d'échec (du code) (optionnel)
arg4 : Temps de pause (en seconde) (optionnel)
Exemple : Un ennemi dont le nom est Krakos doit être tué (l'objet sur la map se nomme ENI_KRAKOS.
Syntax : ["Krakos a été éliminé !",{!alive ENI_KRAKOS}] call DOK_fnc_taskAdd;
*/
if(!isServer)exitWith{};

_this spawn {
	params ["_taskText","_success",["_fail",{false}],["_sleep",1]];

	waitUntil {sleep _sleep;(call _success || call _fail)};

	if(call _success)then{
		["TaskSucceeded",["",_taskText]] remoteExec ["BIS_fnc_showNotification",0];
	}else{
		["TaskFailed",["",_taskText]] remoteExec ["BIS_fnc_showNotification",0];
	};
};