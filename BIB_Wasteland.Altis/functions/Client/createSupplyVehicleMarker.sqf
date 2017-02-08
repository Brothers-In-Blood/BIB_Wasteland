// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: createSupplyVehicleMarkers.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, BIB_Monkey
//	@file Created: 28/11/2012 05:19
//	@file Args:

//Creates the markers around Supply Vehicles.
{
	if (!isPlayer _x && {(vehicleVarName _x) select [0,8] == "Resupply"}) then
	{
		_npcPos = getPosATL _x;

		// Supply Vehicle title
		_markerName = format["marker_shop_title_%1",_x];
		deleteMarkerLocal _markerName;
		_marker = createMarkerLocal [_markerName, _npcPos];
		_markerName setMarkerShapeLocal "ICON";
		_markerName setMarkerTypeLocal "mil_dot";
		_markerName setMarkerColorLocal "ColorYellow";
		_markerName setMarkerSizeLocal [1,1];
		_markerName setMarkerTextLocal "SV";
	};
} forEach entities "CAManBase";
