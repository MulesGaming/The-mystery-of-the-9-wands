### Empty chest

data remove block -23 -60 144 Items

### Refill 

execute if score @s bomb_menu matches 0 run function mystery_9_wands:bomb/menu/page0/directory

execute if score @s bomb_menu matches 1 run function mystery_9_wands:bomb/menu/page1/directory

execute if score @s bomb_menu matches 2 run function mystery_9_wands:bomb/menu/page2/directory