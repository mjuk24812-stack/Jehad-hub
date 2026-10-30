-- ==========================================
-- Jehad Hub - Steal An Egg (Fully Verified & Optimized)
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
Title.Text = "Jehad Hub - Verification"
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

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 600, 0, 400)
    MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
    MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = MainGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 10)
    MainCorner.Parent = MainFrame

    -- Top Bar
    local TopBar = Instance.new("Frame")
    TopBar.Size = UDim2.new(1, 0, 0, 45)
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

    -- Sidebar (القوائم الجانبية)
    local Sidebar = Instance.new("ScrollingFrame")
    Sidebar.Size = UDim2.new(0, 150, 1, -55)
    Sidebar.Position = UDim2.new(0, 0, 0, 50)
    Sidebar.BackgroundTransparency = 1
    Sidebar.CanvasSize = UDim2.new(0, 0, 1.5, 0)
    Sidebar.Parent = MainFrame

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    UIListLayout.Parent = Sidebar

    -- Content Panel (لوحة المحتوى)
    local ContentPanel = Instance.new("Frame")
    ContentPanel.Size = UDim2.new(1, -160, 1, -60)
    ContentPanel.Position = UDim2.new(0, 155, 0, 52)
    ContentPanel.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    ContentPanel.BorderSizePixel = 0
    ContentPanel.Parent = MainFrame

    local ContentCorner = Instance.new("UICorner")
    ContentCorner.CornerRadius = UDim.new(0, 8)
    ContentCorner.Parent = ContentPanel

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

    local function createToggle(text, yPos, callback)
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(0.7, 0, 0, 32)
        label.Position = UDim2.new(0.05, 0, 0, yPos)
        label.BackgroundTransparency = 1
        label.Text = text
        label.TextColor3 = Color3.fromRGB(230, 230, 230)
        label.Font = Enum.Font.Gotham
        label.TextSize = 14
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Parent = ContentPanel

        local toggleBtn = Instance.new("TextButton")
        toggleBtn.Size = UDim2.new(0, 55, 0, 26)
        toggleBtn.Position = UDim2.new(0.75, 0, 0, yPos + 3)
        toggleBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        toggleBtn.Text = "OFF"
        toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        toggleBtn.Font = Enum.Font.GothamBold
        toggleBtn.TextSize = 12
        toggleBtn.Parent = ContentPanel

        local tCorner = Instance.new("UICorner")
        tCorner.CornerRadius = UDim.new(0, 6)
        tCorner.Parent = toggleBtn

        local active = false
        toggleBtn.MouseButton1Click:Connect(function()
            active = not active
            if active then
                toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
                toggleBtn.Text = "ON"
            else
                toggleBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                toggleBtn.Text = "OFF"
            end
            if callback then callback(active) end
        end)
    end

    createToggle("Auto Steal Eggs", 15, function(v) print("Auto Steal:", v) end)
    createToggle("Instant Steal", 55, function(v) print("Instant Steal:", v) end)
    createToggle("Anti-Guard / Trap", 95, function(v) print("Anti Guard:", v) end)
    createToggle("Auto Treadmill", 135, function(v) print("Auto Treadmill:", v) end)
    createToggle("Auto Buy Trail", 175, function(v) print("Auto Trail:", v) end)
    createToggle("Auto Upgrade Base", 215, function(v) print("Auto Base:", v) end)
end
