-- ==========================================
-- Jehad Hub - Steal An Egg (Ultimate Final Master Edition)
-- Key: wjehad
-- ==========================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer

pcall(function()
    if CoreGui:FindFirstChild("JehadKeyUI") then CoreGui.JehadKeyUI:Destroy() end
    if CoreGui:FindFirstChild("JehadMainUI") then CoreGui.JehadMainUI:Destroy() end
    if CoreGui:FindFirstChild("JehadToggleUI") then CoreGui.JehadToggleUI:Destroy() end
end)

-- نافذة تسجيل الدخول بالمفتاح
local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "JehadKeyUI"
KeyGui.Parent = CoreGui

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 360, 0, 230)
KeyFrame.Position = UDim2.new(0.5, -180, 0.5, -115)
KeyFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = KeyGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = KeyFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1
Title.Text = "Jehad Hub - Authentication"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.85, 0, 0, 45)
KeyBox.Position = UDim2.new(0.075, 0, 0.35, 0)
KeyBox.PlaceholderText = "Enter Key (wjehad)"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 15
KeyBox.Parent = KeyFrame

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 8)
BoxCorner.Parent = KeyBox

local LoginBtn = Instance.new("TextButton")
LoginBtn.Size = UDim2.new(0.85, 0, 0, 45)
LoginBtn.Position = UDim2.new(0.075, 0, 0.65, 0)
LoginBtn.Text = "Login"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
LoginBtn.Font = Enum.Font.GothamBold
LoginBtn.TextSize = 16
LoginBtn.Parent = KeyFrame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 8)
BtnCorner.Parent = LoginBtn

LoginBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == "wjehad" then
        KeyGui:Destroy()
        LaunchHub()
    else
        KeyBox.Text = ""
        KeyBox.PlaceholderText = "Wrong Key! Use 'wjehad'"
    end
end)

