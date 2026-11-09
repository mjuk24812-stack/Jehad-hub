local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.Size = UDim2.new(0, 300, 0, 200)

UICorner.Parent = Frame

Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.00
Title.Position = UDim2.new(0, 0, 0.1, 0)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "Jehad Hub Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.00

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
TextBox.Size = UDim2.new(0.8, 0, 0, 40)
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderText = "Enter Key..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.00

UICorner_2.Parent = TextBox

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
TextButton.Position = UDim2.new(0.1, 0, 0.7, 0)
TextButton.Size = UDim2.new(0.8, 0, 0, 40)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "Check Key"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 16.00

UICorner_3.Parent = TextButton

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

TextButton.MouseButton1Click:Connect(function()
    if TextBox.Text == "wjehad" then
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mjuk24812-stack/Jehad-hub/main/main.lua"))()
    else
        TextButton.Text = "Wrong Key!"
        task.wait(1)
        TextButton.Text = "Check Key"
    end
end)
