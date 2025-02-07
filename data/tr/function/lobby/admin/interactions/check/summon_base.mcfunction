scoreboard players set @s x 11
scoreboard players set @s y 11
scoreboard players set @s z 11

data merge entity @s {Tags: ["admin.block", "admin.base"], transformation: {left_rotation: [0.0f, -0.70710677f, 0.0f, -0.70710677f], translation: [-0.49f, -0.3f, 0.0f], scale: [0.7f, 0.7f, 0.7f]}}

function tr:lobby/admin/interactions/update/base