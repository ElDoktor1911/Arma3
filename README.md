# Arma 3 - Scripts

##### DOK_fnc_addStackedEventHandler
* Groupe : Utils
* Description : Surcouche de BIS_fnc_addStackedEventHandler, vérifie au préalable qu'une même stack n'existe pas, sinon la supprime.
* Arguments : 
	* arg1 : Nom de la stack
	* arg2 : Type
	* arg3 : Code
	* arg4 : Paramètres (o)
* Exemple : ajoute une stack onEachFrame du nom de TEST qui ne fait rien.
* Syntaxes : 
	* Syntax[1] : ["TEST","onEachFrame",{},[]] call DOK_fnc_addStackedEventHandler;
##### DOK_fnc_removeStackedEventHandler
* Groupe : Utils
* Description : Surcouche de BIS_fnc_removeStackedEventHandler, vérifie au préalable qu'une même stack existe avant de la supprimer.
* Arguments : 
	* arg1 : Nom de la stack
	* arg2 : Type
* Exemple : retire une stack onEachFrame du nom de TEST si elle existe.
* Syntaxes : 
	* Syntax[1] : ["TEST","onEachFrame"] call DOK_fnc_removeStackedEventHandler;
##### DOK_fnc_otage
* Groupe : Interaction
* Description : met l'unité en mode otage et ajoute une action pour la libérer. Se place dans l'init d'un Game Logic (synchronisé à des unités) ou d'une unité.
* Arguments : 
	* arg1 : objet
* Exemple : met l'unité en mode otage.
* Syntaxes : 
	* Syntax[1] : this call DOK_fnc_otage;
##### DOK_fnc_fouille
* Groupe : Intel
* Description : Permet d'ajouter une action pour fouiller un corps à la recherche d'information et révèle des markers positionnés sur la carte. Se place dans un Game Logic ou l'init de l'objet. Si c'est un Game Logic il choisira une unité au hasard parmis les unités synchronisées à celui-ci.
* Arguments : 
	* arg1 : objet
	* arg2 : texte à afficher lors de la fouille
	* arg3 : liste des markers à révéler après la fouille.
	* arg4 : Afficher l'information à tous les joueurs. Non par défaut. (o)
* Exemple : Ajoute la fouille sur l'objet this et lorsque l'on fouille,
* Syntaxes : 
	* Syntax[1] : [this,"De nouvelles informations sur la carte ...",["Point_A","Point_B"]] call DOK_fnc_fouille;
	* Syntax[2] : [this,"Vous n'avez trouvé aucune information.",[]] call DOK_fnc_fouille;
	* Syntax[3] : [this,"Vous n'avez trouvé aucune information.",[],true] call DOK_fnc_fouille;
##### DOK_fnc_taskAdd
* Groupe : Intel
* Description : Permet d'ajouter une tâche à accomplir et d'en informer l'ensemble des équipes quand celle-ci est validée. Se place dans un Game Logic ou l'init.sqf.
* Arguments : 
	* arg1 : Texte à afficher
	* arg2 : Condition de réussite (du code)
	* arg3 : Condition d'échec (du code) (optionnel)
	* arg4 : Temps de pause (en seconde) (optionnel)
