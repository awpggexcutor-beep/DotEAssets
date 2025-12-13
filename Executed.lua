local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- GUI 생성
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DotE_ConnectedGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- 텍스트 라벨 생성
local label = Instance.new("TextLabel")
label.Name = "Message"
label.Parent = screenGui
label.Size = UDim2.new(0, 300, 0, 50)
label.Position = UDim2.new(0.5, -150, 0, 20) -- 상단 중앙
label.BackgroundTransparency = 0.3
label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
label.BorderSizePixel = 0
label.Text = "Script Executed!"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextSize = 22
label.TextTransparency = 0

-- 둥근 모서리
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = label

-- 부드러운 등장 효과
label.TextTransparency = 1
label.BackgroundTransparency = 1

for i = 1, 10 do
	label.TextTransparency = label.TextTransparency - 0.1
	label.BackgroundTransparency = label.BackgroundTransparency - 0.07
	task.wait(0.03)
end

-- 3초 표시
task.wait(3)

-- 사라지는 애니메이션
for i = 1, 10 do
	label.TextTransparency = label.TextTransparency + 0.1
	label.BackgroundTransparency = label.BackgroundTransparency + 0.07
	task.wait(0.03)
end

-- 정리
screenGui:Destroy()
