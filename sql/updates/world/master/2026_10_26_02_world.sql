SET @CGUID := 11800200;

-- Panicked Citizen: the eight runners set off from their spawn point instead of first stepping back to a stray point 1-9 yd behind it, and come back 30 s after reaching their destination
DELETE FROM `waypoint_path_node` WHERE `PathId` BETWEEN 3485100 AND 3485107;
INSERT INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`) VALUES
(3485100, 1, -1557.66, 1333.98, 35.6392, NULL, 0),
(3485100, 2, -1557.92, 1335.35, 35.5559, NULL, 0),
(3485100, 3, -1554.15, 1358.49, 35.5559, NULL, 0),
(3485100, 4, -1550.9, 1378.59, 35.5559, NULL, 0),
(3485100, 5, -1541.37, 1388, 35.5559, NULL, 0),
(3485100, 6, -1513.98, 1391.66, 35.5559, NULL, 0),
(3485100, 7, -1487.98, 1390.54, 35.5559, NULL, 0),
(3485100, 8, -1463.45, 1392.06, 35.5559, NULL, 0),
(3485100, 9, -1446.19, 1381.4, 35.5559, NULL, 0),
(3485100, 10, -1441.45, 1364.22, 35.5559, NULL, 0),
(3485100, 11, -1449.31, 1355.35, 35.5559, NULL, 0),
(3485100, 12, -1477.94, 1346.39, 35.5559, NULL, 0),
(3485100, 13, -1486.14, 1337.41, 35.7059, NULL, 0),
(3485100, 14, -1486.14, 1337.41, 35.7059, NULL, 0),
(3485101, 1, -1566.02, 1390.84, 36.0863, NULL, 0),
(3485101, 2, -1569.98, 1389.74, 35.5559, NULL, 0),
(3485101, 3, -1559.13, 1390.55, 35.5559, NULL, 0),
(3485101, 4, -1537.62, 1390.67, 35.5559, NULL, 0),
(3485101, 5, -1520.14, 1391.87, 35.5559, NULL, 0),
(3485101, 6, -1481.07, 1396.95, 35.5559, NULL, 0),
(3485101, 7, -1455.03, 1398.93, 35.5559, NULL, 0),
(3485101, 8, -1433.56, 1376.98, 35.5559, NULL, 0),
(3485101, 9, -1414.52, 1369.89, 35.5559, NULL, 0),
(3485101, 10, -1403.79, 1391.56, 35.5559, NULL, 0),
(3485101, 11, -1396.45, 1403.75, 35.9607, NULL, 0),
(3485101, 12, -1396.45, 1403.75, 35.9607, NULL, 0),
(3485102, 1, -1517.18, 1358.68, 35.6754, NULL, 0),
(3485102, 2, -1517.26, 1350.08, 35.5901, NULL, 0),
(3485102, 3, -1499.89, 1346.24, 35.5559, NULL, 0),
(3485102, 4, -1485.78, 1346.5, 35.5559, NULL, 0),
(3485102, 5, -1465.35, 1349.66, 35.5559, NULL, 0),
(3485102, 6, -1455.58, 1362.03, 35.5559, NULL, 0),
(3485102, 7, -1452.57, 1376.58, 35.9835, NULL, 0),
(3485102, 8, -1435.38, 1399.62, 35.5559, NULL, 0),
(3485102, 9, -1436.97, 1418.23, 35.5559, NULL, 0),
(3485102, 10, -1423.03, 1417.85, 35.5559, NULL, 0),
(3485102, 11, -1421.27, 1413.57, 36.7882, NULL, 0),
(3485102, 12, -1421.27, 1413.57, 36.7882, NULL, 0),
(3485103, 1, -1398.11, 1431.06, 35.6393, NULL, 0),
(3485103, 2, -1401.11, 1430.01, 35.5559, NULL, 0),
(3485103, 3, -1403.94, 1423.49, 35.5559, NULL, 0),
(3485103, 4, -1404.24, 1395.62, 35.5559, NULL, 0),
(3485103, 5, -1406.97, 1376.44, 35.5559, NULL, 0),
(3485103, 6, -1412.89, 1366.29, 35.5559, NULL, 0),
(3485103, 7, -1446.92, 1358.18, 35.5559, NULL, 0),
(3485103, 8, -1479.68, 1349.59, 35.5559, NULL, 0),
(3485103, 9, -1512.6, 1340.97, 35.5559, NULL, 0),
(3485103, 10, -1545.62, 1331.46, 35.5559, NULL, 0),
(3485103, 11, -1578.93, 1316.89, 35.5559, NULL, 0),
(3485103, 12, -1603.45, 1312.64, 18.282, NULL, 0),
(3485103, 13, -1628.11, 1308.6, 20.2663, NULL, 0),
(3485103, 14, -1649.92, 1307.35, 19.7823, NULL, 0),
(3485103, 15, -1682.45, 1305.86, 19.7823, NULL, 0),
(3485103, 16, -1689.48, 1304.64, 19.7823, NULL, 0),
(3485103, 17, -1692.36, 1297.53, 20.2841, NULL, 0),
(3485103, 18, -1692.36, 1297.53, 20.2841, NULL, 0),
(3485104, 1, -1475.92, 1355.62, 35.6393, NULL, 0),
(3485104, 2, -1473.32, 1354.51, 35.5559, NULL, 0),
(3485104, 3, -1464.36, 1353.61, 35.5559, NULL, 0),
(3485104, 4, -1456.92, 1359.33, 35.5559, NULL, 0),
(3485104, 5, -1453.67, 1382.23, 35.8605, NULL, 0),
(3485104, 6, -1472.68, 1390.39, 35.5559, NULL, 0),
(3485104, 7, -1515.83, 1398.98, 35.5559, NULL, 0),
(3485104, 8, -1540.99, 1399.34, 35.5559, NULL, 0),
(3485104, 9, -1553.08, 1387.47, 35.576, NULL, 0),
(3485104, 10, -1560.19, 1364.88, 35.6707, NULL, 0),
(3485104, 11, -1579.16, 1364.87, 35.7491, NULL, 0),
(3485104, 12, -1583.47, 1360.97, 35.9987, NULL, 0),
(3485104, 13, -1583.47, 1360.97, 35.9987, NULL, 0),
(3485105, 1, -1545.53, 1436.92, 35.8738, NULL, 0),
(3485105, 2, -1537.68, 1431.86, 35.5559, NULL, 0),
(3485105, 3, -1508.56, 1420.95, 35.5559, NULL, 0),
(3485105, 4, -1502.36, 1410.74, 35.5559, NULL, 0),
(3485105, 5, -1499.89, 1397.3, 35.5559, NULL, 0),
(3485105, 6, -1500.02, 1375.36, 35.5559, NULL, 0),
(3485105, 7, -1496.69, 1351.53, 35.5559, NULL, 0),
(3485105, 8, -1474.15, 1349.49, 35.5559, NULL, 0),
(3485105, 9, -1455.94, 1353.31, 35.5559, NULL, 0),
(3485105, 10, -1442.34, 1370.33, 35.5559, NULL, 0),
(3485105, 11, -1443.8, 1397.67, 35.5559, NULL, 0),
(3485105, 12, -1446.98, 1419.57, 35.5559, NULL, 0),
(3485105, 13, -1463.31, 1441.83, 35.9913, NULL, 0),
(3485105, 14, -1463.31, 1441.83, 35.9913, NULL, 0),
(3485106, 1, -1476.81, 1439.62, 35.6393, NULL, 0),
(3485106, 2, -1484.13, 1434.9, 35.5559, NULL, 0),
(3485106, 3, -1494.22, 1427.02, 35.5559, NULL, 0),
(3485106, 4, -1513.02, 1419.3, 35.5559, NULL, 0),
(3485106, 5, -1533.98, 1421.55, 35.5559, NULL, 0),
(3485106, 6, -1546.87, 1412.98, 35.5559, NULL, 0),
(3485106, 7, -1555.8, 1380.94, 35.5559, NULL, 0),
(3485106, 8, -1559.86, 1361.95, 35.5559, NULL, 0),
(3485106, 9, -1564.81, 1348.47, 35.5559, NULL, 0),
(3485106, 10, -1565.94, 1326.43, 35.5559, NULL, 0),
(3485106, 11, -1575.71, 1319.45, 35.6596, NULL, 0),
(3485106, 12, -1603.97, 1314.38, 18.2702, NULL, 0),
(3485106, 13, -1627.99, 1309.86, 20.2902, NULL, 0),
(3485106, 14, -1656.35, 1307.08, 19.7823, NULL, 0),
(3485106, 15, -1675.74, 1314.08, 20.2918, NULL, 0),
(3485106, 16, -1675.74, 1314.08, 20.2918, NULL, 0),
(3485107, 1, -1432.88, 1431.65, 35.6393, NULL, 0),
(3485107, 2, -1438.83, 1430.13, 35.5559, NULL, 0),
(3485107, 3, -1460.7, 1424.34, 35.5559, NULL, 0),
(3485107, 4, -1484.46, 1424.62, 35.5559, NULL, 0),
(3485107, 5, -1495.32, 1424.44, 35.5559, NULL, 0),
(3485107, 6, -1519.17, 1424.15, 35.5559, NULL, 0),
(3485107, 7, -1537.38, 1418.97, 35.5559, NULL, 0),
(3485107, 8, -1546.26, 1405.81, 35.5559, NULL, 0),
(3485107, 9, -1542.06, 1392.99, 35.5559, NULL, 0),
(3485107, 10, -1516.75, 1390.39, 35.5559, NULL, 0),
(3485107, 11, -1505.28, 1381.6, 35.5559, NULL, 0),
(3485107, 12, -1500.97, 1364.63, 35.5559, NULL, 0),
(3485107, 13, -1505.45, 1345.69, 35.5559, NULL, 0),
(3485107, 14, -1516.72, 1340.1, 35.5559, NULL, 0),
(3485107, 15, -1528.84, 1334.56, 35.5559, NULL, 0),
(3485107, 16, -1530.02, 1325.19, 35.8444, NULL, 0),
(3485107, 17, -1530.02, 1325.19, 35.8444, NULL, 0);

UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=14, `comment`='Panicked Citizen - On Waypoint 14 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376371 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=14, `comment`='Panicked Citizen - On Waypoint 14 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376369 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=12, `comment`='Panicked Citizen - On Waypoint 12 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376367 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=13, `comment`='Panicked Citizen - On Waypoint 13 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376353 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=17, `comment`='Panicked Citizen - On Waypoint 17 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376349 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=18, `comment`='Panicked Citizen - On Waypoint 18 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376345 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=16, `comment`='Panicked Citizen - On Waypoint 16 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376344 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=30, `event_param1`=12, `comment`='Panicked Citizen - On Waypoint 12 Ended - Despawn (respawn in 30 seconds)' WHERE `entryorguid`=-376318 AND `source_type`=0 AND `id`=1;

-- Shadowy Figure: the pacer starts kneeling on the north end of its ridge, the high jumper on its jump-off point
UPDATE `creature` SET `position_x`=-1421.68, `position_y`=1391.15, `position_z`=71.27, `orientation`=1.59584 WHERE `guid`=376284;
UPDATE `creature` SET `position_x`=-1420.115, `position_y`=1433.424, `position_z`=71.269 WHERE `guid`=376319;

DELETE FROM `creature_addon` WHERE `guid`=376284;
INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `MountCreatureID`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvPFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(376284, 0, 0, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, '39662'); -- Shadowy Figure - UNIT_STAND_STATE_KNEEL

-- Shadowy Figure: the roof figures' timings (roar every 2.4 s; pacer every 7.3 s; shuffler every 6.1 s; jump pairs every 7.3 / 8.5 / 7.3 s at 16 yd/s)
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-376284,-376306,-376319,-376323,-376334,-376337) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 3486700 AND 3486704 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-376323,0,0,0,1,0,100,0,2400,2400,2400,2400,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Out of Combat - Play Emote 15'),
(-376284,0,0,0,1,0,100,0,1000,7300,14600,14600,0,80,3486700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Out of Combat - Run Script'),
(-376337,0,0,0,1,0,100,0,1000,6100,6100,6100,0,80,3486701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Out of Combat - Run Script'),
(-376319,0,0,0,1,0,100,0,1000,7300,14600,14600,0,80,3486702,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Out of Combat - Run Script'),
(-376334,0,0,0,1,0,100,0,1000,8500,17000,17000,0,80,3486703,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Out of Combat - Run Script'),
(-376306,0,0,0,1,0,100,0,1000,7300,14600,14600,0,80,3486704,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Out of Combat - Run Script'),
(3486700,9,0,0,0,0,100,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Remove Stand State Kneel'),
(3486700,9,1,0,0,0,100,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Set Walk'),
(3486700,9,2,0,0,0,100,0,0,0,0,0,0,69,0,0,1,0,0,0,8,0,0,0,0,-1421.56,1386.36,71.8755,0,'Shadowy Figure - Actionlist - Move To Position'),
(3486700,9,3,0,0,0,100,0,2000,2000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Set Stand State Kneel'),
(3486700,9,4,0,0,0,100,0,5300,5300,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Remove Stand State Kneel'),
(3486700,9,5,0,0,0,100,0,0,0,0,0,0,69,0,0,1,0,0,0,8,0,0,0,0,-1421.68,1391.15,71.27,0,'Shadowy Figure - Actionlist - Move To Position'),
(3486700,9,6,0,0,0,100,0,2000,2000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Set Stand State Kneel'),
(3486701,9,0,0,0,0,100,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Remove Stand State Kneel'),
(3486701,9,1,0,0,0,100,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Set Walk'),
(3486701,9,2,0,0,0,100,0,0,0,0,0,0,69,0,0,1,0,0,0,8,0,0,0,0,-1445.241,1337.629,71.136,0,'Shadowy Figure - Actionlist - Move To Position'),
(3486701,9,3,0,0,0,100,0,1400,1400,0,0,0,69,0,0,1,0,0,0,8,0,0,0,0,-1446.231,1340.991,71.157,0,'Shadowy Figure - Actionlist - Move To Position'),
(3486701,9,4,0,0,0,100,0,1400,1400,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - Actionlist - Set Stand State Kneel'),
(3486702,9,0,0,0,0,100,0,0,0,0,0,0,97,16,4,4,0,0,0,8,0,0,0,0,-1421.311,1409.007,63.297,0,'Shadowy Figure - Actionlist - Jump To Position'),
(3486702,9,1,0,0,0,100,0,7300,7300,0,0,0,97,16,6,6,0,0,0,8,0,0,0,0,-1420.115,1433.424,71.269,0,'Shadowy Figure - Actionlist - Jump To Position'),
(3486703,9,0,0,0,0,100,0,0,0,0,0,0,97,16,9,9,0,0,0,8,0,0,0,0,-1506.57,1451.028,71.198,0,'Shadowy Figure - Actionlist - Jump To Position'),
(3486703,9,1,0,0,0,100,0,8500,8500,0,0,0,97,16,6,6,0,0,0,8,0,0,0,0,-1464.9,1450.8,71.7703,0,'Shadowy Figure - Actionlist - Jump To Position'),
(3486704,9,0,0,0,0,100,0,0,0,0,0,0,97,16,4,4,0,0,0,8,0,0,0,0,-1488.443,1327.366,71.063,0,'Shadowy Figure - Actionlist - Jump To Position'),
(3486704,9,1,0,0,0,100,0,7300,7300,0,0,0,97,16,4,4,0,0,0,8,0,0,0,0,-1513.76,1319.59,72.6899,0,'Shadowy Figure - Actionlist - Jump To Position');

-- Panicked Citizen: the ninth runner, from the south-east gate to the north-east corner, 187 s spawn to spawn
DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`) VALUES
(@CGUID+0, 34851, 654, 4755, 4756, '0', 0, 169, 0, -1, 0, 0, -1393.288, 1339.969, 35.583, 0.0862, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, 69875); -- Panicked Citizen

