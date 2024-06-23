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

def generate_loot_tables(block_map, skill_name, tool_tag):
  """
  Generates Fernweh loot tables for lumber skill
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
      
def override_vanilla_loot_tables(vanilla_path, block_map):
  """
  Copies the vanilla loot tables
  and inserts entry for custom rolls
  """
  for loot_table in block_map.keys():
    custom_entry = {
      "entries": [
        {
          "type": "loot_table",
          "value": f"fernweh:blocks/{loot_table}"
        }
      ],
      "rolls": 1.0
    }
    
    with open(f'{vanilla_path}/data/minecraft/loot_table/blocks/{loot_table}.json') as fp:
      json_content = json.load(fp)
      json_content['pools'].append(custom_entry)
      with open(f'data/minecraft/loot_table/blocks/{loot_table}.json', 'w') as wp:
        json.dump(json_content, wp, indent=2)
        
if __name__ == '__main__':
  generate_loot_tables(ore_blocks, 'mining_level', 'minecraft:pickaxes')
  generate_loot_tables(log_blocks, 'lumber_level', 'minecraft:axes')
  generate_loot_tables(dig_blocks, 'excavate_level', 'minecraft:shovels')
  
  if len(sys.argv) == 2:
    override_vanilla_loot_tables(sys.argv[1], ore_blocks)
    override_vanilla_loot_tables(sys.argv[1], log_blocks)
    override_vanilla_loot_tables(sys.argv[1], dig_blocks)
  