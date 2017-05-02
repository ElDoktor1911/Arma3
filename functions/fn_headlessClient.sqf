
private [["_idHC",0]];

if!(hasInterface || isServer){
	clientOwner remoteExec ["DOK_fnc_headlessClient",2];
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
