/// @description Initialize the example object
#region Scene setup
enum VI_SCENE {
	YAKITORI,
	MEDIEVAL,
	BRIDGE,
	SANDBOX,
	
	ENUM_END
};

/// @function				LoadScene(scene);
/// @param {Real} scene		The scene to load.
/// @description			Helper function for demo. Loads a scene (duh).
LoadScene = function(scene) {
	// Clear all objects
	if (VISystemExists(system)) {
		system.Cleanup();
		delete system;
	}
	
	// Delete particle system
	if (part_system_exists(PS)) part_system_destroy(PS);
	
	// Delete all objects on the instances layer
	layer_destroy_instances("Instances");
	
	// Update pallete, texts and spawn in new objects
	switch (scene) {
		case VI_SCENE.YAKITORI:
			#region Yakitori
			// Update palette
			palette = {
				dark : $b57a8e,
				medium : $b784b7,
				bright : $b393e4,
				highlight : $a6a5ee,
				text : $ffffff
			};
			
			// Update texts
			sceneName = "Yakitori";
			textboxInfo = ">You can connect objects to create interesting scenes.\n>By hanging the lanterns onto tiny ropes we can give them some rotation.\n\n>Dynamic wind patterns may be created by adding multiple forcefields.\n\n>The draw order is the order in which you add objects to your system.";
			
			// Spawn new objects
			// Create a new VI system
			// You can create multiple systems with different physic properties
			// Separate systems don't interact with each other
			system = new VISystem(0.01, .1);
			
			// Create white cloth
			var cloth2 = new VIClothColored(146, 40, 30, 60, 3, 7, $bbbbbb, 1, -1);
			cloth2.LockUpperRow();
			system.AddObject(cloth2);
			var cloth1 = new VIClothColored(114, 40, 30, 60, 3, 7, $dddddd, 1, -1);
			cloth1.LockUpperRow();
			system.AddObject(cloth1);
			var cloth3 = new VIClothColored(178, 40, 30, 60, 3, 7, $dddddd, 1, -1);
			cloth3.LockUpperRow();
			system.AddObject(cloth3);
			
			// Create big rope
			var ropeLong = new VIRopeColored(100, 40, 90, 11, $28467c, 2, 1, -1);
			ropeLong.LockFirstPoint();
			system.AddObject(ropeLong);
			var connector1 = new VIConnector(220, 40);
			connector1.AddChild(VI_PC_TYPE.POINT, ropeLong.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
			system.AddObject(connector1);
			
			// Create lantern instances
			var lantern1 = instance_create_layer(0, 0, "Instances", oDecoration, {sprite_index : sLantern, image_index : 0, image_speed : 0});
			var lantern2 = instance_create_layer(0, 0, "Instances", oDecoration, {sprite_index : sLantern, image_index : 1, image_speed : 0});
			var lantern3 = instance_create_layer(0, 0, "Instances", oDecoration, {sprite_index : sLantern, image_index : 2, image_speed : 0});
			var lantern4 = instance_create_layer(0, 0, "Instances", oDecoration, {sprite_index : sLantern, image_index : 3, image_speed : 0});
			
			// Create tiny ropes and attach them onto the big rope
			var rl1 = new VIRopeColored(0, 0, 2, 2, $28467c, 1, 1, -1);
			system.AddObject(rl1);
			var rl2 = new VIRopeColored(0, 0, 2, 2, $28467c, 1, 1, -1);
			system.AddObject(rl2);
			var rl3 = new VIRopeColored(0, 0, 2, 2, $28467c, 1, 1, -1);
			system.AddObject(rl3);
			var rl4 = new VIRopeColored(0, 0, 2, 2, $28467c, 1, 1, -1);
			system.AddObject(rl4);
			var crr1 = new VIConnector(0, 0);
			
			crr1.SetParent(VI_PC_TYPE.POINT,ropeLong.GetPointByIndex(2));
			crr1.AddChild(VI_PC_TYPE.POINT, rl1.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
			system.AddObject(crr1);
			var crr2 = new VIConnector(0, 0);
			crr2.SetParent(VI_PC_TYPE.POINT,ropeLong.GetPointByIndex(4));
			crr2.AddChild(VI_PC_TYPE.POINT, rl2.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
			system.AddObject(crr2);
			var crr3 = new VIConnector(0, 0);
			crr3.SetParent(VI_PC_TYPE.POINT,ropeLong.GetPointByIndex(6));
			crr3.AddChild(VI_PC_TYPE.POINT, rl3.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
			system.AddObject(crr3);
			var crr4 = new VIConnector(0, 0);
			crr4.SetParent(VI_PC_TYPE.POINT,ropeLong.GetPointByIndex(8));
			crr4.AddChild(VI_PC_TYPE.POINT, rl4.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
			system.AddObject(crr4);
			
			// Attach the lanterns onto the tiny ropes
			var crl1 = new VIConnector(0, 0);
			crl1.SetParent(VI_PC_TYPE.POINT,rl1.GetPointByKeyword(VI_POINT_INDEX.LAST));
			crl1.AddChild(VI_PC_TYPE.INSTANCE, lantern1, true);
			system.AddObject(crl1);
			var crl2 = new VIConnector(0, 0);
			crl2.SetParent(VI_PC_TYPE.POINT,rl2.GetPointByKeyword(VI_POINT_INDEX.LAST));
			crl2.AddChild(VI_PC_TYPE.INSTANCE, lantern2, true);
			system.AddObject(crl2);
			var crl3 = new VIConnector(0, 0);
			crl3.SetParent(VI_PC_TYPE.POINT,rl3.GetPointByKeyword(VI_POINT_INDEX.LAST));
			crl3.AddChild(VI_PC_TYPE.INSTANCE, lantern3, true);
			system.AddObject(crl3);
			var crl4 = new VIConnector(0, 0);
			crl4.SetParent(VI_PC_TYPE.POINT,rl4.GetPointByKeyword(VI_POINT_INDEX.LAST));
			crl4.AddChild(VI_PC_TYPE.INSTANCE, lantern4, true);
			system.AddObject(crl4);
			
			// Add wind forcefields
			var forceField1 = new VIForcefieldWind(160, 80, 80, 15, .02, 4);
			system.AddObject(forceField1);
			var forceField2 = new VIForcefieldWind(190, 100, 40, 120, .02, 1);
			system.AddObject(forceField2);
			
			// Add particles
			PS = part_system_create(ParticleSystem1);
			part_system_automatic_draw(PS, false);
			#endregion
			break;
		case VI_SCENE.MEDIEVAL:
			#region Medieval
			// Update palette
			palette = {
				dark : $a68d74,
				medium : $c1a58b,
				bright : $ddc2a1,
				highlight : $e8e8c6,
				text : $ffffff
			};
			
			// Update texts
			sceneName = "Medieval";
			textboxInfo = "> You can create ropes and cloth with textures on them.\n\n> Change the mass of a point to add more realism to objects.\n> Increase the stiffness of an object to avoid stretching of textures.\n\n> Inverted box colliders make great room boundaries.";
			
			// Wall deco
			instance_create_layer(120, 80, "Instances", oDecoration, {sprite_index : sWall, image_index : 0, image_speed : 0});
			
			// Spawn new objects
			system = new VISystem(0.01, .1);
			
			// Create chains
			var chain1 = new VIRopeTextured(40.5, 20, (sprite_get_height(sChainPart) - sprite_get_yoffset(sChainPart)) * 4, 5, sChainPart, 1, -1);
			chain1.LockFirstPoint();
			system.AddObject(chain1);
			
			var chain2 = new VIRopeTextured(90.5, 20, (sprite_get_height(sChainPart) - sprite_get_yoffset(sChainPart)) * 4, 5, sChainPart, 6, -1);
			chain2.LockFirstPoint();
			system.AddObject(chain2);
			chain2.GetPointByKeyword(VI_POINT_INDEX.LAST).mass = 20;
			
			// Create ball and connect it to the chain
			var ball = instance_create_layer(0, 0, "Instances", oDecoration, {sprite_index : sSpikeball, image_index : 0, image_speed : 0});
			var cbc = new VIConnector(0, 0);
			cbc.SetParent(VI_PC_TYPE.POINT,chain2.GetPointByKeyword(VI_POINT_INDEX.LAST));
			cbc.AddChild(VI_PC_TYPE.INSTANCE, ball, true);
			system.AddObject(cbc);
			
			// Create lantern and connect it to the chain
			var lantern = instance_create_layer(0, 0, "Instances", oLantern, {image_index : 0, image_speed : 0});
			var clc = new VIConnector(0, 0);
			clc.SetParent(VI_PC_TYPE.POINT,chain1.GetPointByKeyword(VI_POINT_INDEX.LAST));
			clc.AddChild(VI_PC_TYPE.INSTANCE, lantern, true);
			system.AddObject(clc);
			
			// Create boxes
			var box1 = new VIBoxTextured(180, 60, sprite_get_width(sBox), sprite_get_height(sBox), sBox, 1);
			system.AddObject(box1);
			var box2 = new VIBoxTextured(240, 80, sprite_get_width(sBox), sprite_get_height(sBox), sBox, 1);
			system.AddObject(box2);
			
			// Create banner
			instance_create_layer(138, 20, "Instances", oDecoration2, {sprite_index : sBannerStand, image_index : 0, image_speed : 0});
			var banner = new VIClothTextured(141, 24, 20, 44, 3, 5, sBanner, 1, -1);
			banner.LockUpperRow();
			system.AddObject(banner);
			
			// Create collider
			var roomBounds = new VIColliderBox(20, 10, 260, 100);
			roomBounds.SetVisible(true);
			roomBounds.SetInverted(true);
			system.AddObject(roomBounds);
			
			// Create wind forcefields
			var forceField1 = new VIForcefieldWind(65, 70, 90, 5, .02, 2.5);
			system.AddObject(forceField1);
			var forceField2 = new VIForcefieldWind(165, 65, 25, 130, .05, 3);
			system.AddObject(forceField2);
			
			// Add particles
			PS = part_system_create();
			part_system_automatic_draw(PS, false);
			#endregion
			break;
		case VI_SCENE.BRIDGE:
			#region Bridge
			// Update palette
			palette = {
				dark : $73ad7f,
				medium : $81c1aa,
				bright : $aadfdb,
				highlight : $bbf0f5,
				text : $ffffff
			};
			
			// Update texts
			sceneName = "Bridge";
			textboxInfo = "> Spawn destructor force fields to manually break structures.\n\n> (Press LMB to spawn a destructor field at the mouse position.)";
			
			// Spawn new objects
			system = new VISystem(0.01, .1);
			
			// Create bridge
			var bridgeL = instance_create_layer(room_width * .25, 70, "Instances", oDecoration, {sprite_index : sBridgepost, image_index : 0, image_speed : 0});
			var bridgeL = instance_create_layer(room_width * .75, 70, "Instances", oDecoration, {sprite_index : sBridgepost, image_index : 1, image_speed : 0});
			var ropeLong = new VIRopeColored(room_width * .25 + 4, 66, room_width * .4, 11, $28467c, 2, 2, -1);
			ropeLong.LockFirstPoint();
			system.AddObject(ropeLong);
			
			// You can also lock points like this instead of using connectors
			var lastPoint = ropeLong.GetPointByKeyword(VI_POINT_INDEX.LAST);
			lastPoint.position.current.x = room_width * .75 - 4;
			lastPoint.position.current.y = 66;
			lastPoint.mass = 0;
			//var connector1 = new VIConnector(room_width * .75 - 4, 66);
			//connector1.AddChild(VI_PC_TYPE.POINT, ropeLong.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
			//system.AddObject(connector1);
			#endregion
			break;
		case VI_SCENE.SANDBOX:
			#region Sandbox
			// Update palette
			palette = {
				dark : $8c82b5,
				medium : $91a0de,
				bright : $9b98e5,
				highlight : $b2cdff,
				text : $ffffff
			};
			
			// Update texts
			sceneName = "Sandbox";
			textboxInfo = "> Attach objects to a connector to drag them around.\n\n> By giving sticks a lower tearThreshold they can\n  be broken by overstretching them.\n\n> You can add sprite colliders for custom shapes.";
			
			// Spawn new objects
			system = new VISystem(0.01, .1);
			
			// Create chains
			var chain1 = new VIRopeTextured(60.5, 5, (sprite_get_height(sChainPart) - sprite_get_yoffset(sChainPart)) * 9, 10, sChainPart, 1, 2);
			chain1.LockFirstPoint();
			system.AddObject(chain1);
			var connector1 = new VIConnector(0, 50);
			connector1.AddChild(VI_PC_TYPE.POINT, chain1.GetPointByKeyword(VI_POINT_INDEX.LAST), false);
			system.AddObject(connector1);
			
			var chain2 = new VIRopeTextured(65.5, 5, (sprite_get_height(sChainPart) - sprite_get_yoffset(sChainPart)) * 5, 6, sChainPart, 1, 2);
			chain2.LockFirstPoint();
			system.AddObject(chain2);
			chain2.GetPointByKeyword(VI_POINT_INDEX.LAST).mass = 20;
			
			// Create ball and connect it to the chain
			var ball = instance_create_layer(0, 0, "Instances", oDecoration, {sprite_index : sSpikeball, image_index : 0, image_speed : 0});
			var cbc = new VIConnector(0, 0);
			cbc.SetParent(VI_PC_TYPE.POINT,chain2.GetPointByKeyword(VI_POINT_INDEX.LAST));
			cbc.AddChild(VI_PC_TYPE.INSTANCE, ball, true);
			system.AddObject(cbc);
			
			// Create ropes
			var rope1 = new VIRopeColored(250, 5, 80, 8, c_maroon, 1, 1, 2);
			rope1.LockFirstPoint();
			system.AddObject(rope1);
			var rope2 = new VIRopeColored(255, 5, 100, 8, c_maroon, 2, 1, 2);
			rope2.LockFirstPoint();
			system.AddObject(rope2);
			var rope3 = new VIRopeColored(260, 5, 50, 8, c_maroon, 4, 1, 2);
			rope3.LockFirstPoint();
			system.AddObject(rope3);
			
			// Create dragable rope
			var rope4 = new VIRopeColored(200, 20, 60, 10, c_white, 2, 1, -1);
			system.AddObject(rope4);
			var dragObject1 = instance_create_layer(200, 20, "Instances", oDrag);
			var connectorRD = new VIConnector(0, 0);
			connectorRD.SetParent(VI_PC_TYPE.INSTANCE, dragObject1);
			connectorRD.AddChild(VI_PC_TYPE.POINT, rope4.GetPointByKeyword(VI_POINT_INDEX.FIRST), false);
			system.AddObject(connectorRD);
			
			// Create wind forcefield
			var forceField1 = new VIForcefieldWind(260, 60, 40, 15, .02, 4);
			system.AddObject(forceField1);
			
			// Create boxes
			var box1 = new VIBoxTextured(100, 10, sprite_get_width(sBox), sprite_get_height(sBox), sBox, 1);
			system.AddObject(box1);
			var box2 = new VIBoxTextured(150, 20, sprite_get_width(sBox), sprite_get_height(sBox), sBox, 1);
			system.AddObject(box2);
			
			// Create colliders
			spriteCollider1 = new VIColliderSprite(140, 90, sCollider);	
			system.AddObject(spriteCollider1);
			
			spriteCollider2 = new VIColliderSprite(80, 50, sCollider2);	
			system.AddObject(spriteCollider2);
			var dragObject2 = instance_create_layer(80, 50, "Instances", oDrag);
			var connectorCD = new VIConnector(0, 0);
			connectorCD.SetParent(VI_PC_TYPE.INSTANCE, dragObject2);
			connectorCD.AddChild(VI_PC_TYPE.COLLIDER, spriteCollider2, false);
			system.AddObject(connectorCD);
			#endregion
			break;
	}
	
	// Update background colors
	var bgId1 = layer_background_get_id(layer_get_id("BG_Color"));
	layer_background_blend(bgId1, palette.dark);
	var bgId2 = layer_background_get_id(layer_get_id("BG_Shape"));
	layer_background_blend(bgId2, palette.medium);
	
	// Set scene ID
	sceneId = scene;
}
#endregion

// Set up system variables
PS = -1;
surface = -1;
palette = {
	dark : c_fuchsia,
	medium : c_fuchsia,
	bright : c_fuchsia,
	highlight : c_fuchsia,
	text : c_fuchsia
};
sceneName = "";
sceneId = -1;
textboxInfo = "";

system = {};

// Load first scene
LoadScene(VI_SCENE.YAKITORI);
