### Run bomb/menu/directory if player has item from tags\items\bomb_menu

execute store result score items bomb_menu run clear @s #mystery_9_wands:bomb_menu{ismenu:1b} 0
execute if score items bomb_menu matches 1.. run function mystery_9_wands:bomb/menu/directory