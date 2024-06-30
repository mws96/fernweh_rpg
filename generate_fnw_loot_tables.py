import json
import sys


ore_blocks = {
  'amethyst_cluster': { 'drop_rate': 0.06, 'drop_item': 'amethyst_shard' },
  'coal_ore': { 'drop_rate': 0.09, 'drop_item': 'coal' },
  'copper_ore': { 'drop_rate': 0.08, 'drop_item': 'raw_copper' },
  'deepslate_coal_ore': { 'drop_rate': 0.09, 'drop_item': 'coal' },
  'deepslate_copper_ore': { 'drop_rate': 0.08, 'drop_item': 'raw_copper' },
  'deepslate_diamond_ore': { 'drop_rate': 0.01, 'drop_item': 'diamond' },
  'deepslate_emerald_ore': { 'drop_rate': 0.02, 'drop_item': 'emerald' },
  'deepslate_gold_ore': { 'drop_rate': 0.05, 'drop_item': 'raw_gold' },
  'deepslate_iron_ore': { 'drop_rate': 0.07, 'drop_item': 'raw_iron' },
  'deepslate_lapis_ore': { 'drop_rate': 0.03, 'drop_item': 'lapis_lazuli' },
  'deepslate_redstone_ore': { 'drop_rate': 0.04, 'drop_item': 'redstone' },
  'diamond_ore': { 'drop_rate': 0.01, 'drop_item': 'diamond' },
  'emerald_ore': { 'drop_rate': 0.02, 'drop_item': 'emerald' },
  'gold_ore': { 'drop_rate': 0.05, 'drop_item': 'raw_gold' },
  'iron_ore': { 'drop_rate': 0.07, 'drop_item': 'raw_iron' },
  'lapis_ore': { 'drop_rate': 0.03, 'drop_item': 'lapis_lazuli' },
  'nether_gold_ore': { 'drop_rate': 0.05, 'drop_item': 'gold_nugget' },
  'nether_quartz_ore': { 'drop_rate': 0.10, 'drop_item': 'quartz' },
  'redstone_ore': { 'drop_rate': 0.04, 'drop_item': 'redstone' },
}

log_blocks = {
  'acacia_log': { 'drop_rate': 0.05 },
  'birch_log': { 'drop_rate': 0.05 },
  'cherry_log': { 'drop_rate': 0.05 },
  'dark_oak_log': { 'drop_rate': 0.05 },
  'jungle_log': { 'drop_rate': 0.05 },
  'mangrove_log': { 'drop_rate': 0.05 },
  'mangrove_roots': { 'drop_rate': 0.05 },
  'oak_log': { 'drop_rate': 0.05 },
  'spruce_log': { 'drop_rate': 0.05 },
}

dig_blocks = {
  'gravel': { 'drop_rate': 0.07 },
  'sand': { 'drop_rate': 0.07 },
  'red_sand': { 'drop_rate': 0.05 },
  'clay': { 'drop_rate': 0.03, 'drop_item': 'clay_ball' },
  'soul_sand': { 'drop_rate': 0.04 },
  'soul_soil': { 'drop_rate': 0.04 },
}

