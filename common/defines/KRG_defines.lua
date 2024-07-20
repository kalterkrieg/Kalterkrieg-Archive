-- Kalterkrieg normal defines values

NDefines.NGame.START_DATE = "1948.1.1.12" 											-- Vanilla is 1936.1.1.12
NDefines.NGame.END_DATE = "1962.1.1.1"												-- Vanilla is 1949.1.1.1
NDefines.NGame.HANDS_OFF_START_TAG = "MOR"											-- Vanilla is "URG"

NDefines.NGraphics.POLITICAL_GRID_SMALL_BOX_LIMIT = 8								-- Vanilla is 6

NDefines.NTechnology.MAX_SUBTECHS = 4                                               -- Vanilla is 3

NDefines.NBuildings.MAX_SHARED_SLOTS = 75											-- Vanilla is 25
NDefines.NBuildings.MAX_BUILDING_LEVELS = 75										-- Vanilla is 15		

NDefines.NMilitary.MAX_DIVISION_SUPPORT_WIDTH = 2									-- Vanilla is 1

NDefines.NPolitics.BASE_POLITICAL_POWER_INCREASE = 1.5                               -- Vanilla is 2.0
NDefines.NCountry.BASE_STABILITY_PARTY_POPULARITY_FACTOR = 0 	                     -- Vanilla is 0.15
NDefines.NCountry.MIN_STABILITY = -1.0										-- Vanilla is 0.0

NDefines.NSupply.MAX_RAILWAY_LEVEL = 8 -- Vanilla = 5 - update railway texture as well, each frame corresponds to a level

-- Volunteers
NDefines.NAI.SEND_VOLUNTEER_EVAL_BASE_DISTANCE = 1000.0  					-- Vanilla is 175.0
NDefines.NAI.SEND_VOLUNTEER_EVAL_CONTAINMENT_FACTOR = 0						-- Vanilla is 0.1
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 0						-- Vanilla is 30
NDefines.NDiplomacy.VOLUNTEERS_PER_TARGET_PROVINCE = 0.03					-- Vanilla is 0.05
NDefines.NDiplomacy.VOLUNTEERS_PER_COUNTRY_ARMY = 0.035                     -- Vanilla is 0.05
NDefines.NDiplomacy.VOLUNTEERS_TRANSFER_SPEED = 10                          -- Vanilla is 14
NDefines.NDiplomacy.MAX_VOLUNTEER_ARMY_FRACTION = 0.4                       -- Vanilla is 0.25

-- NDefines.NCountry.NUCLEAR_BOMB_DROP_WAR_SUPPORT_EFFECT_MAX_INFRA = 1.0 -- Reduce enemy national war support on nuking a province, the value scales with infrastructure up to this number
-- NDefines.NCountry.NUCLEAR_BOMB_DROP_WAR_SUPPORT_EFFECT_MAX_VP = 0
-- NDefines.NMilitary.NUKE_MIN_DAMAGE_PERCENT = 0.9					-- Minimum damage from nukes as a percentage of current strength/organisation
-- NDefines.NMilitary.NUKE_MAX_DAMAGE_PERCENT = 1.0
NDefines.NBuildings.INFRASTRUCTURE_RESOURCE_BONUS = 0.1                     -- Vanilla is 0.1
NDefines.NBuildings.SUPPLY_ROUTE_RESOURCE_BONUS = 0.1                     -- Vanilla is 0.1

NDefines.NProduction.INFRA_MAX_CONSTRUCTION_COST_EFFECT = 1 		-- Vanilla is 1

--- NDefines.NGame.MAX_EFFECT_ITERATION = 20000                                 -- Vanilla is 100. Commented and only used for testing by Duo.