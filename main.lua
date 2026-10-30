-- ==========================================
-- Jehad Hub - Steal An Egg (Final Full Edition with Toggle UI)
-- Key: wjehad
-- ==========================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

if CoreGui:FindFirstChild("JehadKeyUI") then CoreGui.JehadKeyUI:Destroy() end
if CoreGui:FindFirstChild("JehadMainUI") then CoreGui.JehadMainUI:Destroy() end
if CoreGui:FindFirstChild("JehadToggleUI") then CoreGui.JehadToggleUI:Destroy() end

-- Key System Window
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

    -- Main Hub Frame
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 580, 0, 380)
    MainFrame.Position = UDim2.new(0.5, -390, 0.5, -190)
    MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = MainGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 10)
    MainCorner.Parent = MainFrame

    -- زر عائم صغير على الشاشة لإخفاء وإظهار الواجهة في أي وقت
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

    -- Top Bar
    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 40)
    TopBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    TopBar.BorderSizePixel = 0
    TopBar.Parent = MainFrame

    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 10)
    TopCorner.Parent = TopBar

    local HubTitle = Instance.new("TextLabel")
    HubTitle.Size = UDim2.new(0.6, 0, 1, 0)
    HubTitle.Position = UDim2.new(0.03, 0, 0, 0)
    HubTitle.BackgroundTransparency = 1
    HubTitle.Text = "Jehad Hub | Steal An Egg"
    HubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    HubTitle.Font = Enum.Font.GothamBold
    HubTitle.TextSize = 15
    HubTitle.TextXAlignment = Enum.TextXAlignment.Left
    HubTitle.Parent = TopBar

    -- Sidebar
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

    -- Content Panel
    local ContentPanel = Instance.new("Frame")
    ContentPanel.Size = UDim2.new(1, -300, 1, -50)
    ContentPanel.Position = UDim2.new(0, 145, 0, 45)
    ContentPanel.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    ContentPanel.BorderSizePixel = 0
    ContentPanel.Parent = MainFrame

    local ContentCorner = Instance.new("UICorner")
    ContentCorner.CornerRadius = UDim.new(0, 8)
    ContentCorner.Parent = ContentPanel

    -- ==========================================
    -- Steal Panel (اللوحة الجانبية اليمنى)
    -- ==========================================
    local StealPanel = Instance.new("Frame")
    StealPanel.Size = UDim2.new(0, 200, 1, -50)
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
    StealTitle.Text = "Steal Panel"
    StealTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    StealTitle.Font = Enum.Font.GothamBold
    StealTitle.TextSize = 14
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
    EggsScroll.CanvasSize = UDim2.new(0, 0, 2, 0)
    EggsScroll.Parent = StealPanel

    local EggsLayout = Instance.new("UIListLayout")
    EggsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    EggsLayout.Padding = UDim.new(0, 5)
    EggsLayout.Parent = EggsScroll

    for i = 1, 6 do
        local itemFrame = Instance.new("Frame")
        itemFrame.Size = UDim2.new(1, 0, 0, 45)
        itemFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        itemFrame.Parent = EggsScroll

        local iCorner = Instance.new("UICorner")
        iCorner.CornerRadius = UDim.new(0, 6)
        iCorner.Parent = itemFrame

        local infoLabel = Instance.new("TextLabel")
        infoLabel.Size = UDim2.new(0.65, 0, 1, 0)
        infoLabel.Position = UDim2.new(0.05, 0, 0, 0)
        infoLabel.BackgroundTransparency = 1
        infoLabel.Text = "Egg #" .. i .. " (OP Stats)"
        infoLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
        infoLabel.Font = Enum.Font.Gotham
        infoLabel.TextSize = 11
        infoLabel.TextXAlignment = Enum.TextXAlignment.Left
        infoLabel.Parent = itemFrame

        local stealBtn = Instance.new("TextButton")
        stealBtn.Size = UDim2.new(0.25, 0, 0, 28)
        stealBtn.Position = UDim2.new(0.72, 0, 0.18, 0)
        stealBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
        stealBtn.Text = "Steal"
        stealBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        stealBtn.Font = Enum.Font.GothamBold
        stealBtn.TextSize = 11
        stealBtn.Parent = itemFrame

        local sCorner = Instance.new("UICorner")
        sCorner.CornerRadius = UDim.new(0, 4)
        sCorner.Parent = stealBtn

        stealBtn.MouseButton1Click:Connect(function()
            pcall(function()
                for _, obj in pairs(workspace:GetDescendants()) do
                    if obj:IsA("ProximityPrompt") then
                        fireproximityprompt(obj)
                    end
                end
            end)
        end)
    end

    local function createTab(name, order)
        local tabBtn = Instance.new("TextButton")
        tabBtn.Size = UDim2.new(0.9, 0, 0, 38)
        tabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        tabBtn.Text = name
        tabBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
        tabBtn.Font = Enum.Font.GothamSemibold
        tabBtn.TextSize = 13
        tabBtn.LayoutOrder = order
        tabBtn.Parent = Sidebar

        local tabCorner = Instance.new("UICorner")
        tabCorner.CornerRadius = UDim.new(0, 6)
        tabCorner.Parent = tabBtn

        return tabBtn
    end

    createTab("Farm & Steal", 1)
    createTab("Auto Progression", 2)
    createTab("Player Stats", 3)
    createTab("Settings", 4)

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