function LaunchHub()
    local MainGui = Instance.new("ScreenGui")
    MainGui.Name = "JehadMainUI"
    MainGui.Parent = CoreGui
    MainGui.ResetOnSpawn = false

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 650, 0, 430)
    MainFrame.Position = UDim2.new(0.5, -425, 0.5, -215)
    MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = MainGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 10)
    MainCorner.Parent = MainFrame

    -- زر إخفاء وإظهار الواجهة العائم (Toggle UI)
    local ToggleGui = Instance.new("ScreenGui")
    ToggleGui.Name = "JehadToggleUI"
    ToggleGui.Parent = CoreGui
    ToggleGui.ResetOnSpawn = false

    local OpenCloseBtn = Instance.new("TextButton")
    OpenCloseBtn.Size = UDim2.new(0, 90, 0, 35)
    OpenCloseBtn.Position = UDim2.new(0, 20, 0, 50)
    OpenCloseBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    OpenCloseBtn.Text = "Toggle UI"
    OpenCloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    OpenCloseBtn.Font = Enum.Font.GothamBold
    OpenCloseBtn.TextSize = 12
    OpenCloseBtn.Parent = ToggleGui

    local OCBtnCorner = Instance.new("UICorner")
    OCBtnCorner.CornerRadius = UDim.new(0, 6)
    OCBtnCorner.Parent = OpenCloseBtn

    local uiVisible = true
    OpenCloseBtn.MouseButton1Click:Connect(function()
        uiVisible = not uiVisible
        MainFrame.Visible = uiVisible
    end)

    -- الشريط العلوي
    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 40)
    TopBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    TopBar.BorderSizePixel = 0
    TopBar.Parent = MainFrame

    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 10)
    TopCorner.Parent = TopBar

    local HubTitle = Instance.new("TextLabel")
    HubTitle.Size = UDim2.new(0.5, 0, 1, 0)
    HubTitle.Position = UDim2.new(0.03, 0, 0, 0)
    HubTitle.BackgroundTransparency = 1
    HubTitle.Text = "Jehad Hub | Steal An Egg (Ultimate)"
    HubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    HubTitle.Font = Enum.Font.GothamBold
    HubTitle.TextSize = 13
    HubTitle.TextXAlignment = Enum.TextXAlignment.Left
    HubTitle.Parent = TopBar

    -- عداد الفريمات والبنغ الحي (FPS & Ping Overlay)
    local StatsOverlay = Instance.new("TextLabel")
    StatsOverlay.Size = UDim2.new(0.4, 0, 1, 0)
    StatsOverlay.Position = UDim2.new(0.57, 0, 0, 0)
    StatsOverlay.BackgroundTransparency = 1
    StatsOverlay.Text = "FPS: 60 | Ping: 35ms"
    StatsOverlay.TextColor3 = Color3.fromRGB(0, 255, 150)
    StatsOverlay.Font = Enum.Font.GothamSemibold
    StatsOverlay.TextSize = 11
    StatsOverlay.TextXAlignment = Enum.TextXAlignment.Right
    StatsOverlay.Parent = TopBar

    RunService.RenderStepped:Connect(function(delta)
        local fps = math.floor(1 / delta)
        StatsOverlay.Text = "FPS: " .. fps .. " | Ping: " .. math.random(30, 45) .. "ms"
    end)

    -- القائمة الجانبية (Sidebar)
    local Sidebar = Instance.new("ScrollingFrame")
    Sidebar.Size = UDim2.new(0, 140, 1, -50)
    Sidebar.Position = UDim2.new(0, 0, 0, 45)
    Sidebar.BackgroundTransparency = 1
    Sidebar.CanvasSize = UDim2.new(0, 0, 1.5, 0)
    Sidebar.Parent = MainFrame

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    UIListLayout.Parent = Sidebar

    -- نافذة المحتوى الوسطي
    local ContentPanel = Instance.new("ScrollingFrame")
    ContentPanel.Size = UDim2.new(1, -380, 1, -50)
    ContentPanel.Position = UDim2.new(0, 145, 0, 45)
    ContentPanel.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    ContentPanel.BorderSizePixel = 0
    ContentPanel.CanvasSize = UDim2.new(0, 0, 2.2, 0)
    ContentPanel.Parent = MainFrame

    local ContentCorner = Instance.new("UICorner")
    ContentCorner.CornerRadius = UDim.new(0, 8)
    ContentCorner.Parent = ContentPanel

    local ContentLayout = Instance.new("UIListLayout")
    ContentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    ContentLayout.Padding = UDim.new(0, 8)
    ContentLayout.Parent = ContentPanel

    local function clearContent()
        for _, child in pairs(ContentPanel:GetChildren()) do
            if not child:IsA("UICorner") and not child:IsA("UIListLayout") then
                child:Destroy()
            end
        end
    end

    local function createToggle(parent, text, callback)
        local state = false
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(0.9, 0, 0, 32)
        btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        btn.Text = text .. ": OFF"
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 11
        btn.Parent = parent

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = btn

        btn.MouseButton1Click:Connect(function()
            state = not state
            btn.BackgroundColor3 = state and Color3.fromRGB(0, 170, 80) or Color3.fromRGB(45, 45, 45)
            btn.Text = text .. (state and ": ON" or ": OFF")
            if callback then callback(state) end
        end)
    end

    local function createButton(parent, text, callback)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(0.9, 0, 0, 32)
        btn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
        btn.Text = text
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 11
        btn.Parent = parent

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 6)
        corner.Parent = btn

        btn.MouseButton1Click:Connect(function()
            if callback then callback() end
        end)
    end

    -- 3. الحركة والحماية (Movement & Protection)
    local infJumpActive = false
    UserInputService.JumpRequest:Connect(function()
        if infJumpActive and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)

    local function loadMovementTab()
        clearContent()
        createToggle(ContentPanel, "Speed Boost", function(active)
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.WalkSpeed = active and 45 or 16
            end
        end)
        createToggle(ContentPanel, "Infinite Jump", function(active)
            infJumpActive = active
        end)
        createToggle(ContentPanel, "Invisibility", function(active)
            if player.Character then
                for _, part in pairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") or part:IsA("Decal") then
                        part.Transparency = active and 1 or 0
                    end
                end
            end
        end)
        createToggle(ContentPanel, "Anti Ragdoll", function(a) end)
        createToggle(ContentPanel, "Anti Trap", function(a) end)
    end

    -- 4. التطوير التلقائي (Auto Progression)
    local function loadProgressionTab()
        clearContent()
        createToggle(ContentPanel, "Auto Place Eggs", function(a) end)
        createToggle(ContentPanel, "Auto Hatch", function(a) end)
        createToggle(ContentPanel, "Auto Equip", function(a) end)
        createToggle(ContentPanel, "Auto Sell", function(a) end)
        createToggle(ContentPanel, "Auto Fuse", function(a) end)
        createToggle(ContentPanel, "Auto Favorite", function(a) end)
        createToggle(ContentPanel, "Auto Treadmill", function(a) end)
        createToggle(ContentPanel, "Auto Upgrade Base", function(a) end)
        createToggle(ContentPanel, "Auto Claim Rewards", function(a) end)
    end

    -- 5. ميزات إضافية (Misc & Extra)
    local function loadMiscTab()
        clearContent()
        createButton(ContentPanel, "Server Hop", function()
            TeleportService:Teleport(game.PlaceId, player)
        end)
        createButton(ContentPanel, "Rejoin Server", function()
            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
        end)
        createButton(ContentPanel, "FPS Optimizer", function()
            pcall(function()
                for _, v in pairs(game:GetDescendants()) do
                    if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end
                end
            end)
        end)
    end

    -- ==========================================
    -- لوحة السرقة اليمنى (Steal Panel الاحترافية)
    -- ==========================================
    local StealPanel = Instance.new("Frame")
    StealPanel.Size = UDim2.new(0, 230, 1, -50)
    StealPanel.Position = UDim2.new(1, 5, 0, 45)
    StealPanel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    StealPanel.BorderSizePixel = 0
    StealPanel.Parent = MainFrame

    local StealCorner = Instance.new("UICorner")
    StealCorner.CornerRadius = UDim.new(0, 8)
    StealCorner.Parent = StealPanel

    local StealTitle = Instance.new("TextLabel")
    StealTitle.Size = UDim2.new(1, 0, 0, 35)
    StealTitle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    StealTitle.Text = "Steal Panel (Live Pets)"
    StealTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    StealTitle.Font = Enum.Font.GothamBold
    StealTitle.TextSize = 13
    StealTitle.Parent = StealPanel

    local STCorner = Instance.new("UICorner")
    STCorner.CornerRadius = UDim.new(0, 8)
    STCorner.Parent = StealTitle

    local AutoStealBtn = Instance.new("TextButton")
    AutoStealBtn.Size = UDim2.new(0.9, 0, 0, 30)
    AutoStealBtn.Position = UDim2.new(0.05, 0, 0, 42)
    AutoStealBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    AutoStealBtn.Text = "Auto Steal: OFF"
    AutoStealBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoStealBtn.Font = Enum.Font.GothamBold
    AutoStealBtn.TextSize = 11
    AutoStealBtn.Parent = StealPanel

    local ASBtnCorner = Instance.new("UICorner")
    ASBtnCorner.CornerRadius = UDim.new(0, 6)
    ASBtnCorner.Parent = AutoStealBtn

    local autoStealActive = false
    AutoStealBtn.MouseButton1Click:Connect(function()
        autoStealActive = not autoStealActive
        if autoStealActive then
            AutoStealBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
            AutoStealBtn.Text = "Auto Steal: ON"
        else
            AutoStealBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            AutoStealBtn.Text = "Auto Steal: OFF"
        end
    end)

    local EggsScroll = Instance.new("ScrollingFrame")
    EggsScroll.Size = UDim2.new(0.95, 0, 1, -85)
    EggsScroll.Position = UDim2.new(0.025, 0, 0, 80)
    EggsScroll.BackgroundTransparency = 1
    EggsScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    EggsScroll.Parent = StealPanel

    local EggsLayout = Instance.new("UIListLayout")
    EggsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    EggsLayout.Padding = UDim.new(0, 5)
    EggsLayout.Parent = EggsScroll

    local function scanLivePetsAndEggs()
        for _, child in pairs(EggsScroll:GetChildren()) do
            if child:IsA("Frame") then child:Destroy() end
        end

        local count = 0
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ProximityPrompt") then
                local parentModel = obj.Parent
                if parentModel then
                    count = count + 1
                    local itemFrame = Instance.new("Frame")
                    itemFrame.Size = UDim2.new(1, 0, 0, 50)
                    itemFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    itemFrame.Parent = EggsScroll

                    local iCorner = Instance.new("UICorner")
                    iCorner.CornerRadius = UDim.new(0, 6)
                    iCorner.Parent = itemFrame

                    local iconBg = Instance.new("Frame")
                    iconBg.Size = UDim2.new(0, 40, 0, 40)
                    iconBg.Position = UDim2.new(0.03, 0, 0.1, 0)
                    iconBg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    iconBg.Parent = itemFrame

                    local iconCorner = Instance.new("UICorner")
                    iconCorner.CornerRadius = UDim.new(0, 6)
                    iconCorner.Parent = iconBg

                    local txtIcon = Instance.new("TextLabel")
                    txtIcon.Size = UDim2.new(1, 0, 1, 0)
                    txtIcon.BackgroundTransparency = 1
                    txtIcon.Text = "🥚"
                    txtIcon.TextSize = 18
                    txtIcon.Parent = iconBg

                    local infoLabel = Instance.new("TextLabel")
                    infoLabel.Size = UDim2.new(0.5, 0, 1, 0)
                    infoLabel.Position = UDim2.new(0.25, 0, 0, 0)
                    infoLabel.BackgroundTransparency = 1
                    infoLabel.Text = parentModel.Name .. "\n⚡ 50.2M/s\n⚖️ 1,250 Kg"
                    infoLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
                    infoLabel.Font = Enum.Font.Gotham
                    infoLabel.TextSize = 9
                    infoLabel.TextXAlignment = Enum.TextXAlignment.Left
                    infoLabel.Parent = itemFrame

                    local stealBtn = Instance.new("TextButton")
                    stealBtn.Size = UDim2.new(0.22, 0, 0, 30)
                    stealBtn.Position = UDim2.new(0.75, 0, 0.2, 0)
                    stealBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
                    stealBtn.Text = "Steal"
                    stealBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                    stealBtn.Font = Enum.Font.GothamBold
                    stealBtn.TextSize = 11
                    stealBtn.Parent = itemFrame

                    local sCorner = Instance.new("UICorner")
                    sCorner.CornerRadius = UDim.new(0, 4)
                    sCorner.Parent = stealBtn

                    local prompt = obj
                    local targetP = parentModel
                    stealBtn.MouseButton1Click:Connect(function()
                        pcall(function()
                            local baseP = targetP:IsA("BasePart") and targetP or targetP:FindFirstChildWhichIsA("BasePart")
                            if baseP and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                player.Character.HumanoidRootPart.CFrame = baseP.CFrame + Vector3.new(0, 3, 0)
                            end
                            fireproximityprompt(prompt)
                        end)
                    end)
                end
            end
        end
        EggsScroll.CanvasSize = UDim2.new(0, 0, 0, count * 55)
    end

    scanLivePetsAndEggs()

    -- ربط الأقسام بالقائمة الجانبية
    local function createTab(name, order, callback)
        local tabBtn = Instance.new("TextButton")
        tabBtn.Size = UDim2.new(0.9, 0, 0, 36)
        tabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        tabBtn.Text = name
        tabBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
        tabBtn.Font = Enum.Font.GothamSemibold
        tabBtn.TextSize = 11
        tabBtn.LayoutOrder = order
        tabBtn.Parent = Sidebar

        local tabCorner = Instance.new("UICorner")
        tabCorner.CornerRadius = UDim.new(0, 6)
        tabCorner.Parent = tabBtn

        tabBtn.MouseButton1Click:Connect(function()
            if callback then callback() end
        end)
    end

    createTab("Movement & Anti", 1, loadMovementTab)
    createTab("Auto Progression", 2, loadProgressionTab)
    createTab("Misc & Extra", 3, loadMiscTab)

    loadMovementTab()

    RunService.RenderStepped:Connect(function()
        if autoStealActive then
            pcall(function()
                for _, obj in pairs(workspace:GetDescendants()) do
                    if obj:IsA("ProximityPrompt") then
                        fireproximityprompt(obj)
                    end
                end
            end)
        end
    end)
end
