local vars = require("variables")

hl.config({
    input = {
        kb_layout = "us,ua",

        kb_options = "caps:escape,grp:alt_space_toggle,altwin:swap_alt_win",
        follow_mouse = 1,
        sensitivity = 0.0,
        accel_profile = "flat",

        numlock_by_default = false,
        repeat_delay = 250,
        repeat_rate = 35,
        focus_on_close = 1,

        touchpad = {
            natural_scroll = true,
            disable_while_typing = vars.touchpadDisableTyping,
            scroll_factor = vars.touchpadScrollFactor,
        },
    },

    binds = {
        scroll_event_delay = 0,
    },

    cursor = {
        hotspot_padding = 1,
    },

    gestures = {
        -- # workspace_swipe = true
        workspace_swipe_distance = 700,
        -- # workspace_swipe_fingers = $workSpaceSwipeFingers
        workspace_swipe_cancel_ratio = 0.15,
        workspace_swipe_min_speed_to_force = 5,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true,
    },
})