hostile_mobs = {
  'blaze': [
    { 'drop_rate': 0.04, 'drop_item': 'blaze_rod' }
  ],
  'bogged': [
    { 'drop_rate': 0.03, 'drop_item': 'brown_mushroom' },
    { 'drop_rate': 0.03, 'drop_item': 'red_mushroom' },
    { 'drop_rate': 0.005, 'drop_item': 'red_mushroom_block' }
  ],
  'breeze': [
    { 'drop_rate': 0.04, 'drop_item': 'breeze_rod' }
  ],
  'cave_spider': [
    { 'drop_rate': 0.08, 'drop_item': 'cobweb' }
  ],
  'creeper': [
    { 'drop_rate': 0.05, 'drop_item': 'gunpowder' }
  ],
  'drowned': [
    { 'drop_rate': 0.04, 'drop_item': 'rotten_flesh' },
    { 'drop_rate': 0.006, 'drop_item': 'nautilus_shell' }
  ],
  'elder_guardian': [
    { 'drop_rate': 0.04, 'drop_item': 'sponge' }
  ],
  'enderman': [
    { 'drop_rate': 0.01, 'drop_item': 'ender_chest' }
  ],
  'evoker': [
    { 'drop_rate': 0.05, 'drop_item': 'emerald' }
  ],
  'ghast': [
    { 'drop_rate': 0.05, 'drop_item': 'fire_charge' }
  ],
  'guardian': [
    { 'drop_rate': 0.04, 'drop_item': 'prismarine' }
  ],
  'hoglin': [
    { 'drop_rate': 0.01, 'drop_item': 'gold_block' }
  ],
  'husk': [
    { 'drop_rate': 0.08, 'drop_item': 'sand' }
  ],
  'magma_cube': [
    { 'drop_rate': 0.04, 'drop_item': 'nether_wart' }
  ],
  'phantom': [
    { 'drop_rate': 0.002, 'drop_item': 'elytra' }
  ],
  'piglin': [
    { 'drop_rate': 0.02, 'drop_item': 'lava_bucket' }
  ],
  'piglin_brute': [
    { 'drop_rate': 0.02, 'drop_item': 'diamond_axe' },
    { 'drop_rate': 0.001, 'drop_item': 'netherite_axe' }
  ],
  'pillager': [
    { 'drop_rate': 0.05, 'drop_item': 'firework_rocket' }
  ],
  'ravager': [
    { 'drop_rate': 0.5, 'drop_item': 'gravel' }
  ],
  'shulker': [
    { 'drop_rate': 0.05, 'drop_item': 'shulker_shell' }
  ],
  'silverfish': [
    { 'drop_rate': 0.01, 'drop_item': 'diamond' }
  ],
  'skeleton': [
    { 'drop_rate': 0.1, 'drop_item': 'bone' },
    { 'drop_rate': 0.005, 'drop_item': 'bone_block' }
  ],
  'slime': [
    { 'drop_rate': 0.01, 'drop_item': 'slime_block' }
  ],
  'spider': [
    { 'drop_rate': 0.1, 'drop_item': 'spider_eye' }
  ],
  'stray': [
    { 'drop_rate': 0.05, 'drop_item': 'lether_boots' }
  ],
  'vex': [
    { 'drop_rate': 0.01, 'drop_item': 'jukebox' }
  ],
  'vindicator': [
    { 'drop_rate': 0.01, 'drop_item': 'diamond_axe' }
  ],
  'witch': [
    { 'drop_rate': 0.01, 'drop_item': 'glowstone_dust' }
  ],
  'wither': [
    { 'drop_rate': 0.01, 'drop_item': 'wither_rose' }
  ],
  'wither_skeleton': [
    { 'drop_rate': 0.005, 'drop_item': 'wither_skeleton_skull' }
  ],
  'warden': [
    { 'drop_rate': 0.5, 'drop_item': 'deepslate' }
  ],
  'zoglin': [
    { 'drop_rate': 0.01, 'drop_item': 'golden_apple' }
  ],
  'zombie': [
    { 'drop_rate': 0.07, 'drop_item': 'rotten_flesh' }
  ],
}

