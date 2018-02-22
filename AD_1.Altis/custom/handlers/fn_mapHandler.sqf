#include "..\..\script_macros.hpp"
#define IDD_MAPVOTE_MENU 40000
/*
*   @File: fn_mapHandler.sqf
*   @Author: Sig
*
*   Description: Handles opening of the map
*
*   Arguments:
*     0 - _open -   <BOOL> whether the map is open or not
*     1 - _force -  <BOOL> whether the map is forcefully kept open
*
*   Return:
*     Nothing
*/

params [
  ["_open", false, [false]],
  ["_force", false, [false]]
];

if (_open) then {
  if (!GVAR(alreadyVoted) && canChangeObjPos && changeAttackerSide && canVote) then {
    (findDisplay 46) createDisplay "ADC_mapVoteMenu";
    GVAR(voteDisplayMarkers) = [];
    {
      _x params ["_name", ""];

      private _marker = createMarkerLocal [format ["Display_marker%1_%2", _forEachIndex, random 100], markerPos _name];
      _marker setMarkerTypeLocal "mil_marker";
      _marker setMarkerColorLocal "colorYellow";
      _marker setMarkerTextLocal (markerText _name);

      GVAR(voteDisplayMarkers) pushBack _marker;
    } forEach markerAreaArray;
  };
} else {
  if (!isNull findDisplay IDD_MAPVOTE_MENU) then {
    ['collapse', [true]] spawn FUNC(mapVoteMenu);
  };

  if (!isNil "ADC_voteDisplayMarkers") then {
    {
      deleteMarkerLocal _x;
    } forEach GVAR(voteDisplayMarkers);
  };
};
