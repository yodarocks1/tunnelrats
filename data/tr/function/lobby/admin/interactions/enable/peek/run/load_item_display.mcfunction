data merge entity @s { \
	Tags:["admin.interaction","admin.displayitem"], \
	Rotation: [90f, 0f], \
	item_display: "ground" \
}
$data merge entity @s $(item)
execute if data storage tr:tmp admin.display.name \
        run data modify entity @s transformation.translation set value [0.0f, 0.2f, 0.0f]