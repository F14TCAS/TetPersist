// INIT SERVER

if (profileNamespace getVariable [format ["FILL ME IN", worldName], false]) then {
[] call compileScript ["TETPERSIST\FNC\CORE\load.sqf"];
} else {
    {
        _x call persist_veh_fnc_add;
    } forEach (getMissionLayerEntities "persist_save_vehicles" select 0);
    if (isNil "persist_save_vehicles") then {persist_save_vehicles = [];};
};

[] call persist_eh_fnc_server;