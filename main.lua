Getgenv().Setting = {
    ["Team"] = "Pirates",        
    ["Chat"] = {},
    ["Skip Race V4"] = true,        
    ["Melee"] = {
        ["Enable"] = true,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1.5
    },       
    ["Sword"] = {
        ["Enable"] = true,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1
    },        
    ["Gun"] = {
        ["Enable"] = true,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1,
        ["GunMode"] = false
    },        
    ["Fruit"] = {
        ["Enable"] = true,
        ["Z"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["X"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["C"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["V"] = {["Enable"] = false, ["HoldTime"] = 0.1},
        ["F"] = {["Enable"] = true, ["HoldTime"] = 0.1},
        ["Delay"] = 1
    },        
    ["Hunt"] = {
        ["Min"] = 0,
        ["Max"] = 30000000
    },       
    ["Skip"] = {
        ["Fruit"] = false,
        ["FruitList"] = {"Buddha", "Leopard", "T-Rex"},
        ["SafeZone"] = true,
        ["NoHaki"] = true,
        ["NoPvP"] = true
    },        
    ["SafeHealth"] = {
        ["Health"] = 4700,
        ["Mask"] = false,
        ["MaskType"] = "Mask",
        ["RaceV4"] = false
    },        
    ["Another"] = {
        ["V3"] = true,
        ["V4"] = true,
        ["CustomHealth"] = true,
        ["Health"] = 4700,
        ["WhiteScreen"] = false,
        ["FPSBoots"] = false,
        ["AutoServerHop"] = true,
        ["HopWhenNoBounty"] = true,
        ["BountyLock"] = false,
        ["BountyLockAt"] = 30000000,
        ["ServerHopAfterTime"] = false,
        ["ServerHopTime"] = 900,
        ["CheckCombatBeforeHop"] = true,
        ["MaxPlayersInServer"] = 8
    },            
    ["Webhook"] = {
        ["Enabled"] = false,
        ["Url"] = ""
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/mjuk24812-stack/Jehad-hub/main/main.lua"))()

