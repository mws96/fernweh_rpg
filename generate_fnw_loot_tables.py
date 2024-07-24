import json
import sys


ore_blocks = {
  'amethyst_cluster': { 'drop_rate': 0.6, 'drop_item': 'amethyst_shard', 'max_items': 2 },
  'coal_ore': { 'drop_rate': 0.9, 'drop_item': 'coal', 'max_items': 5 },
  'copper_ore': { 'drop_rate': 0.8, 'drop_item': 'raw_copper', 'max_items': 3 },
  'deepslate_coal_ore': { 'drop_rate': 0.9, 'drop_item': 'coal', 'max_items': 6 },
  'deepslate_copper_ore': { 'drop_rate': 0.8, 'drop_item': 'raw_copper', 'max_items': 4 },
  'deepslate_diamond_ore': { 'drop_rate': 0.1, 'drop_item': 'diamond', 'max_items': 3 },
  'deepslate_emerald_ore': { 'drop_rate': 0.2, 'drop_item': 'emerald', 'max_items': 4 },
  'deepslate_gold_ore': { 'drop_rate': 0.5, 'drop_item': 'raw_gold', 'max_items': 2 },
  'deepslate_iron_ore': { 'drop_rate': 0.7, 'drop_item': 'raw_iron', 'max_items': 4 },
  'deepslate_lapis_ore': { 'drop_rate': 0.3, 'drop_item': 'lapis_lazuli', 'max_items': 2 },
  'deepslate_redstone_ore': { 'drop_rate': 0.4, 'drop_item': 'redstone', 'max_items': 3 },
  'diamond_ore': { 'drop_rate': 0.1, 'drop_item': 'diamond', 'max_items': 3 },
  'emerald_ore': { 'drop_rate': 0.2, 'drop_item': 'emerald', 'max_items': 3 },
  'gold_ore': { 'drop_rate': 0.4, 'drop_item': 'raw_gold', 'max_items': 2 },
  'iron_ore': { 'drop_rate': 0.7, 'drop_item': 'raw_iron', 'max_items': 3 },
  'lapis_ore': { 'drop_rate': 0.3, 'drop_item': 'lapis_lazuli', 'max_items': 2 },
  'nether_gold_ore': { 'drop_rate': 0.4, 'drop_item': 'gold_nugget', 'max_items': 6 },
  'nether_quartz_ore': { 'drop_rate': 0.2, 'drop_item': 'quartz', 'max_items': 3 },
  'redstone_ore': { 'drop_rate': 0.4, 'drop_item': 'redstone', 'max_items': 2 },
}

log_blocks = {
  'acacia_log': { 'drop_rate': 0.5, 'max_items': 5 },
  'birch_log': { 'drop_rate': 0.5, 'max_items': 5 },
  'cherry_log': { 'drop_rate': 0.5, 'max_items': 5 },
  'dark_oak_log': { 'drop_rate': 0.5, 'max_items': 5 },
  'jungle_log': { 'drop_rate': 0.5, 'max_items': 5 },
  'mangrove_log': { 'drop_rate': 0.5, 'max_items': 5 },
  'mangrove_roots': { 'drop_rate': 0.2, 'max_items': 5 },
  'oak_log': { 'drop_rate': 0.5, 'max_items': 5 },
  'spruce_log': { 'drop_rate': 0.5, 'max_items': 5 },
}

dig_blocks = {
  'gravel': { 'drop_rate': 0.7, 'max_items': 3 },
  'sand': { 'drop_rate': 0.7, 'max_items': 3 },
  'red_sand': { 'drop_rate': 0.5, 'max_items': 3 },
  'clay': { 'drop_rate': 0.3, 'drop_item': 'clay_ball', 'max_items': 5 },
  'soul_sand': { 'drop_rate': 0.4, 'max_items': 3 },
  'soul_soil': { 'drop_rate': 0.4, 'max_items': 3 },
}

