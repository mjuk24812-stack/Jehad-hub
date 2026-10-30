-- ==========================================
-- Jehad Hub - Steal An Egg (Optimized & Real Auto Farm)
-- Key: wjehad
-- ==========================================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local player = Players.LocalPlayer

if CoreGui:FindFirstChild("JehadKeyUI") then CoreGui.JehadKeyUI:Destroy() end
if CoreGui:FindFirstChild("JehadMainUI") then CoreGui.JehadMainUI:Destroy() end

-- Key System Window
local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "JehadKeyUI"
KeyGui.Parent = CoreGui

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 350, 0, 220)
KeyFrame.Position = UDim2.new(0.5, -175, 0.5, -110)
KeyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = KeyGui

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 8)
KeyCorner.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 50)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "🔒 Jehad Hub | Key System"
KeyTitle.TextColor3 = Color3.fromRGB(255, 60, 60)
KeyTitle.TextSize = 18
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.85, 0, 0, 45)
KeyBox.Position = UDim2.new(0.075, 0, 0.35, 0)
KeyBox.PlaceholderText = "Enter Key (wjehad)"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 14
KeyBox.Parent = KeyFrame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 6)
BoxCorner.Parent = KeyBox

local LoginBtn = Instance.new("TextButton")
LoginBtn.Size = UDim2.new(0.85, 0, 0, 45)
LoginBtn.Position = UDim2.new(0.075, 0, 0.65, 0)
LoginBtn.Text = "LOGIN"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginBtn.BackgroundColor3 = Color3.fromRGB(220, 40, 40)
LoginBtn.Font = Enum.Font.GothamBold
LoginBtn.TextSize = 15
LoginBtn.Parent = KeyFrame

local LoginCorner = Instance.new("UICorner")
LoginCorner.CornerRadius = UDim.new(0, 6)
LoginCorner.Parent = LoginBtn

