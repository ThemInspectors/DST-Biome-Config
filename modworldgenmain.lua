--[====[
DST-Biome Congig/Extra Worldgen Config /// Add Zest to your Don't Starve Together World!
Copyright (C) 2019  ThemInspectors

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]====]

----------------
--    Init    --
----------------

local require = GLOBAL.require

modimport("scripts/map/levels/tmglevels") -- Load all custom Tasks, rooms and More.
modimport("scripts/map/tasks/tmgtasks")
modimport("scripts/map/tasksets/tmgtasksets")
modimport("scripts/map/rooms/tmgrooms")
modimport("scripts/map/startlocations")

local Layouts = GLOBAL.require("map/layouts").Layouts
local StaticLayout = GLOBAL.require("map/static_layout")

Layouts["ThisMeansWarStartDST"] = StaticLayout.Get("map/static_layouts/thismeanswardst_start") -- SetPieces
Layouts["BargainStartDST"] = StaticLayout.Get("map/static_layouts/bargainstartdst")
Layouts["PreSummerStartDST"] = StaticLayout.Get("map/static_layouts/presummerstartdst")
Layouts["skeleton_researchlab2"] = StaticLayout.Get("map/static_layouts/skeleton_researchlab2")

--------------------
--    Functions   --
--------------------
--
local function removeTasks(leveldata,name)
  for index,key in ipairs(leveldata.tasks) do
    if key == name then
      table.remove(leveldata.tasks, index)
      print("TMG: Removed task: "..name)
      break
    end
  end
end

local function removeOptionalTasks(leveldata,name)
  for index,key in ipairs(leveldata.optionaltasks) do
    if key == name then
      table.remove(leveldata.optionaltasks, index)
      print("TMG: Removed optional task: "..name)
      break
    end
  end
end

local function disconnectTasks(taskdata)
  print("TMG: Editing Task: "..tostring(taskdata))
  if taskdata.entrance_room then return print("Failed! Task already has entrance room.") end
  if taskdata.region_id then return print("Failed! This Task had a region_id; Most likely means that this is the crazy stuff island") end
  taskdata.entrance_room = "ForceDisconnectedRoom"
  if taskdata.entrance_room == "ForceDisconnectedRoom" then print("Sucess!") else return print("Failed!") end
end

local function addSetPieceToTask(tasksetdata, task, setpiece, amount)
  print("TMG: Editing Task: "..tostring(task))
  amount = amount or 1
  local tasktable = {
    setpiece = {tasks = {task}, count = amount},
  }
  local setpieceposition = #tasksetdata+1
  tasksetdata.set_pieces[setpieceposition] = tasktable[1]
  if tasksetdata.set_pieces[setpieceposition] then
    print("Sucess!")
  end
end

------------------------------------
--    Level-specific Functions    --
------------------------------------

local function driveIslands(level)
  print(GetModConfigData("islandness"))
  print("TMG: Driving Islands, value: "..GetModConfigData("islandness"))
  if level.location ~= "forest" then return end --Early return for caves
  if level.id ~= "INSPECTORMODWORLDGENLEVEL" then return print("Mod Gen Config Level ID is not Gen+, Aborting! Level ID is: "..level.id) end
  if GetModConfigData("islandness") == "always" then
    table.insert(level.tasks, "Island Driver 1")
    table.insert(level.tasks, "Island Driver 2")
    table.insert(level.tasks, "Island Driver 3")
    table.insert(level.tasks, "Island Driver 4")
    table.insert(level.tasks, "Island Driver 5")
    print("TMG: Added Tasks: Island Driver (1-5)")
    return
  end
  --[===[
  if GetModConfigData("islandness") == "twolands" then -- This doesn't work too well, sadly.
    removeOptionalTasks(level,"Befriend the pigs")
    print("TMG: Added Task: Befriend the pigs")
    table.insert(level.tasks, "Befriend the pigs") -- Force 2nd pig village to be part of the Guaranteed tasks as it is a prime candidate for driving two islands
    AddTaskPreInit("Befriend the pigs", disconnectTasks)
    return
  end
  --]===]
  if GetModConfigData("islandness") == "outerteir" then
    AddTaskPreInit("Lightning Bluff", disconnectTasks)
    AddTaskPreInit("Forest hunters", disconnectTasks)
    AddTaskPreInit("The hunters", disconnectTasks)
    return
  end

  if GetModConfigData("islandness") == "crazy" then
    for k,v in ipairs(level.tasks) do
      AddTaskPreInit(tostring(level.tasks[k]), disconnectTasks)
    end
    for k,v in ipairs(level.optionaltasks) do
      AddTaskPreInit(tostring(level.optionaltasks[k]), disconnectTasks)
    end
    return
  end
end
--[===[
local function addBase(taskset)
  if GetModConfigData("basestart") then
    local task = taskset.valid_start_tasks[1]
    addSetPieceToTask(taskset, task, "SimpleBase")
  end
end
--]===]
-------------------------
--    Run Functions    --
-------------------------

AddLevelPreInitAny(driveIslands)
AddTaskSetPreInitAny(addBase)
