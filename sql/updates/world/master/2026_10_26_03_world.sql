-- Rat: the four Merchant Square rats of the default phase run their own routes (the 170 rats keep theirs)
SET @ENTRY := 4075;

-- Rat (-1585, 1365): out to the square's west corner and back past the fountain, was running the phase 170 route 407500
SET @PATHOFFSET := 9;
SET @PATH := @ENTRY * 100 + @PATHOFFSET;
DELETE FROM `waypoint_path` WHERE `PathId`=@PATH;
INSERT INTO `waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(@PATH, 1, 0x0, NULL, 'Rat - Cosmetic Path');

DELETE FROM `waypoint_path_node` WHERE `PathId`=@PATH;
INSERT INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`) VALUES
(@PATH, 0, -1566.352, 1366.950, 35.890, NULL, 0),
(@PATH, 1, -1555.754, 1370.865, 35.770, NULL, 0),
(@PATH, 2, -1542.465, 1384.807, 35.995, NULL, 0),
(@PATH, 3, -1542.089, 1408.861, 35.556, NULL, 0),
(@PATH, 4, -1533.207, 1420.983, 35.556, NULL, 0),
(@PATH, 5, -1528.009, 1414.783, 35.553, NULL, 0),
(@PATH, 6, -1539.750, 1416.844, 35.556, NULL, 0),
(@PATH, 7, -1542.465, 1384.807, 35.995, NULL, 0),
(@PATH, 8, -1555.754, 1370.865, 35.770, NULL, 0),
(@PATH, 9, -1566.352, 1366.950, 35.890, NULL, 0),
(@PATH, 10, -1585.214, 1365.340, 35.710, NULL, 0);

UPDATE `creature_addon` SET `PathId`=@PATH WHERE `guid`=376325;

-- Rat (-1573, 1401): along the north side to the gate and back, with the spur at the west steps, was running the phase 170 route 407501
SET @PATHOFFSET := 10;
SET @PATH := @ENTRY * 100 + @PATHOFFSET;
DELETE FROM `waypoint_path` WHERE `PathId`=@PATH;
INSERT INTO `waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(@PATH, 1, 0x0, NULL, 'Rat - Cosmetic Path');

DELETE FROM `waypoint_path_node` WHERE `PathId`=@PATH;
INSERT INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`) VALUES
(@PATH, 0, -1565.655, 1400.969, 36.158, NULL, 0),
(@PATH, 1, -1559.969, 1422.285, 35.719, NULL, 0),
(@PATH, 2, -1555.533, 1433.922, 35.810, NULL, 0),
(@PATH, 3, -1547.986, 1438.767, 35.902, NULL, 0),
(@PATH, 4, -1529.497, 1441.524, 35.980, NULL, 0),
(@PATH, 5, -1524.859, 1436.375, 35.767, NULL, 0),
(@PATH, 6, -1507.276, 1435.762, 35.749, NULL, 0),
(@PATH, 7, -1492.830, 1437.661, 35.844, NULL, 0),
(@PATH, 8, -1480.974, 1437.476, 35.852, NULL, 0),
(@PATH, 9, -1468.632, 1440.254, 35.968, NULL, 0),
(@PATH, 10, -1454.483, 1437.776, 35.877, NULL, 0),
(@PATH, 11, -1430.311, 1439.118, 35.935, NULL, 0),
(@PATH, 12, -1454.483, 1437.776, 35.877, NULL, 0),
(@PATH, 13, -1468.632, 1440.254, 35.968, NULL, 0),
(@PATH, 14, -1480.974, 1437.476, 35.852, NULL, 0),
(@PATH, 15, -1492.830, 1437.661, 35.844, NULL, 0),
(@PATH, 16, -1507.276, 1435.762, 35.749, NULL, 0),
(@PATH, 17, -1518.118, 1436.016, 35.748, NULL, 0),
(@PATH, 18, -1529.497, 1441.524, 35.980, NULL, 0),
(@PATH, 19, -1547.986, 1438.767, 35.902, NULL, 0),
(@PATH, 20, -1555.533, 1433.922, 35.810, NULL, 0),
(@PATH, 21, -1559.858, 1411.417, 35.922, NULL, 0),
(@PATH, 22, -1565.655, 1400.969, 36.158, NULL, 0),
(@PATH, 23, -1573.142, 1401.139, 36.619, NULL, 0);

