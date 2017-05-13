/*
Author : ElDoktor
Group : Utils
Description : affiche la répartition du contrôle des unités entre le serveur le HC et le local
Exemple : L'activation et la désactivation (même commande)
Syntax : call DOK_fnc_headlessClientDisplay //Affichage toutes les 10 secondes (par défaut)
Syntax : 1 call DOK_fnc_headlessClientDisplay //Affichage toutes les 1 seconde
*/
if!(hasInterface || isServer)then{
	DOK_HC_var_hc = 0;
	{
		if(local _x)then{
			DOK_HC_var_hc = DOK_HC_var_hc + count (units _x);
		};
	}forEach allGroups;
	publicVariable "DOK_HC_var_hc";
};

if(isServer)then{
	DOK_HC_var_server = 0;
	{
		if(local _x)then{
			DOK_HC_var_server = DOK_HC_var_server + count (units _x);
		};
	}forEach allGroups;
	publicVariable "DOK_HC_var_server";
};


_this spawn {
	params [["_sleep",10]];

	if(isNil "DOK_HC_var_start")then{
		DOK_HC_var_start = false;
		DOK_HC_var_hc = 0;
		DOK_HC_var_server = 0;
	};

	DOK_HC_var_start = !DOK_HC_var_start;

	hintSilent "";

	while{DOK_HC_var_start} do {
		DOK_HC_var_local = 0;

		remoteExec ["DOK_fnc_headlessClientDisplay",2];

		if(!isNil "DOK_var_HEADLESSCLIENTMANAGERID")then{
			remoteExec ["DOK_fnc_headlessClientDisplay",DOK_var_HEADLESSCLIENTMANAGERID];
		};

		DOK_HC_var_server = 0;
		{
			if(local _x)then{
				DOK_HC_var_local = DOK_HC_var_local + count (units _x);
			};
		}forEach allGroups;

		sleep 2;

		hintSilent parseText format ["Nb unités sur Serveur : %1<br/>Nb unités sur HC : %2<br/>Nb unités locales : %3",DOK_HC_var_server,DOK_HC_var_hc,DOK_HC_var_local];

		sleep _sleep;
	};
};