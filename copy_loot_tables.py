import json
import sys


loot_tables = [
  'amethyst_cluster',
  'coal_ore',
  'copper_ore',
  'deepslate_coal_ore',
  'deepslate_copper_ore',
  'deepslate_diamond_ore',
  'deepslate_emerald_ore',
  'deepslate_gold_ore',
  'deepslate_lapis_ore',
  'deepslate_redstone_ore',
  'diamond_ore',
  'emerald_ore',
  'gold_ore',
  'iron_ore',
  'lapis_ore',
  'nether_gold_ore',
  'nether_quartz_ore',
  'redstone_ore'
]

def copy_loot_tables(vanilla_path):
  """
  Copies the vanilla loot tables
  and inserts entry for custom rolls
  """
  for loot_table in loot_tables:
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
  if len(sys.argv) != 2:
    print('Usage: python copy_loot_tables.py path_to_vanilla')
    exit(0)
  
  copy_loot_tables(sys.argv[1])