friendly_mobs = {
  'allay': [
    { 'drop_rate': 0.01, 'drop_item': 'jukebox' }
  ],
  'bat': [
    { 'drop_rate': 0.05, 'drop_item': 'black_candle' }
  ],
  'bee': [
    { 'drop_rate': 0.1, 'drop_item': 'honeycomb' }
  ],
  'cat': [
    { 'drop_rate': 0.005, 'drop_item': 'music_disc_cat' }
  ],
  'chicken': [
    { 'drop_rate': 0.08, 'drop_item': 'chicken' }
  ],
  'cod': [
    { 'drop_rate': 0.07, 'drop_item': 'cod' }
  ],
  'cow': [
    { 'drop_rate': 0.07, 'drop_item': 'beef' },
    { 'drop_rate': 0.03, 'drop_item': 'leather' }
  ],
  'donkey': [
    { 'drop_rate': 0.01, 'drop_item': 'string' }
  ],
  'frog': [
    { 'drop_rate': 0.01, 'drop_item': 'spider_eye' }
  ],
  'glow_squid': [
    { 'drop_rate': 0.1, 'drop_item': 'glow_ink_sac' }
  ],
  'iron_golem': [
    { 'drop_rate': 0.01, 'drop_item': 'iron_block' }
  ],
  'mooshroom': [
    { 'drop_rate': 0.07, 'drop_item': 'beef' },
    { 'drop_rate': 0.03, 'drop_item': 'leather' },
    { 'drop_rate': 0.005, 'drop_item': 'red_mushroom_block' },
    { 'drop_rate': 0.005, 'drop_item': 'brown_mushroom_block' }
  ],
  'pig': [
    { 'drop_rate': 0.08, 'drop_item': 'porkchop' }
  ],
  'rabbit': [
    { 'drop_rate': 0.07, 'drop_item': 'rabbit' },
    { 'drop_rate': 0.02, 'drop_item': 'rabbit_hide' },
    { 'drop_rate': 0.001, 'drop_item': 'rabbit_foot' }
  ],
  'salmon': [
    { 'drop_rate': 0.07, 'drop_item': 'salmon' }
  ],
  'sheep': [
    { 'drop_rate': 0.09, 'drop_item': 'mutton' }
  ],
  'snow_golem': [
    { 'drop_rate': 0.01, 'drop_item': 'golden_carrot' }
  ],
  'squid': [
    { 'drop_rate': 0.04, 'drop_item': 'ink_sac' }
  ],
  'strider': [
    { 'drop_rate': 0.04, 'drop_item': 'string' }
  ],
  'trader_llama': [
    { 'drop_rate': 0.05, 'drop_item': 'emerald' }
  ],
  'villager': [
    { 'drop_rate': 0.2, 'drop_item': 'emerald' }
  ],
  'wandering_trader': [
    { 'drop_rate': 0.01, 'drop_item': 'diamond_block' }
  ],
}

gameplay_drops = {
  'fishing': [
    { 'drop_rate': 0.001, 'drop_item': 'enchanted_golden_apple' },
    { 'drop_rate': 0.002, 'drop_item': 'deepslate_emerald_ore' },
    { 'drop_rate': 0.0001, 'drop_item': 'elytra' },
    { 'drop_rate': 0.0001, 'drop_item': 'nether_star' },
    { 'drop_rate': 0.0001, 'drop_item': 'totem_of_undying' },
    { 'drop_rate': 0.01, 'drop_item': 'wet_sponge' },
  ],
}

def generate_block_loot_tables(block_map, skill_name, tool_tag):
  """
  Generates Fernweh loot tables for blocks
  """
  for block in block_map.keys():
    block_info = block_map[block]
    drop_rate = block_info['drop_rate']
    drop_item = block_info.get('drop_item', block)
    custom_table = {
      "type": "minecraft:block",
      "pools": [
        {
          "conditions": [
            {
              "condition": "minecraft:match_tool",
              "predicate": {
                "items": f"#{tool_tag}"
              }
            },
            {
              "condition": "minecraft:inverted",
              "term": {
                "condition": "minecraft:match_tool",
                "predicate": {
                  "predicates": {
                    "minecraft:enchantments": [
                      {
                        "enchantments": "minecraft:silk_touch",
                        "levels": {
                          "min": 1
                        }
                      }
                    ]
                  }
                }
              }
            }
          ],
          "entries": [
            {
              "type": "minecraft:item",
              "conditions": [
                {
                  "condition": "minecraft:random_chance",
                  "chance": drop_rate
                }
              ],
              "name": f"minecraft:{drop_item}"
            }
          ],
          "rolls": {
            "type": "score",
            "target": {
              "type": "context",
              "target": "this"
            },
            "score": f"fnw.{skill_name}"
          }
        }
      ],
      "random_sequence": f"minecraft:blocks/{block}"
    }
    
    with open(f'data/fernweh/loot_table/blocks/{block}.json', 'w') as wp:
      json.dump(custom_table, wp, indent=2)

