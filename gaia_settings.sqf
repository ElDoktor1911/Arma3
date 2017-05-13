// Chang the following numbers to your liking
if (isServer) then {
	// From what range away from closest player should units be cached (in meters or what every metric system arma uses)?
	// To test this set it to 20 meters. Then make sure you get that close and move away.
	// You will notice 2 levels of caching 1 all but leader, 2 completely away
	// Stage 2 is 2 x GAIA_CACHE_STAGE_1. So default 2000, namely 2 x 1000
	GAIA_CACHE_STAGE_1				= 1000;

	// The follow 3 influence how close troops should be to known conflict to be used. (so they wont travel all the map to support)
	// How far should footmobiles be called in to support attacks.
	// This is also the range that is used by the transport system. If futher then the below setting from a zone, they can get transport.
	MCC_GAIA_MAX_SLOW_SPEED_RANGE	= 3000;

	// How far should vehicles be called in to support attacks. (including boats)
	MCC_GAIA_MAX_MEDIUM_SPEED_RANGE	= 4500;

	// How far should air units be called in to support attacks.
	MCC_GAIA_MAX_FAST_SPEED_RANGE	= 80000;

	// How logn should mortars and artillery wait (in seconds) between fire support missions.
	MCC_GAIA_MORTAR_TIMEOUT			= 300;

	// DANGEROUS SETTING!!!
	// If set to TRUE gaia will even send units that she does NOT control into attacks. Be aware ONLy for attacks.
	// They will not suddenly patrol if set to true.
	MCC_GAIA_ATTACKS_FOR_NONGAIA	= false;

	// If set to false, ai will not use smoke and flares (during night)
	MCC_GAIA_AMBIANT				= true;

	// Influence how high the chance is (when applicaple) that units do smokes and flare (so not robotic style)
	// Default is 20 that is a chance of 1 out of 20 when they are applicable to use smokes and flares
	MCC_GAIA_AMBIANT_CHANCE			= 20;

	// The seconds of rest a transporter takes after STARTING his last order
	MCC_GAIA_TRANSPORT_RESTTIME		= 40;

	DOK_GAIA_var_ZONES_INIT = true;
	format ["DOK::GAIA : zones found : %1",DOK_GAIA_var_ZONES] call DOK_fnc_LOG;
	format ["DOK::GAIA : init zones (%1) [OK]",count DOK_GAIA_var_ZONES] call DOK_fnc_LOG;
};