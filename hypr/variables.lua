local scheme = require("scheme.current")

local M = {
    ------------------
    ---- HYPRLAND ----
    ------------------

    -- Apps
    -- terminal                   = "foot",
    terminal = "wezterm",
    -- browser                    = "firefox",
    browser = "zen-browser",
    editor = "nvim",
    -- fileExplorer               = "thunar",
    fileExplorer = "nemo",
    audioSettings = "pavucontrol",

    -- Touchpad
    touchpadDisableTyping = true,
    touchpadScrollFactor = 0.3,
    gestureFingers = 3,
    workspaceSwipeFingers = 4,
    gestureFingersMore = 4,

    -- Blur
    blurEnabled = true,
    blurSpecialWs = false,
    blurPopups = true,
    blurInputMethods = true,
    blurSize = 8,
    blurPasses = 2,
    blurXray = false,

    -- Shadow
    shadowEnabled = true,
    shadowRange = 16,
    shadowRenderPower = 4,
    shadowColour = "rgba(" .. scheme.inversePrimary .. "10)",

    -- Gaps
    workspaceGaps = 4,
    windowGapsIn = 4,
    windowGapsOut = 12,
    singleWindowGapsOut = 8,

    -- Window styling
    windowOpacity = 0.95,
    windowRounding = 16,
    windowBorderSize = 3,
    borderGradientAngle = 180,
    activeBorderAlpha = "ef",
    inactiveBorderAlpha = "33",

    -- Misc
    volumeStep = 2,
    volumeMax = 100,
    cursorTheme = "sweet-cursors",
    cursorSize = 24,
    sleepGestureCmd = "systemctl suspend-then-hibernate",

    -- My custom stuff
    wallpapersFolder = "~/Картинки/wallhaven/",

    ------------------
    ---- KEYBINDS ----
    ------------------

    --- MY

    kbMoveWinToWs = "SUPER + SHIFT",
    kbMoveWinToWsGroup = "CTRL + SUPER + ALT",
    kbGoToWs = "SUPER",
    kbGoToWsGroup = "CTRL + SUPER",

    kbNextWs = "CTRL + SUPER + right",
    kbPrevWs = "CTRL + SUPER + left",

    kbToggleSpecialWs = "SUPER + S",

    -- # Window groups
    kbWindowGroupCycleNext = "ALT + Tab",
    kbWindowGroupCyclePrev = "SHIFT + ALT + Tab",
    kbUngroup = "SUPER + U",
    kbToggleGroup = "SUPER + Comma",

    -- # Window actions
    kbMoveWindow = "SUPER + Z",
    kbResizeWindow = "SUPER + X",
    kbWindowPip = "SUPER + ALT + Backslash",
    kbPinWindow = "SUPER + P",
    kbWindowFullscreen = "SUPER + F",
    kbWindowBorderedFullscreen = "SUPER + ALT + F",
    kbToggleWindowFloating = "SUPER + ALT + Space",
    kbCloseWindow = "SUPER + Q",

    -- # Special workspace toggles
    kbSystemMonitor = "CTRL + SHIFT + Escape",
    kbMusic = "SUPER + M",
    kbCommunication = "SUPER + D",
    kbTodo = "SUPER + R",

    -- # Apps
    kbTerminal = "SUPER + Return",
    kbBrowser = "SUPER + W",
    kbEditor = "SUPER + C",
    kbFileExplorer = "SUPER + E",

    -- # Misc
    kbSession = "CTRL + ALT + Delete",
    kbShowSidebar = "SUPER + N",
    kbClearNotifs = "CTRL + ALT + C",
    kbShowPanels = "SUPER + K",
    kbLock = "SUPER + SHIFT + CTRL + L",
    kbRestoreLock = "SUPER + ALT + L",

    --- DEFAULT

    -- Workspaces
    -- kbMoveWinToWs = "SUPER + ALT",
    -- kbMoveWinToWsGroup = "CTRL + SUPER + ALT",
    -- kbGoToWs = "SUPER",
    -- kbGoToWsGroup = "CTRL + SUPER",
    -- kbNextWs = "CTRL + SUPER + Right",
    -- kbPrevWs = "CTRL + SUPER + Left",
    --
    -- -- Window Group
    -- kbWindowGroupCycleNext = "ALT + TAB",
    -- kbWindowGroupCyclePrev = "SHIFT + ALT + TAB",
    -- kbUngroup = "SUPER + U",
    -- kbToggleGroup = "SUPER + Comma",
    --
    -- -- Window Action
    -- kbMoveWindow = "SUPER + Z",
    -- kbResizeWindow = "SUPER + X",
    -- kbWindowPip = "SUPER + ALT + backslash",
    -- kbPinWindow = "SUPER + P",
    -- kbWindowFullscreen = "SUPER + F",
    -- kbWindowBorderedFullscreen = "SUPER + ALT + F",
    -- kbToggleWindowFloating = "SUPER + ALT + space",
    -- kbCloseWindow = "SUPER + Q",

    -- Special workspaces toggles
    kbSpecialWs = "SUPER + S",
    kbSystemMonitorWs = "CTRL + SHIFT + Escape",
    kbMusicWs = "SUPER + M",
    kbCommunicationWs = "SUPER + D",
    kbTodoWs = "SUPER + R",

    -- Apps
    -- kbTerminal = "SUPER + T",
    -- kbBrowser = "SUPER + W",
    -- kbEditor = "SUPER + C",
    -- kbFileExplorer = "SUPER + E",
    --
    -- -- Misc
    -- kbSession = "CTRL + ALT + Delete",
    -- kbShowSidebar = "SUPER + N",
    -- kbClearNotifs = "CTRL + ALT + C",
    -- kbShowPanels = "SUPER + K",
    -- kbLock = "SUPER + L",
    -- kbRestoreLock = "SUPER + ALT + L",
}

