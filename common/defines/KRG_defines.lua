-- Kalterkrieg normal defines values

NDefines.NGame.START_DATE = "1948.1.1.12" 											-- Vanilla is 1936.1.1.12
NDefines.NGame.END_DATE = "1962.1.1.1"												-- Vanilla is 1949.1.1.1
NDefines.NGame.HANDS_OFF_START_TAG = "MOR"											-- Vanilla is "URG"

NDefines.NGraphics.POLITICAL_GRID_SMALL_BOX_LIMIT = 6								-- Vanilla is 6

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
NDefines.INFRASTRUCTURE_MOVEMENT_SPEED_IMPACT = -0.025              -- Vanilla is 0.05

--- NDefines.NGame.MAX_EFFECT_ITERATION = 20000                                 -- Vanilla is 100. Commented and only used for testing by Duo.




-- Tech Changes
NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 250                                  -- Vanilla is 100
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.55                     -- Vanilla is 0.45     -- This means agility is slightly more important in air combat.

NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR=0.1                 -- Vanilla is 0.27    
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_INFRA_DAMAGE_SPILL_FACTOR=0.0006        -- Vanilla is 0.0016
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR=0.010               -- Vanilla is 0.040
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_RAILWAY_DAMAGE_SPILL_FACTOR=0.002       -- Vanilla is 0.006
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_DIRECT_DISRUPTION_DAMAGE_FACTOR=0.015   -- Vanilla is 0.01, higher because logi strike should do less damage, but hurt supply more directly
-- all of this is to nerf logi strike (which is usually OP)



NDefines.NAir.ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR = 0.25                 -- Vanilla is 1.0
NDefines.NMilitary.ANTI_AIR_TARGETTING_TO_CHANCE = 0.05                         -- Vanilla is 0.07
-- ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR * air_attack * ANTI_AIR_TARGETTING_TO_CHANCE = casreduction
-- Air attack needed in a division for maximum CAS damage reduction is now 60. This means you need more than just support AA.



NDefines.NMilitary.ARMOR_VS_AVERAGE = 0.25                                      -- Vanilla is 0.4	  -- this effectively removes space marines
NDefines.NMilitary.PEN_VS_AVERAGE = 0.3                                         -- Vanilla is 0.4




-- Peace Conferences
NDefines.NDiplomacy.PEACE_SCORE_SCALE_FACTOR = 2.15							-- Vanilla is 1.35
NDefines.NDiplomacy.PEACE_SCORE_DISTRIBUTION = { 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 0.2 } -- Vanilla is 0.2 in the first five turns
NDefines.NDiplomacy.PEACE_CONTEST_REFUND_FACTOR = { 1.0, 0.8, 0.5, 0.2 } 	-- Vanilla is 1.0, 0.92, 0.84, 0.76
NDefines.NAI.PEACE_AI_EVALUATE_FOR_NON_ALLIES = true						-- Vanilla is false
NDefines.NAI.PEACE_AI_EVALUATE_OTHER_ALWAYS = true							-- Vanilla is false

NDefines.NDiplomacy.PEACE_COST_FACTOR_CAPITAL_SHIP_IC = 0.02				-- Vanilla is 0.005
NDefines.NDiplomacy.PEACE_COST_FACTOR_SCREENING_SHIP_IC = 0.02				-- Vanilla is 0.005

-- AI defines



-- Combat AI
NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3			-- Vanilla is 0.5
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3	-- Vanilla is 0.5
NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 4						-- Vanilla is 5
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 1.1							-- Vanilla is 0.5

NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = 0                                      -- Vanilla is 0.4
NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = -10                                        -- Vanilla is -6
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = -10                                           -- Vanilla is -6
NDefines.NSupply.AI_FRONT_MINIMUM_UNITS_PER_PROVINCE_FOR_SUPPLY_CALCULATIONS = 0    -- Vanilla is 1
NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 5                                       -- Vanilla is 30
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 5                                        -- Vanilla is 3
NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 10                                       -- Vanilla is 4
NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 1000                          -- Vanilla is 155
NDefines.NAI.MAX_THREAT_FOR_FIRST_YEAR_CIVILIAN_MODE = 30					        -- Vanilla is 60
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.01                             -- Vanilla is 0.5
NDefines.NSupply.AI_FRONT_DIVISIONS_PER_SUPPLY_POINT = 0.7							-- Vanilla is 1.0
NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.25								-- Vanilla is 0.1


-- General AI
NDefines.NAI.MIN_AI_SCORE_TO_TRADE_LAW_OVERRIDE_HARD_CODED_SCORE = 0.0		-- Vanilla is 1000.0
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 1.6					-- Vanilla is 2 - needed to make AI research naval techs with XP
NDefines.NAI.RESEARCH_WITH_XP_AI_WEIGHT_MULT = 4.0							-- Vanilla is 1.2 - bigger prio for naval techs if can spend XP