DELETE FROM `waypoint_path` WHERE `PathId`=3485108;
INSERT INTO `waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(3485108, 1, 0, NULL, 'Panicked Citizen - On Respawn');

DELETE FROM `waypoint_path_node` WHERE `PathId`=3485108;
INSERT INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`) VALUES
(3485108, 1, -1389.493, 1340.2969, 35.739315, NULL, 0),
(3485108, 2, -1378.7031, 1343.5365, 35.739315, NULL, 0),
(3485108, 3, -1370.5122, 1349.1875, 36.15272, NULL, 0),
(3485108, 4, -1369.3663, 1387.1163, 36.15333, NULL, 0),
(3485108, 5, -1368.8368, 1434.4548, 36.15403, NULL, 0),
(3485108, 6, -1377.1372, 1463.5312, 36.15446, NULL, 0),
(3485108, 7, -1385.4774, 1463.4584, 36.154453, NULL, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=-(@CGUID+0) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-(@CGUID+0),0,0,0,11,0,100,0,0,0,0,0,0,53,0,3485108,0,0,0,0,1,0,0,0,0,0,0,0,0,'Panicked Citizen - On Respawn - Start Waypoint Path 3485108'),
(-(@CGUID+0),0,1,0,11,0,100,0,0,0,0,0,0,12,34867,3,30000,0,0,0,8,0,0,0,0,-1397.469,1340.787,35.706,3.606,'Panicked Citizen - On Respawn - Summon Creature Shadowy Figure'),
(-(@CGUID+0),0,2,0,58,0,100,0,7,3485108,0,0,0,41,1,168,0,0,0,0,1,0,0,0,0,0,0,0,0,'Panicked Citizen - On Waypoint 7 Ended - Despawn (respawn in 168 seconds)');