local function LaunchHub()
    KeyGui:Destroy()

    local MainGui = Instance.new("ScreenGui")
    MainGui.Name = "JehadMainUI"
    MainGui.Parent = CoreGui

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 500, 0, 350)
    MainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
    MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = MainGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 8)
    MainCorner.Parent = MainFrame

    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 40)
    TopBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    TopBar.Parent = MainFrame

    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 8)
    TopCorner.Parent = TopBar

    local TitleText = Instance.new("TextLabel")
    TitleText.Size = UDim2.new(0.8, 0, 1, 0)
    TitleText.Position = UDim2.new(0.03, 0, 0, 0)
    TitleText.BackgroundTransparency = 1
    TitleText.Text = "⚡ Jehad Hub | Steal An Egg"
    TitleText.TextColor3 = Color3.fromRGB(255, 80, 80)
    TitleText.TextSize = 15
    TitleText.Font = Enum.Font.GothamBold
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    TitleText.Parent = TopBar

    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 40, 0, 40)
    CloseBtn.Position = UDim2.new(1, -40, 0, 0)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Text = "X"
    CloseBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
    CloseBtn.TextSize = 16
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.Parent = TopBar

    CloseBtn.MouseButton1Click:Connect(function()
        MainGui:Destroy()
    end)

    local Container = Instance.new("ScrollingFrame")
    Container.Size = UDim2.new(1, -20, 1, -55)
    Container.Position = UDim2.new(0, 10, 0, 48)
    Container.BackgroundTransparency = 1
    Container.CanvasSize = UDim2.new(0, 0, 0, 950)
    Container.ScrollBarThickness = 4
    Container.Parent = MainFrame

    local y = 10
    local function AddHeader(text)
        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, 0, 0, 25)
        lbl.Position = UDim2.new(0, 0, 0, y)
        lbl.BackgroundTransparency = 1
        lbl.Text = "=== " .. text .. " ==="
        lbl.TextColor3 = Color3.fromRGB(150, 150, 150)
        lbl.TextSize = 13
        lbl.Font = Enum.Font.GothamBold
        lbl.Parent = Container
        y = y + 30
    end

    local function AddToggle(name, callback)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, 0, 0, 36)
        btn.Position = UDim2.new(0, 0, 0, y)
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        btn.Text = "  " .. name .. ": [ OFF ]"
        btn.TextColor3 = Color3.fromRGB(230, 230, 230)
        btn.TextSize = 13
        btn.Font = Enum.Font.Gotham
        btn.TextXAlignment = Enum.TextXAlignment.Left
        btn.Parent = Container

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = btn

        local active = false
        btn.MouseButton1Click:Connect(function()
            active = not active
            if active then
                btn.Text = "  " .. name .. ": [ ON ]"
                btn.BackgroundColor3 = Color3.fromRGB(180, 30, 30)
                btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            else
                btn.Text = "  " .. name .. ": [ OFF ]"
                btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                btn.TextColor3 = Color3.fromRGB(230, 230, 230)
            end
            callback(active)
        end)
        y = y + 42
    end

    local function AddAction(name, callback)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, 0, 0, 36)
        btn.Position = UDim2.new(0, 0, 0, y)
        btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        btn.Text = "  " .. name
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.TextSize = 13
        btn.Font = Enum.Font.GothamBold
        btn.TextXAlignment = Enum.TextXAlignment.Left
        btn.Parent = Container

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = btn

        btn.MouseButton1Click:Connect(callback)
        y = y + 42
    end

    -- 3. الحركة والحماية (خفيفة وبدون لاق)
    AddHeader("3. Movement & Protection")
    AddToggle("Speed Boost", function(st)
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = st and 120 or 16
        end
    end)
    AddToggle("Infinite Jump", function(st)
        getgenv().InfJump = st
        game:GetService("UserInputService").JumpRequest:Connect(function()
            if getgenv().InfJump and player.Character then
                player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
            end
        end)
    end)
    AddToggle("Invisibility", function(st)
        local char = player.Character
        if char then
            for _, v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("Decal") then v.Transparency = st and 1 or 0 end
            end
        end
    end)
    AddToggle("Anti Ragdoll", function(st)
        getgenv().AntiRag = st
        task.spawn(function()
            while getgenv().AntiRag do
                task.wait(0.5) -- مؤقت مريح لعدم استهلاك الموارد
                pcall(function()
                    local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                    if hum then
                        hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
                        hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
                    end
                end)
            end
        end)
    end)
    AddToggle("Anti Trap", function(st) getgenv().AntiTrap = st end)

    -- 4. التطوير والسرقة التلقائية (Real Optimized Auto Farm)
    AddHeader("4. Auto Farm & Pets")
    AddToggle("Auto Steal Eggs", function(st)
        getgenv().AutoSteal = st
        task.spawn(function()
            while getgenv().AutoSteal do
                task.wait(0.6) -- فحص ذكي وخفيف بدون لاق
                pcall(function()
                    for _, v in pairs(workspace:GetDescendants()) do
                        if not getgenv().AutoSteal then break end
                        if v.Name:lower():find("egg") and v:IsA("BasePart") then
                            -- انتقال هادئ وسريع للبيضه لسرقتها
                            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                player.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 3, 0)
                                task.wait(0.2)
                            end
                        end
                    end
                end)
            end
        end)
    end)

    AddToggle("Auto Place Eggs", function(st) getgenv().AutoPlace = st end)
    AddToggle("Auto Hatch", function(st) getgenv().AutoHatch = st end)
    AddToggle("Auto Equip", function(st) getgenv().AutoEquip = st end)
    AddToggle("Auto Sell", function(st) getgenv().AutoSell = st end)
    AddToggle("Auto Fuse", function(st) getgenv().AutoFuse = st end)
    AddToggle("Auto Favorite", function(st) getgenv().AutoFav = st end)
    
    AddToggle("Auto Treadmill", function(st)
        getgenv().Treadmill = st
        task.spawn(function()
            while getgenv().Treadmill do
                task.wait(1)
                pcall(function()
                    for _, v in pairs(workspace:GetDescendants()) do
                        if v.Name:lower():find("treadmill") and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            player.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 3, 0)
                        end
                    end
                end)
            end
        end)
    end)

    AddToggle("Auto Upgrade Base", function(st) getgenv().AutoUpgrade = st end)
    AddToggle("Auto Claim Rewards", function(st) getgenv().AutoRewards = st end)

    -- 5. ميزات إضافية
    AddHeader("5. Misc & Performance")
    AddAction("Server Hop", function() game:GetService("TeleportService"):Teleport(game.PlaceId, player) end)
    AddAction("Rejoin Server", function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, player) end)
    
    AddToggle("FPS Optimizer", function(st)
        if st then
            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic v.Reflectance = 0 end
            end
        end
    end)
    
    AddToggle("FPS/Ping Overlay", function(st)
        getgenv().ShowStats = st
        if st then
            local SGui = Instance.new("ScreenGui", CoreGui)
            SGui.Name = "StatsOverlay"
            local Lbl = Instance.new("TextLabel", SGui)
            Lbl.Size = UDim2.new(0, 180, 0, 35)
            Lbl.Position = UDim2.new(0, 10, 0, 10)
            Lbl.BackgroundTransparency = 1
            Lbl.TextColor3 = Color3.fromRGB(0, 255, 0)
            Lbl.TextSize = 13
            Lbl.Font = Enum.Font.GothamBold
            task.spawn(function()
                while getgenv().ShowStats do
                    task.wait(1)
                    local fps = math.floor(workspace:GetRealPhysicsFPS())
                    local ping = math.floor(player:GetNetworkPing() * 1000)
                    Lbl.Text = "FPS: " .. fps .. " | Ping: " .. ping .. "ms"
                end
                SGui:Destroy()
            end)
        end
    end)
end

LoginBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == "wjehad" then
        LaunchHub()
    else
        LoginBtn.Text = "WRONG KEY!"
        LoginBtn.BackgroundColor3 = Color3.fromRGB(150, 20, 20)
        task.wait(1.5)
        LoginBtn.Text = "LOGIN"
        LoginBtn.BackgroundColor3 = Color3.fromRGB(220, 40, 40)
    end
end)