def generate_entity_loot_tables(entity_map, skill_name):
  """
  Generates Fernweh loot tables for entities
  """
  for entity in entity_map.keys():
    custom_table = {
      "type": "minecraft:entity",
      "pools": [],
      "random_sequence": f"minecraft:entities/{entity}"
    }
    block_info = entity_map[entity]
    for drop_map in block_info:
      drop_rate = drop_map['drop_rate']
      drop_item = drop_map.get('drop_item', entity)
      custom_table['pools'].append({
        "entries": [
          {
            "type": "minecraft:item",
            "conditions": [
              {
                "condition": "minecraft:random_chance",
                "chance": drop_rate
              }
            ],
            "name": f"minecraft:{drop_item}"
          }
        ],
        "rolls": {
          "type": "score",
          "target": {
            "type": "context",
            "target": "attacker"
          },
          "score": f"fnw.{skill_name}"
        }
      })
      
      custom_table['pools'].append({
        "entries": [
          {
            "type": "minecraft:item",
            "conditions": [
              {
                "condition": "minecraft:random_chance",
                "chance": 0.001
              }
            ],
            "name": f"minecraft:{entity}_spawn_egg"
          }
        ],
        "rolls": {
          "type": "score",
          "target": {
            "type": "context",
            "target": "attacker"
          },
          "score": f"fnw.{skill_name}"
        }
      })
    
    with open(f'data/fernweh/loot_table/entities/{entity}.json', 'w') as wp:
      json.dump(custom_table, wp, indent=2)


def generate_fishing_loot_tables(gameplay_map, skill_name):
  """
  Generates Fernweh loot tables for fishing
  """
  for gameplay in gameplay_map.keys():
    custom_table = {
      "type": "minecraft:chest",
      "pools": [],
      "random_sequence": f"minecraft:gameplay/{gameplay}"
    }
    drop_info = gameplay_map[gameplay]
    for drop_map in drop_info:
      drop_rate = drop_map['drop_rate']
      drop_item = drop_map.get('drop_item', gameplay)
      custom_table['pools'].append({
        "entries": [
          {
            "type": "minecraft:item",
            "conditions": [
              {
                "condition": "minecraft:random_chance",
                "chance": drop_rate
              }
            ],
            "name": f"minecraft:{drop_item}"
          }
        ],
        "rolls": {
          "type": "score",
          "target": {
            "type": "context",
            "target": "this"
          },
          "score": f"fnw.{skill_name}"
        }
      })
    
    with open(f'data/fernweh/loot_table/gameplay/{gameplay}.json', 'w') as wp:
      json.dump(custom_table, wp, indent=2)

      
def override_vanilla_loot_tables(vanilla_path, block_map, object_type):
  """
  Copies the vanilla loot tables
  and inserts entry for custom rolls
  """
  for loot_table in block_map.keys():
    custom_entry = {
      "entries": [
        {
          "type": "loot_table",
          "value": f"fernweh:{object_type}/{loot_table}"
        }
      ],
      "rolls": 1.0
    }
    
    with open(f'{vanilla_path}/data/minecraft/loot_table/{object_type}/{loot_table}.json') as fp:
      json_content = json.load(fp)
      if 'pools' not in json_content:
        json_content['pools'] = []
      json_content['pools'].append(custom_entry)
      with open(f'data/minecraft/loot_table/{object_type}/{loot_table}.json', 'w') as wp:
        json.dump(json_content, wp, indent=2)
        
if __name__ == '__main__':
  generate_block_loot_tables(ore_blocks, 'mining_level', 'minecraft:pickaxes')
  generate_block_loot_tables(log_blocks, 'lumber_level', 'minecraft:axes')
  generate_block_loot_tables(dig_blocks, 'excavate_level', 'minecraft:shovels')
  generate_entity_loot_tables(hostile_mobs, 'slayer_level')
  generate_entity_loot_tables(friendly_mobs, 'hunter_level')
  generate_fishing_loot_tables(gameplay_drops, 'fish_level')
  
  if len(sys.argv) == 2:
    override_vanilla_loot_tables(sys.argv[1], ore_blocks, 'blocks')
    override_vanilla_loot_tables(sys.argv[1], log_blocks, 'blocks')
    override_vanilla_loot_tables(sys.argv[1], dig_blocks, 'blocks')
    override_vanilla_loot_tables(sys.argv[1], hostile_mobs, 'entities')
    override_vanilla_loot_tables(sys.argv[1], friendly_mobs, 'entities')
  