hostile_mobs = {
  'blaze': [
    { 'drop_rate': 0.1, 'drop_item': 'blaze_rod', 'max_items': 2 }
  ],
  'bogged': [
    { 'drop_rate': 0.3, 'drop_item': 'brown_mushroom', 'max_items': 2 },
    { 'drop_rate': 0.3, 'drop_item': 'red_mushroom', 'max_items': 2 },
    { 'drop_rate': 0.05, 'drop_item': 'red_mushroom_block', 'max_items': 2 }
  ],
  'breeze': [
    { 'drop_rate': 0.4, 'drop_item': 'breeze_rod', 'max_items': 2 }
  ],
  'cave_spider': [
    { 'drop_rate': 0.8, 'drop_item': 'cobweb', 'max_items': 2 }
  ],
  'creeper': [
    { 'drop_rate': 0.5, 'drop_item': 'gunpowder', 'max_items': 2 }
  ],
  'drowned': [
    { 'drop_rate': 0.4, 'drop_item': 'rotten_flesh', 'max_items': 2 },
    { 'drop_rate': 0.06, 'drop_item': 'nautilus_shell' }
  ],
  'elder_guardian': [
    { 'drop_rate': 0.4, 'drop_item': 'sponge', 'max_items': 2 }
  ],
  'enderman': [
    { 'drop_rate': 0.01, 'drop_item': 'ender_chest' }
  ],
  'evoker': [
    { 'drop_rate': 0.5, 'drop_item': 'emerald', 'max_items': 5 }
  ],
  'ghast': [
    { 'drop_rate': 0.5, 'drop_item': 'fire_charge', 'max_items': 3 }
  ],
  'guardian': [
    { 'drop_rate': 0.4, 'drop_item': 'prismarine', 'max_items': 2 }
  ],
  'hoglin': [
    { 'drop_rate': 0.1, 'drop_item': 'gold_block', 'max_items': 2 }
  ],
  'husk': [
    { 'drop_rate': 0.8, 'drop_item': 'sand', 'max_items': 6 }
  ],
  'magma_cube': [
    { 'drop_rate': 0.4, 'drop_item': 'magma_cream', 'max_items': 2 }
  ],
  'phantom': [
    { 'drop_rate': 0.01, 'drop_item': 'elytra' }
  ],
  'piglin': [
    { 'drop_rate': 0.2, 'drop_item': 'lava_bucket', 'max_items': 2 }
  ],
  'piglin_brute': [
    { 'drop_rate': 0.2, 'drop_item': 'diamond_axe' },
    { 'drop_rate': 0.01, 'drop_item': 'netherite_axe' }
  ],
  'pillager': [
    { 'drop_rate': 0.5, 'drop_item': 'firework_rocket', 'max_items': 5 }
  ],
  'ravager': [
    { 'drop_rate': 0.5, 'drop_item': 'gravel', 'max_items': 3 }
  ],
  'shulker': [
    { 'drop_rate': 0.5, 'drop_item': 'shulker_shell', 'max_items': 2 }
  ],
  'silverfish': [
    { 'drop_rate': 0.1, 'drop_item': 'smooth_stone_slab', 'max_items': 4 }
  ],
  'skeleton': [
    { 'drop_rate': 0.7, 'drop_item': 'bone', 'max_items': 4 },
    { 'drop_rate': 0.25, 'drop_item': 'bone_block' }
  ],
  'slime': [
    { 'drop_rate': 0.1, 'drop_item': 'slime_block' }
  ],
  'spider': [
    { 'drop_rate': 0.8, 'drop_item': 'cobweb', 'max_items': 2 }
  ],
  'stray': [
    { 'drop_rate': 0.5, 'drop_item': 'leather_boots' }
  ],
  'vex': [
    { 'drop_rate': 0.1, 'drop_item': 'jukebox' }
  ],
  'vindicator': [
    { 'drop_rate': 0.1, 'drop_item': 'diamond_axe' }
  ],
  'witch': [
    { 'drop_rate': 0.1, 'drop_item': 'glowstone_dust', 'max_items': 4 }
  ],
  'wither': [
    { 'drop_rate': 0.1, 'drop_item': 'wither_rose' }
  ],
  'wither_skeleton': [
    { 'drop_rate': 0.01, 'drop_item': 'wither_skeleton_skull' }
  ],
  'warden': [
    { 'drop_rate': 0.5, 'drop_item': 'deepslate' }
  ],
  'zoglin': [
    { 'drop_rate': 0.1, 'drop_item': 'golden_apple', 'max_items': 2 }
  ],
  'zombie': [
    { 'drop_rate': 0.7, 'drop_item': 'rotten_flesh', 'max_items': 5 }
  ],
}