NDefines.NAI.FRONT_EVAL_UNIT_ACCURACY = 1.5									-- Vanilla is 1.0
NDefines.NAI.MIN_FORCE_RATIO_TO_PROTECT = 0									-- Vanilla is 0.5
NDefines.NAI.FRONT_EVAL_PERCENT_TO_ASSIST_ALLY_FRONT = 0					-- Vanilla is 0.5

NDefines.NAI.NUM_SILOS_PER_CIVILIAN_FACTORIES = 0							-- Vanilla is 0.0025
NDefines.NAI.NUM_SILOS_PER_MILITARY_FACTORIES = 0							-- Vanilla is 0.012
NDefines.NAI.NUM_SILOS_PER_DOCKYARDS = 0									-- Vanilla is 0.02

NDefines.NAI.CALL_ALLY_NEUTRAL_DESIRE = 75									-- Vanilla is 25
NDefines.NAI.JOIN_ALLY_NEUTRAL_DESIRE = 75									-- Vanilla is 25

NDefines.NAI.FASCISTS_BEFRIEND_FASCISTS = 0									-- Vanilla is 10
NDefines.NAI.FASCISTS_ALLY_FASCISTS = 0										-- Vanilla is 0
NDefines.NAI.FASCISTS_ANTAGONIZE_FASCISTS = 0								-- Vanilla is -10

NDefines.NAI.FASCISTS_BEFRIEND_DEMOCRACIES = 0								-- Vanilla is -25
NDefines.NAI.FASCISTS_ALLY_DEMOCRACIES = 0									-- Vanilla is -100
NDefines.NAI.FASCISTS_ANTAGONIZE_DEMOCRACIES = 0							-- Vanilla is 100

NDefines.NAI.FASCISTS_BEFRIEND_COMMUNISTS = -25								-- Vanilla is -25
NDefines.NAI.FASCISTS_ALLY_COMMUNISTS = -100								-- Vanilla is -100
NDefines.NAI.FASCISTS_ANTAGONIZE_COMMUNISTS = 10							-- Vanilla is 100

NDefines.NAI.DEMOCRACIES_BEFRIEND_FASCISTS = 0								-- Vanilla is -25
NDefines.NAI.DEMOCRACIES_ALLY_FASCISTS = 0									-- Vanilla is -50
NDefines.NAI.DEMOCRACIES_ANTAGONIZE_FASCISTS = 0							-- Vanilla is 0

NDefines.NAI.DEMOCRACIES_BEFRIEND_DEMOCRACIES = 0							-- Vanilla is 0
NDefines.NAI.DEMOCRACIES_ALLY_DEMOCRACIES = 0								-- Vanilla is 0
NDefines.NAI.DEMOCRACIES_ANTAGONIZE_DEMOCRACIES = 0							-- Vanilla is -25

NDefines.NAI.DEMOCRACIES_BEFRIEND_COMMUNISTS = 0							-- Vanilla is -25
NDefines.NAI.DEMOCRACIES_ALLY_COMMUNISTS = 0								-- Vanilla is -50
NDefines.NAI.DEMOCRACIES_ANTAGONIZE_COMMUNISTS = 0							-- Vanilla is 0

NDefines.NAI.COMMUNISTS_BEFRIEND_FASCISTS = -25								-- Vanilla is -25
NDefines.NAI.COMMUNISTS_ALLY_FASCISTS = -100								-- Vanilla is -100
NDefines.NAI.COMMUNISTS_ANTAGONIZE_FASCISTS = 10							-- Vanilla is 100

NDefines.NAI.COMMUNISTS_BEFRIEND_DEMOCRACIES = 0							-- Vanilla is -25
NDefines.NAI.COMMUNISTS_ALLY_DEMOCRACIES = 0								-- Vanilla is -50
NDefines.NAI.COMMUNISTS_ANTAGONIZE_DEMOCRACIES = 0							-- Vanilla is 10

NDefines.NAI.COMMUNISTS_BEFRIEND_COMMUNISTS = 50							-- Vanilla is 25
NDefines.NAI.COMMUNISTS_ALLY_COMMUNISTS = 25								-- Vanilla is 0
NDefines.NAI.COMMUNISTS_ANTAGONIZE_COMMUNISTS = -25							-- Vanilla is -10


-- Naval AI
NDefines.NAI.MAX_FULLY_TRAINED_SHIP_RATIO_FOR_TRAINING = 0.99				-- Vanilla is 0.7
NDefines.NAI.REFIT_SHIP_PERCENTAGE_OF_FORCES = 0.25							-- Vanilla is 0.1

NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 1.5					-- Vanilla is 1 - AI more eagerly upgrades its planes, they are much more important than doctrines
