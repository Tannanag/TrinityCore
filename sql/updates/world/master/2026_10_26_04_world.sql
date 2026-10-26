SET @CGUID := 11800210;

-- Gilneas City: phase 170 covers the whole city from the Lockdown! turn-in, not only Merchant Square
UPDATE `spell_area` SET `quest_start`=14078, `quest_start_status`=64 WHERE `spell`=59073 AND `area` IN (4714,4755,4757) AND `quest_start`=14099;

-- Gilneas City Guard: the 30th post; Rampaging Worgen: the leap spawn points TDB lacks (Jump13-Jump20)
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+8;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`) VALUES
(@CGUID+0,34916,654,4755,4756,'0',170,0,0,1,-1556.21,1354.52,35.56,5.206,120,0,0,0,NULL,NULL,NULL,NULL,'',NULL,63305), -- Gilneas City Guard
(@CGUID+1,34884,654,4755,4756,'0',170,0,0,0,-1522.747,1458.594,63.983,4.868,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump13',63305), -- Rampaging Worgen
(@CGUID+2,34884,654,4755,4756,'0',170,0,0,0,-1572.33,1441.46,71.896,4.858,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump14',63305), -- Rampaging Worgen
(@CGUID+3,34884,654,4755,4756,'0',170,0,0,0,-1539.394,1370.75,63.336,3.168,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump15',63305), -- Rampaging Worgen
(@CGUID+4,34884,654,4755,4756,'0',170,0,0,0,-1558.84,1306.861,73.162,0.345,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump16',63305), -- Rampaging Worgen
(@CGUID+5,34884,654,4755,4756,'0',170,0,0,0,-1477.299,1322.504,65.578,2.029,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump17',63305), -- Rampaging Worgen
(@CGUID+6,34884,654,4755,4756,'0',170,0,0,0,-1583.057,1333.057,63.347,1.494,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump18',63305), -- Rampaging Worgen
(@CGUID+7,34884,654,4755,4756,'0',170,0,0,0,-1386.695,1436.627,71.88,4.654,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump19',63305), -- Rampaging Worgen
(@CGUID+8,34884,654,4755,4756,'0',170,0,0,0,-1371.455,1346.75,36.236,1.594,120,0,0,0,NULL,NULL,NULL,NULL,'','Jump20',63305); -- Rampaging Worgen

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+0, 3000060, 3000062);
INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 0, 0, 1, 0, 333, 0, 0, 0, 0, ''), -- Gilneas City Guard - EMOTE_STATE_READY1H
(3000060, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 3, ''), -- Rampaging Worgen - EMOTE_STATE_WORK
(3000062, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 3, ''); -- Rampaging Worgen - EMOTE_STATE_WORK

-- Rampaging Worgen: the fourth stall attacker onto its spot
UPDATE `creature` SET `position_x`=-1497.306, `position_y`=1439.811, `position_z`=36.055, `orientation`=0.82 WHERE `guid`=3000063;

-- Rampaging Worgen: StringId for the ground spawn behind the east houses
UPDATE `creature` SET `StringId`='Jump21' WHERE `guid`=3000058;

-- Rampaging Worgen: the leap runs once per spawn (On Respawn fires on grid load and on respawn), no longer on every reset / evade
DELETE FROM `smart_scripts` WHERE `entryorguid`=34884 AND `source_type`=0 AND `id` BETWEEN 2 AND 22;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34884,0,2,0,11,0,100,0,0,0,0,0,0,80,3488400,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump1)'),
(34884,0,3,0,11,0,100,0,0,0,0,0,0,80,3488401,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump2)'),
(34884,0,4,0,11,0,100,0,0,0,0,0,0,80,3488402,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump3)'),
(34884,0,5,0,11,0,100,0,0,0,0,0,0,80,3488403,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump4)'),
(34884,0,6,0,11,0,100,0,0,0,0,0,0,80,3488404,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump5)'),
(34884,0,7,0,11,0,100,0,0,0,0,0,0,80,3488405,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump6)'),
(34884,0,8,0,11,0,100,0,0,0,0,0,0,80,3488406,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump7)'),
(34884,0,9,0,11,0,100,0,0,0,0,0,0,80,3488407,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump8)'),
(34884,0,10,0,11,0,100,0,0,0,0,0,0,80,3488408,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump9)'),
(34884,0,11,0,11,0,100,0,0,0,0,0,0,80,3488409,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump10)'),
(34884,0,12,0,11,0,100,0,0,0,0,0,0,80,3488410,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump11)'),
(34884,0,13,0,11,0,100,0,0,0,0,0,0,80,3488411,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump12)'),
(34884,0,14,0,11,0,100,0,0,0,0,0,0,80,3488412,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump13)'),
(34884,0,15,0,11,0,100,0,0,0,0,0,0,80,3488413,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump14)'),
(34884,0,16,0,11,0,100,0,0,0,0,0,0,80,3488414,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump15)'),
(34884,0,17,0,11,0,100,0,0,0,0,0,0,80,3488415,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump16)'),
(34884,0,18,0,11,0,100,0,0,0,0,0,0,80,3488416,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump17)'),
(34884,0,19,0,11,0,100,0,0,0,0,0,0,80,3488417,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump18)'),
(34884,0,20,0,11,0,100,0,0,0,0,0,0,80,3488418,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump19)'),
(34884,0,21,0,11,0,100,0,0,0,0,0,0,80,3488419,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump20)'),
(34884,0,22,0,11,0,100,0,0,0,0,0,0,80,3488420,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - On Respawn - Run Script (Jump21)');

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 3488400 AND 3488420 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(3488400,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488400,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1518.545,1381.559,40.911,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488400,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1527.77,1397.33,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488400,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488400,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488400,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488401,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488401,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1461.004,1370.682,64.398,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488401,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1459.82,1386.06,36.004,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488401,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488401,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488401,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488402,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488402,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1421.379,1378.561,73.314,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488402,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1437.56,1364.63,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488402,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488402,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488402,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488403,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488403,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1476.776,1440.854,60.718,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488403,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1491.3,1412.48,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488403,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488403,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488403,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488404,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488404,9,1,0,0,0,100,32,1000,1000,0,0,0,97,8,11,11,0,0,0,8,0,0,0,0,-1476.055,1342.712,64.172,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488404,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1501.05,1347.99,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488404,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488404,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488404,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488405,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488405,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,4,4,0,0,0,8,0,0,0,0,-1573.484,1333.042,58.794,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488405,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1535.17,1332.43,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488405,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488405,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488405,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488406,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488406,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1573.226,1333.057,58.871,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488406,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1539.02,1335.85,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488406,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488406,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488406,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488407,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488407,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1425.561,1358.085,65.881,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488407,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1447.21,1394.15,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488407,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488407,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488407,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488408,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488408,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1523.646,1411.805,39.712,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488408,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1517.4,1425.16,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488408,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488408,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488408,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488409,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488409,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1528.896,1381.031,58.566,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488409,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1508.87,1395.77,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488409,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488409,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488409,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488410,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488410,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,2,2,0,0,0,8,0,0,0,0,-1421.38,1413.828,64.132,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488410,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1437.75,1394.52,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488410,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488410,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488410,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488411,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488411,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1387.14,1426.55,71.656,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488411,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1417.49,1417.12,42.589,0,'Rampaging Worgen - Actionlist - Jump To Pos (ledge)'),
(3488411,9,3,0,0,0,100,32,3000,3000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1446.68,1420.5,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488411,9,4,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488411,9,5,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488411,9,6,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488412,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488412,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1521.51,1450.69,71.236,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488412,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1521.33,1408.15,40.118,0,'Rampaging Worgen - Actionlist - Jump To Pos (ledge)'),
(3488412,9,3,0,0,0,100,32,3000,3000,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1522.18,1395.39,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488412,9,4,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488412,9,5,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488412,9,6,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488413,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488413,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,4,4,0,0,0,8,0,0,0,0,-1560.042,1433.979,69.055,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488413,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1538.95,1427.15,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488413,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488413,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488413,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488414,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488414,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,4,4,0,0,0,8,0,0,0,0,-1561.24,1380.073,55.512,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488414,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1553.06,1397.02,35.565,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488414,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488414,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488414,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488415,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488415,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,2,2,0,0,0,8,0,0,0,0,-1535.139,1328.153,66.558,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488415,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1532.06,1346.52,35.668,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488415,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488415,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488415,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488416,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488416,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1477.748,1329.99,70.823,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488416,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1485.25,1358.22,61.231,0,'Rampaging Worgen - Actionlist - Jump To Pos (ledge)'),
(3488416,9,3,0,0,0,100,32,3000,3000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1511.61,1340.52,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488416,9,4,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488416,9,5,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488416,9,6,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488417,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488417,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,3,3,0,0,0,8,0,0,0,0,-1571.002,1351.12,61.18,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488417,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1564.1,1361.27,35.567,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488417,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488417,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488417,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488418,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488418,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,12,12,0,0,0,8,0,0,0,0,-1421.267,1380.352,72.883,0,'Rampaging Worgen - Actionlist - Jump To Pos (roof edge)'),
(3488418,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1444.52,1388.68,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488418,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488418,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488418,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488419,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488419,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,4,4,0,0,0,8,0,0,0,0,-1388.774,1370.519,35.808,0,'Rampaging Worgen - Actionlist - Jump To Pos (arch)'),
(3488419,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1442.83,1381.44,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488419,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488419,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488419,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard'),
(3488420,9,0,0,0,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Passive'),
(3488420,9,1,0,0,0,100,32,1000,1000,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1398.736,1363.804,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (arch)'),
(3488420,9,2,0,0,0,100,32,2500,2500,0,0,0,97,16,5,5,0,0,0,8,0,0,0,0,-1435.17,1356.01,35.556,0,'Rampaging Worgen - Actionlist - Jump To Pos (landing)'),
(3488420,9,3,0,0,0,100,0,1000,1000,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Reactstate Aggressive'),
(3488420,9,4,0,0,0,100,0,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Set Home Position'),
(3488420,9,5,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,11,34916,40,0,0,0,0,0,0,'Rampaging Worgen - Actionlist - Start Attack Closest Gilneas City Guard');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=34884 AND `SourceId`=0 AND `SourceGroup` BETWEEN 3 AND 23;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,3,34884,0,0,58,1,0,0,0,'Jump1',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump1'),
(22,4,34884,0,0,58,1,0,0,0,'Jump2',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump2'),
(22,5,34884,0,0,58,1,0,0,0,'Jump3',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump3'),
(22,6,34884,0,0,58,1,0,0,0,'Jump4',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump4'),
(22,7,34884,0,0,58,1,0,0,0,'Jump5',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump5'),
(22,8,34884,0,0,58,1,0,0,0,'Jump6',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump6'),
(22,9,34884,0,0,58,1,0,0,0,'Jump7',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump7'),
(22,10,34884,0,0,58,1,0,0,0,'Jump8',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump8'),
(22,11,34884,0,0,58,1,0,0,0,'Jump9',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump9'),
(22,12,34884,0,0,58,1,0,0,0,'Jump10',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump10'),
(22,13,34884,0,0,58,1,0,0,0,'Jump11',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump11'),
(22,14,34884,0,0,58,1,0,0,0,'Jump12',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump12'),
(22,15,34884,0,0,58,1,0,0,0,'Jump13',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump13'),
(22,16,34884,0,0,58,1,0,0,0,'Jump14',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump14'),
(22,17,34884,0,0,58,1,0,0,0,'Jump15',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump15'),
(22,18,34884,0,0,58,1,0,0,0,'Jump16',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump16'),
(22,19,34884,0,0,58,1,0,0,0,'Jump17',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump17'),
(22,20,34884,0,0,58,1,0,0,0,'Jump18',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump18'),
(22,21,34884,0,0,58,1,0,0,0,'Jump19',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump19'),
(22,22,34884,0,0,58,1,0,0,0,'Jump20',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump20'),
(22,23,34884,0,0,58,1,0,0,0,'Jump21',0,0,0,'','Rampaging Worgen - Run Script only for the spawn with StringId Jump21');

-- Prince Liam Greymane: a yell from his group every 20-24 s while fighting, the first 5-20 s in, silent out of combat
DELETE FROM `smart_scripts` WHERE `entryorguid`=34913 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34913,0,0,0,0,0,100,0,5000,20000,20000,24000,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Prince Liam Greymane - In Combat - Say Line 0');
