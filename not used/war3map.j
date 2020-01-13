import NoWurst
library cjLib75hJKJ374s4e597nba9o7w45gf
globals
group cj_tmpgr_copy_nw509ert7
endglobals
function cj_group_copy_75hJKJ3745gf takes nothing returns nothing
//# optional
call GroupAddUnit(cj_tmpgr_copy_nw509ert7,GetEnumUnit())
endfunction
endlibrary
globals
constant boolean LIBRARY_cjLib75hJKJ374s4e597nba9o7w45gf=true
group cj_tmpgr_copy_nw509ert7
endglobals
function cj_group_copy_75hJKJ3745gf takes nothing returns nothing
call GroupAddUnit(cj_tmpgr_copy_nw509ert7,GetEnumUnit())
endfunction
function InitGlobals takes nothing returns nothing
endfunction
function CreateBuildingsForPlayer0 takes nothing returns nothing
local player p=Player(0)
local unit u
local integer unitID
local trigger t
local real life
set u=CreateUnit(p,0x68626C61,-4096.0,3712.0,270.000)
set u=null
endfunction
function CreateUnitsForPlayer0 takes nothing returns nothing
local player p=Player(0)
local unit u
local integer unitID
local trigger t
local real life
set u=CreateUnit(p,0x68706561,-4641.3,3867.6,216.833)
set u=CreateUnit(p,0x68706561,-4643.5,3482.6,318.756)
set u=CreateUnit(p,0x486D6B67,-3885.6,3892.2,85.586)
set u=null
endfunction
function CreatePlayerBuildings takes nothing returns nothing
call CreateBuildingsForPlayer0()
endfunction
function CreatePlayerUnits takes nothing returns nothing
call CreateUnitsForPlayer0()
endfunction
function CreateAllUnits takes nothing returns nothing
call CreatePlayerBuildings()
call CreatePlayerUnits()
endfunction
function InitCustomPlayerSlots takes nothing returns nothing
call SetPlayerStartLocation(Player(0),0)
call SetPlayerColor(Player(0),ConvertPlayerColor(0))
call SetPlayerRacePreference(Player(0),RACE_PREF_HUMAN)
call SetPlayerRaceSelectable(Player(0),true)
call SetPlayerController(Player(0),MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
call SetPlayerTeam(Player(0),0)
endfunction
function main takes nothing returns nothing
call SetCameraBounds(-5376.0+GetCameraMargin(CAMERA_MARGIN_LEFT),-5632.0+GetCameraMargin(CAMERA_MARGIN_BOTTOM),5376.0-GetCameraMargin(CAMERA_MARGIN_RIGHT),5120.0-GetCameraMargin(CAMERA_MARGIN_TOP),-5376.0+GetCameraMargin(CAMERA_MARGIN_LEFT),5120.0-GetCameraMargin(CAMERA_MARGIN_TOP),5376.0-GetCameraMargin(CAMERA_MARGIN_RIGHT),-5632.0+GetCameraMargin(CAMERA_MARGIN_BOTTOM))
call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl","Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
call SetWaterBaseColor(0,255,255,255)
call NewSoundEnvironment("Default")
call SetAmbientDaySound("SunkenRuinsDay")
call SetAmbientNightSound("SunkenRuinsNight")
call SetMapMusic("Music",true,0)
call CreateAllUnits()
call InitBlizzard()
call InitGlobals()
endfunction
function config takes nothing returns nothing
call SetMapName("TRIGSTR_003")
call SetMapDescription("TRIGSTR_005")
call SetPlayers(1)
call SetTeams(1)
call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
call DefineStartLocation(0,-4096.0,3712.0)
call InitCustomPlayerSlots()
call SetPlayerSlotAvailable(Player(0),MAP_CONTROL_USER)
call InitGenericPlayerSlots()
endfunction