UPDATE `creature_addon` SET `PathId`=@PATH WHERE `guid`=376346;

-- Rat: the loop round the east half of the square, was standing still at (-1563, 1319) next to the route of 407503
SET @PATHOFFSET := 11;
SET @PATH := @ENTRY * 100 + @PATHOFFSET;
DELETE FROM `waypoint_path` WHERE `PathId`=@PATH;
INSERT INTO `waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(@PATH, 1, 0x0, NULL, 'Rat - Cosmetic Path');

DELETE FROM `waypoint_path_node` WHERE `PathId`=@PATH;
INSERT INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`) VALUES
(@PATH, 0, -1495.269, 1408.132, 35.556, NULL, 0),
(@PATH, 1, -1502.300, 1380.554, 35.556, NULL, 0),
(@PATH, 2, -1500.208, 1350.625, 35.556, NULL, 0),
(@PATH, 3, -1461.733, 1354.517, 35.556, NULL, 0),
(@PATH, 4, -1433.222, 1362.076, 35.556, NULL, 0),
(@PATH, 5, -1401.542, 1368.288, 35.556, NULL, 0),
(@PATH, 6, -1402.983, 1385.648, 35.556, NULL, 0),
(@PATH, 7, -1402.665, 1413.415, 35.556, NULL, 0),
(@PATH, 8, -1416.502, 1420.439, 35.556, NULL, 0),
(@PATH, 9, -1435.352, 1423.688, 35.556, NULL, 0),
(@PATH, 10, -1448.543, 1425.035, 35.556, NULL, 0),
(@PATH, 11, -1465.648, 1425.059, 35.556, NULL, 0),
(@PATH, 12, -1489.217, 1426.361, 35.556, NULL, 0);

UPDATE `creature` SET `position_x`=-1489.217, `position_y`=1426.361, `position_z`=35.556, `orientation`=4.39184, `wander_distance`=0, `MovementType`=2 WHERE `guid`=376364;
UPDATE `creature_addon` SET `PathId`=@PATH WHERE `guid`=376364;

-- Gilnean Crow on the bridge west of Merchant Square: one crow per spot, a single Crow Scatter Trap
DELETE FROM `creature` WHERE `guid` IN (376473,376474,376475,376476,376477,376601,376604,376606,376607,376629,376630,376631,376633,376634,376635,376636,376637,376648,376649,376650,376651,376652);
DELETE FROM `creature_addon` WHERE `guid` IN (376473,376474,376475,376476,376477,376601,376604,376606,376607,376629,376630,376631,376633,376634,376635,376636,376637,376648,376649,376650,376651,376652);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-376473,-376474,-376475,-376476,-376477,-376601,-376604,-376606,-376607,-376629,-376630,-376631,-376633,-376634,-376635,-376636,-376637,-376648,-376649,-376650,-376651,-376652) AND `source_type`=0;
DELETE FROM `gameobject` WHERE `guid` IN (235552,235557,235558);