-- Shadowy Figure: the one summoned by the gate runner chases it to the north-east corner and vanishes
DELETE FROM `waypoint_path` WHERE `PathId`=3486700;
INSERT INTO `waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(3486700, 1, 0, NULL, 'Shadowy Figure - Just Summoned');

DELETE FROM `waypoint_path_node` WHERE `PathId`=3486700;
INSERT INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`) VALUES
(3486700, 1, -1404.6007, 1337.2153, 35.73932, NULL, 0),
(3486700, 2, -1382.9098, 1342.0052, 35.73932, NULL, 0),
(3486700, 3, -1371.1198, 1351.3264, 36.152756, NULL, 0),
(3486700, 4, -1368.8629, 1377.066, 36.15317, NULL, 0),
(3486700, 5, -1368.0781, 1411.8125, 36.15368, NULL, 0),
(3486700, 6, -1367.7848, 1445.033, 36.15417, NULL, 0),
(3486700, 7, -1378.724, 1461.1528, 36.154457, NULL, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34867 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(34867,0,0,0,54,0,100,0,0,0,0,0,0,53,0,3486700,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - On Just Summoned - Start Waypoint Path 3486700'),
(34867,0,1,0,58,0,100,0,7,3486700,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowy Figure - On Waypoint 7 Ended - Despawn');
