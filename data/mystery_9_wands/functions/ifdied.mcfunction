### Death message

execute as @a[scores={death=1..}] run title @p title {"text":"You Died!","color":"dark_red","bold":true,"italic":false}

### Reset death count

execute as @a[scores={death=1..}] run scoreboard players set @a death 0