-- Gilnean Crow on the bridge: scatter when pinged by the Crow Scatter Trap, back 30 s later
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-376469,-376470,-376471,-376472,-376573,-376576,-376603,-376605,-376632) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-376469,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026008,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026008'),
(-376469,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376469,0,2,0,58,0,100,0,3,5026008,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026008 Ended - Despawn (Respawn 30 s)'),
(-376470,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026009,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026009'),
(-376470,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376470,0,2,0,58,0,100,0,3,5026009,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026009 Ended - Despawn (Respawn 30 s)'),
(-376471,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026010,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026010'),
(-376471,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376471,0,2,0,58,0,100,0,3,5026010,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026010 Ended - Despawn (Respawn 30 s)'),
(-376472,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026011,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026011'),
(-376472,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376472,0,2,0,58,0,100,0,3,5026011,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026011 Ended - Despawn (Respawn 30 s)'),
(-376573,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026012,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026012'),
(-376573,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376573,0,2,0,58,0,100,0,3,5026012,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026012 Ended - Despawn (Respawn 30 s)'),
(-376576,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026013,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026013'),
(-376576,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376576,0,2,0,58,0,100,0,3,5026013,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026013 Ended - Despawn (Respawn 30 s)'),
(-376603,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026014,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026014'),
(-376603,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376603,0,2,0,58,0,100,0,3,5026014,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026014 Ended - Despawn (Respawn 30 s)'),
(-376605,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026015,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026015'),
(-376605,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376605,0,2,0,58,0,100,0,3,5026015,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026015 Ended - Despawn (Respawn 30 s)'),
(-376632,0,0,0,8,0,100,0,93275,0,0,0,0,53,0,5026016,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Start Waypoint Path 5026016'),
(-376632,0,1,0,8,0,100,0,93275,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Spellhit ''Ping Gilnean Crow'' - Remove Stand State Sit'),
(-376632,0,2,0,58,0,100,0,3,5026016,0,0,0,41,1,30,0,0,0,0,1,0,0,0,0,0,0,0,0,'Gilnean Crow - On Waypoint 3 of Path 5026016 Ended - Despawn (Respawn 30 s)');

-- Gilnean Crow on the bridge: scatter flights
DELETE FROM `waypoint_path` WHERE `PathId` BETWEEN 5026008 AND 5026016;
INSERT INTO `waypoint_path` (`PathId`,`MoveType`,`Flags`,`Velocity`,`Comment`) VALUES
(5026008,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026009,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026010,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026011,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026012,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026013,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026014,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026015,1,0,NULL,'Gilnean Crow - Market Square bridge'),
(5026016,1,0,NULL,'Gilnean Crow - Market Square bridge');

DELETE FROM `waypoint_path_node` WHERE `PathId` BETWEEN 5026008 AND 5026016;
INSERT INTO `waypoint_path_node` (`PathId`,`NodeId`,`PositionX`,`PositionY`,`PositionZ`,`Orientation`,`Delay`) VALUES
(5026008,1,-1620.6810,1317.1345,25.9589,NULL,0),
(5026008,2,-1616.1359,1311.7178,33.0300,NULL,0),
(5026008,3,-1626.3057,1311.4620,34.0399,NULL,0),
(5026009,1,-1612.0432,1308.0608,25.5897,NULL,0),
(5026009,2,-1610.0942,1314.8579,32.6607,NULL,0),
(5026009,3,-1626.3888,1312.5868,34.1352,NULL,0),
(5026010,1,-1615.6330,1304.7509,26.3522,NULL,0),
(5026010,2,-1614.0424,1311.6406,33.4233,NULL,0),
(5026010,3,-1626.2814,1311.4043,34.3075,NULL,0),
(5026011,1,-1620.4708,1314.8779,25.9962,NULL,0),
(5026011,2,-1616.0209,1309.3827,33.0672,NULL,0),
(5026011,3,-1626.3402,1310.3156,34.0672,NULL,0),
(5026012,1,-1622.1329,1306.1013,26.6632,NULL,0),
(5026012,2,-1616.4124,1310.2576,33.7342,NULL,0),
(5026012,3,-1626.2863,1310.7324,34.3780,NULL,0),
(5026013,1,-1612.4999,1317.9827,26.5722,NULL,0),
(5026013,2,-1619.1445,1315.5642,33.6433,NULL,0),
(5026013,3,-1636.2535,1311.2118,35.0279,NULL,0),
(5026014,1,-1609.4090,1310.2886,26.4030,NULL,0),
(5026014,2,-1616.1711,1312.3560,33.4741,NULL,0),
(5026014,3,-1626.2994,1311.7789,34.2577,NULL,0),
(5026015,1,-1614.4396,1315.4319,26.9290,NULL,0),
(5026015,2,-1620.9485,1312.6690,34.0001,NULL,0),
(5026015,3,-1636.2535,1311.2118,35.0279,NULL,0),
(5026016,1,-1622.3785,1314.3230,26.7719,NULL,0),
(5026016,2,-1620.4294,1307.5259,33.8430,NULL,0),
(5026016,3,-1636.2535,1311.2118,35.0279,NULL,0);
