execute unless @e[type=text_display,distance=..1,tag=admin.displayname] \
        run summon text_display ~0.5 ~.7 ~0.01 { \
			transformation: { \
				left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], \
				translation: [0.02f, 0.0f, 0.0f], \
				right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
				scale: [0.7f, 0.7f, 0.7f] \
		    }, \
		    Tags:["admin.interaction","admin.displayname"], \
		    background: 1621754026 \
		}