### Get pag and get selection funcitons

function mystery_9_wands:bomb/menu/get_page
function mystery_9_wands:bomb/menu/get_selection

### find page

execute if score @s bomb_menu matches 0 run function mystery_9_wands:bomb/menu/page0/directory

execute if score @s bomb_menu matches 1 run function mystery_9_wands:bomb/menu/page1/directory

execute if score @s bomb_menu matches 2 run function mystery_9_wands:bomb/menu/page2/directory

### Update

clear @s #mystery_9_wands:bomb_menu{ismenu:1b}
function mystery_9_wands:bomb/menu/update
