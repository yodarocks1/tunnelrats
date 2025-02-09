kill @e[tag=admin.no_edit]
execute if entity @n[tag=admin.save,tag=disabled] \
        if entity @n[tag=admin.save_as,tag=disabled] \
        run summon interaction -36.99 138 6 {width: 12, height: 13,Tags:["admin.no_edit"]}
execute if entity @n[tag=admin.no_edit] \
        run summon interaction -36.99 138 -6 {width: 12, height: 13,Tags:["admin.no_edit"]}