friendly_mobs = {
  'allay': [
    { 'drop_rate': 0.1, 'drop_item': 'jukebox' }
  ],
  'bat': [
    { 'drop_rate': 0.5, 'drop_item': 'black_candle', 'max_items': 3 }
  ],
  'bee': [
    { 'drop_rate': 0.4, 'drop_item': 'honeycomb', 'max_items': 3 }
  ],
  'cat': [
    { 'drop_rate': 0.05, 'drop_item': 'music_disc_cat' }
  ],
  'chicken': [
    { 'drop_rate': 0.8, 'drop_item': 'chicken', 'max_items': 3 }
  ],
  'cod': [
    { 'drop_rate': 0.7, 'drop_item': 'cod', 'max_items': 4 }
  ],
  'cow': [
    { 'drop_rate': 0.7, 'drop_item': 'beef', 'max_items': 5 },
    { 'drop_rate': 0.3, 'drop_item': 'leather', 'max_items': 2 }
  ],
  'donkey': [
    { 'drop_rate': 0.1, 'drop_item': 'string', 'max_items': 2 }
  ],
  'frog': [
    { 'drop_rate': 0.1, 'drop_item': 'ochre_froglight', 'max_items': 2 },
    { 'drop_rate': 0.1, 'drop_item': 'pearlescent_froglight', 'max_items': 2 },
    { 'drop_rate': 0.1, 'drop_item': 'verdant_froglight', 'max_items': 2 }
  ],
  'glow_squid': [
    { 'drop_rate': 1.0, 'drop_item': 'glow_ink_sac', 'max_items': 10 }
  ],
  'iron_golem': [
    { 'drop_rate': 0.01, 'drop_item': 'iron_block' }
  ],
  'mooshroom': [
    { 'drop_rate': 0.7, 'drop_item': 'beef', 'max_items': 4 },
    { 'drop_rate': 0.3, 'drop_item': 'leather', 'max_items': 2 },
    { 'drop_rate': 0.05, 'drop_item': 'red_mushroom_block' },
    { 'drop_rate': 0.05, 'drop_item': 'brown_mushroom_block' }
  ],
  'pig': [
    { 'drop_rate': 0.8, 'drop_item': 'porkchop', 'max_items': 3 }
  ],
  'rabbit': [
    { 'drop_rate': 0.7, 'drop_item': 'rabbit', 'max_items': 2 },
    { 'drop_rate': 0.2, 'drop_item': 'rabbit_hide' },
    { 'drop_rate': 0.1, 'drop_item': 'rabbit_stew' }
  ],
  'salmon': [
    { 'drop_rate': 0.7, 'drop_item': 'salmon', 'max_items': 3 }
  ],
  'sheep': [
    { 'drop_rate': 0.9, 'drop_item': 'mutton', 'max_items': 3 }
  ],
  'snow_golem': [
    { 'drop_rate': 0.01, 'drop_item': 'golden_carrot' }
  ],
  'squid': [
    { 'drop_rate': 0.4, 'drop_item': 'ink_sac', 'max_items': 2 }
  ],
  'strider': [
    { 'drop_rate': 0.4, 'drop_item': 'string', 'max_items': 2 }
  ],
  'trader_llama': [
    { 'drop_rate': 0.5, 'drop_item': 'emerald', 'max_items': 5 }
  ],
  'villager': [
    { 'drop_rate': 0.2, 'drop_item': 'emerald', 'max_items': 5 }
  ],
  'wandering_trader': [
    { 'drop_rate': 0.1, 'drop_item': 'diamond_block' }
  ],
}

gameplay_drops = {
  'fishing': [
    { 'drop_rate': 0.06, 'drop_item': 'enchanted_golden_apple' },
    { 'drop_rate': 0.1, 'drop_item': 'deepslate_emerald_ore' },
    { 'drop_rate': 0.002, 'drop_item': 'elytra' },
    { 'drop_rate': 0.002, 'drop_item': 'nether_star' },
    { 'drop_rate': 0.002, 'drop_item': 'totem_of_undying' },
    { 'drop_rate': 0.4, 'drop_item': 'wet_sponge', 'max_items': 3 },
  ],
}

def generate_block_loot_tables(block_map, skill_name, tool_tag):
  """
  Generates Fernweh loot tables for blocks
  """
  for block in block_map.keys():
    block_info = block_map[block]
    drop_rate = block_info['drop_rate']
    max_items = block_info.get('max_items', 1)
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
            },
            {
              "condition": "minecraft:random_chance",
              "chance": {
                "type": "score",
                "target": {
                  "type": "context",
                  "target": "this"
                },
                "score": f"fnw.{skill_name}",
                "scale": 0.01
              }
            }
          ],
          "entries": [
            {
              "type": "minecraft:item",
              "functions": [
                {
                  "add": False,
                  "count": {
                    "min": 0,
                    "max": max_items
                  },
                  "function": "minecraft:set_count"
                }
              ],
              "name": f"minecraft:{drop_item}"
            }
          ],
          "rolls": 1
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
      max_items = drop_map.get('max_items', 1)
      custom_table['pools'].append({
        "conditions": [
          {
            "condition": "minecraft:random_chance",
            "chance": {
              "type": "score",
              "target": {
                "type": "context",
                "target": "attacker"
              },
              "score": f"fnw.{skill_name}",
              "scale": 0.01
            }
          }
        ],
        "entries": [
          {
            "type": "minecraft:item",
            "functions": [
              {
                "add": False,
                "count": {
                  "min": 0,
                  "max": max_items
                },
                "function": "minecraft:set_count"
              }
            ],
            "name": f"minecraft:{drop_item}"
          }
        ],
        "rolls": 1
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
        "rolls": 1
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
      max_items = drop_map.get('max_items', 1)
      custom_table['pools'].append({
        "conditions": [
          {
            "condition": "minecraft:random_chance",
            "chance": {
              "type": "score",
              "target": {
                "type": "context",
                "target": "this"
              },
              "score": f"fnw.{skill_name}",
              "scale": 0.01
            }
          },
          {
            "condition": "minecraft:random_chance",
            "chance": drop_rate
          }
        ],
        "entries": [
          {
            "type": "minecraft:item",
            "functions": [
              {
                "add": False,
                "count": {
                  "min": 1,
                  "max": max_items
                },
                "function": "minecraft:set_count"
              }
            ],
            "name": f"minecraft:{drop_item}"
          }
        ],
        "rolls": 1
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
  