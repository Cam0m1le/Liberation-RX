_size = (getnumber (configfile >> "cfgworlds" >> worldname >> "mapSize")) / 2;
_center = [_size,_size,0];

{
  if (_x distance2D lhd > 1000) then {
    _str = toLower str _x;
    if (_str find "house_c_12_ep1" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
    if (_str find "repair_center" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
    if (_str find "house_c_1_ep1" > 0) then { GRLIB_Marker_ATM pushback (getpos _x) };
    if (_str find "carservice_" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
    if (_str find "fs_feed" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
    if (_str find "fuelstation_feed" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
    if (_str find "ind_workshop01_02" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
  };
} forEach (_center nearObjects ["All", (_size * 2^0.50)]);  // cover corner