M.activeWindowBorderColour1 = "rgba(" .. scheme.primary .. M.activeBorderAlpha .. ")"
M.activeWindowBorderColour2 = "rgba(" .. scheme.secondary .. M.activeBorderAlpha .. ")"
M.inactiveWindowBorderColour1 = "rgba(" .. scheme.onSurfaceVariant .. M.inactiveBorderAlpha .. ")"
M.inactiveWindowBorderColour2 = "rgba(" .. scheme.surfaceDim .. M.inactiveBorderAlpha .. ")"

M.activeWindowBorderColour = {
    colors = {
        M.activeWindowBorderColour1,
        M.activeWindowBorderColour1,
        "rgba(ff00ff" .. scheme.activeAlpha .. ")",
        "rgba(0000ff" .. scheme.activeAlpha .. ")",
        "rgba(00ffff" .. scheme.activeAlpha .. ")",
        "rgba(00ff00" .. scheme.activeAlpha .. ")",
        "rgba(ffff00" .. scheme.activeAlpha .. ")",
        "rgba(ff0000" .. scheme.activeAlpha .. ")",
        M.activeWindowBorderColour2,
        M.activeWindowBorderColour2,
    },
    angle = M.borderGradientAngle,
}

M.inactiveWindowBorderColour = {
    colors = {
        M.inactiveWindowBorderColour1,
        M.inactiveWindowBorderColour1,
        "rgba(ff0000" .. scheme.inactiveAlpha .. ")",
        "rgba(ffff00" .. scheme.inactiveAlpha .. ")",
        "rgba(00ff00" .. scheme.inactiveAlpha .. ")",
        "rgba(00ffff" .. scheme.inactiveAlpha .. ")",
        "rgba(0000ff" .. scheme.inactiveAlpha .. ")",
        "rgba(ff00ff" .. scheme.inactiveAlpha .. ")",
        M.inactiveWindowBorderColour2,
        M.inactiveWindowBorderColour2,
    },
    angle = M.borderGradientAngle,
}

return M