* Exemple : Un ennemi dont le nom est Krakos doit être tué (l'objet sur la map se nomme ENI_KRAKOS.
* Syntaxes : 
	* Syntax[1] : ["Krakos a été éliminé !",{!alive ENI_KRAKOS}] call DOK_fnc_taskAdd;
##### DOK_fnc_ambushAdd
* Groupe : IA
* Description : Permet de coucher les unités au sol en position d'embuscade. Se place dans un Game Logic ou dans l'init de l'unité.
* Arguments : 
	* arg1 : objet/Logic
* Exemple : positionne un groupe en embuscade
* Syntaxes : 
	* Syntax[1] : this call DOK_fnc_ambushAdd;
##### DOK_fnc_fortifiedAdd
* Groupe : IA
* Description : place les unités dans les batiments alentours. Se place dans l'init d'un Game Logic ou d'une unité.
* Arguments : 
	* arg1 : objet
	* arg2 : rayon du placement
* Exemple : place les unités du groupe de l'objet this dans les batiments dans un rayon de 300 m.
* Syntaxes : 
	* Syntax[1] : [this,300] call DOK_fnc_fortifiedAdd;
##### DOK_fnc_patrolAdd
* Groupe : IA
* Description : déplace des unités en patrouille. Se place dans l'init d'un Game Logic ou d'une unité.
* Arguments : 
	* arg1 : objet
	* arg2 : rayon d'action pour l'infanterie
	* arg3 : rayon d'action pour les véhicules
* Exemple : fait patrouiller les infanteries dans un rayon de 300 m et les véhicules dans un rayon de 2000 m.
* Syntaxes : 
	* Syntax[1] : [this,300,2000] call DOK_fnc_patroldAdd;
##### DOK_fnc_gaiaAgressive
* Groupe : GAIA
* Description : ajoute l'unité en mode agressive. Se place dans l'init d'un Game Logic ou d'objet.
* Arguments : 
	* arg1 : objet
	* arg2 : nombre de respawn (o)
* Exemple : null
* Syntaxes : 
	* Syntax[1] : [this,NB_RESPAWN] call DOK_fnc_gaiaAgressive;
	* Syntax[2] : [this] call DOK_fnc_gaiaAgressive;
	* Syntax[3] : [this,5] call DOK_fnc_gaiaAgressive;
##### DOK_fnc_gaiaDefense
* Groupe : GAIA
* Description : ajoute l'unité en mode defense. Se place dans l'init d'un Game Logic ou d'objet.
* Arguments : 
	* arg1 : objet
	* arg2 : nombre de respawn (o)
* Exemple : null
* Syntaxes : 
	* Syntax[1] : [this,NB_RESPAWN] call DOK_fnc_gaiaDefense;
	* Syntax[2] : [this] call DOK_fnc_gaiaDefense;
	* Syntax[3] : [this,5] call DOK_fnc_gaiaDefense;
##### DOK_fnc_gaiaFortify
* Groupe : GAIA
* Description : ajoute l'unité en mode fortification. Se place dans l'init d'un Game Logic ou d'objet.
* Arguments : 
	* arg1 : objet
	* arg2 : nombre de respawn (o)
* Exemple : null
* Syntaxes : 
	* Syntax[1] : [this,NB_RESPAWN] call DOK_fnc_gaiaFortify;
	* Syntax[2] : [this] call DOK_fnc_gaiaFortify;
	* Syntax[3] : [this,5] call DOK_fnc_gaiaFortify;
##### DOK_fnc_addEmetteur
* Groupe : Emetteur
* Description : ajoute un émetteur sur objet afin de le détecter par triangularisation. Se place dans l'init de l'objet.
* Arguments : 
	* arg1 : objet
	* arg2 : fréquence
	* arg3 : portée
* Exemple : ajoute un emetteur sur l'objet ""this"" pour la fréquence 30.1 MHz et une portée de 2 Km
* Syntaxes : 
	* Syntax[1] : [this,30.1,2000] call DOK_fnc_addEmetteur;
##### DOK_fnc_checkRadio
* Groupe : Emetteur
* Description : Balaye la fréquence de la radio longue portée pour afficher l'info si les conditions sont remplies. Se place dans l'init.sqf.
* Arguments : 
* Exemple : ajout de la fonction dans l'init du joueur en cours
* Syntaxes : 
	* Syntax[1] : 0 spawn DOK_fnc_checkRadio
##### DOK_fnc_civilianPop
* Groupe : Civils
* Description : Pop des civils sur les markers commençant par ""civil_"". Se place dans l'init.sqf.
* Arguments : 
* Exemple : null
* Syntaxes : 
	* Syntax[1] : call DOK_fnc_civilianPop;
##### DOK_fnc_artyAdd
* Groupe : Artillerie
* Description : ajoute l'unité en tant qu'artillerie au mécanisme d'artillerie. Se place dans l'init de l'objet.
* Arguments : 
	* arg1 : objet
* Exemple : ajoute l'unité ""this""
* Syntaxes : 
	* Syntax[1] : this call DOK_fnc_artyAdd;
##### DOK_fnc_artyCall
* Groupe : Artillerie
* Description : appel l'action pour la déclencher les feux de l'artillerie sur les positions notées sur carte et commençant par ""T_""
* Arguments : 
* Exemple : peut se positionner dans une addAction ou une boucle et va déclencher le feu sur le marker avec le texte ""T_TARGET_BLABLABLA""
* Syntaxes : 
	* Syntax[1] : call DOK_fnc_artyCall;
