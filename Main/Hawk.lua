if not isfolder("HawkHUB") then
	makefolder("HawkHUB")
	makefolder("HawkHUB\\Assets")
	makefolder("HawkHUB\\Settings")
	makefolder("HawkHUB\\Assets\\Credits")
else
	print([[Folder "HawkHUB" is already in workspace]])
	if isfolder("HawkHUB\\Assets") then
		print([[Folder "Assets" is already in "HawkHUB" folder]])
		if isfolder("HawkHUB\\Assets\\Credits") then
			print([[Folder "Credits" is already in "HawkHUB" Assets]])
		else
			makefolder("HawkHUB\\Assets\\Credits")
		end
	else
		makefolder("HawkHUB\\Assets")
		makefolder("HawkHUB\\Assets\\Credits")
	end
	
	if isfolder("HawkHUB\\Settings") then
		print([[Folder "Settings" is already in "HawkHUB" folder]])
	else
		makefolder("HawkHUB\\Settings")
	end
end

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local speaker = Players.LocalPlayer
local start = tick()
game:GetService("CoreGui").ExperienceChat.Enabled = true
game:GetService("CoreGui").PlayerList.Enabled = true
game:GetService("CoreGui").RobloxGui.Backpack.Position = UDim2.new(0, 0, 0, 0)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local topBarApp = game:GetService("CoreGui"):FindFirstChild("TopBarApp")
local unibarLeftFrame = topBarApp and topBarApp:FindFirstChild("TopBarApp") and topBarApp.TopBarApp:FindFirstChild("UnibarLeftFrame")
local menuIconHolder = topBarApp and topBarApp:FindFirstChild("TopBarApp") and topBarApp.TopBarApp:FindFirstChild("MenuIconHolder")
local userId = game:GetService("Players").LocalPlayer.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(userId, thumbType, thumbSize)
local LocalPlayer= game:GetService("Players").LocalPlayer
local PlayerService = game:GetService("Players")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")
local OnPc = UserInputService.KeyboardEnabled
local corner = Instance.new("UICorner")
local Circle = Instance.new("ImageLabel")
Circle.Name = "Circle"
Circle.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
Circle.BackgroundTransparency = 1
Circle.ImageColor3 = Color3.new(0.454902, 0.454902, 0.454902)
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.8
Circle.BorderSizePixel = 0
corner.Parent = Circle
mouse = Mouse

if game:GetService("CoreGui"):FindFirstChild("HawkHUB") then
	game:GetService("CoreGui"):FindFirstChild("HawkHUB"):Destroy()
end

function ripple(button, x, y)
	spawn(
		function()
			button.ClipsDescendants = true
			local circle = Circle:Clone()
			circle.Parent = button
			circle.ZIndex = 1000
			circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
			local new_x = x - circle.AbsolutePosition.X
			local new_y = y - circle.AbsolutePosition.Y
			circle.Position = UDim2.new(0, new_x, 0, new_y)
			local size = 0
			if button.AbsoluteSize.X > button.AbsoluteSize.Y then
				size = button.AbsoluteSize.X * 1.5
			elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
				size = button.AbsoluteSize.Y * 1.5
			elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
				size = button.AbsoluteSize.X * 1.5
			end
			circle:TweenSizeAndPosition(
				UDim2.new(0, size, 0, size),
				UDim2.new(0.5, -size / 2, 0.5, -size / 2),
				"Out",
				"Linear",
				0.3
			)
			for i = 1, 10 do
				circle.ImageTransparency = i / 10
				wait()
			end
			circle:Destroy()
		end
	)
end

local Supported = {
	"swift",
	"bunni",
	"visual",
	"krnl",
	"codex",
	"vega",
	"velocity",
	"zenith",
	"volcano",
	"seli",
	"arceus"
}

local HawkHUB = {
	HawkHUB = Instance.new("ScreenGui"),
	TabSystem = Instance.new("Frame"),
	GuiToggle = Instance.new("ImageButton"),
	Tabs = Instance.new("ScrollingFrame"),
	UIListLayout = Instance.new("UIListLayout"),
	HomeHolder = Instance.new("ScrollingFrame"),
	HomeTab = Instance.new("Frame"),
	UICorner = Instance.new("UICorner"),
	HomeButton = Instance.new("TextButton"),
	HomeIcon = Instance.new("ImageLabel"),
	UIListLayout_2 = Instance.new("UIListLayout"),
	UIGradient = Instance.new("UIGradient"),
	ScriptsHolder = Instance.new("ScrollingFrame"),
	ScriptsTab = Instance.new("Frame"),
	UICorner_2 = Instance.new("UICorner"),
	ScriptsButton = Instance.new("TextButton"),
	ScripstIcon = Instance.new("ImageLabel"),
	UIListLayout_3 = Instance.new("UIListLayout"),
	UIGradient_2 = Instance.new("UIGradient"),
	PlayerHolder = Instance.new("ScrollingFrame"),
	PlayerTab = Instance.new("Frame"),
	UICorner_3 = Instance.new("UICorner"),
	PlayerButton = Instance.new("TextButton"),
	PlayerIcon = Instance.new("ImageLabel"),
	UIListLayout_4 = Instance.new("UIListLayout"),
	UIGradient_3 = Instance.new("UIGradient"),
	GamesHolder = Instance.new("ScrollingFrame"),
	GamesTab = Instance.new("Frame"),
	UICorner_4 = Instance.new("UICorner"),
	GamesButton = Instance.new("TextButton"),
	GamesIcon = Instance.new("ImageLabel"),
	UIListLayout_5 = Instance.new("UIListLayout"),
	UIGradient_4 = Instance.new("UIGradient"),
	CreditsHolder = Instance.new("ScrollingFrame"),
	CreditsTab = Instance.new("Frame"),
	UICorner_5 = Instance.new("UICorner"),
	CreditsButton = Instance.new("TextButton"),
	CreditsIcon = Instance.new("ImageLabel"),
	UIListLayout_6 = Instance.new("UIListLayout"),
	UIGradient_5 = Instance.new("UIGradient"),
	Void = Instance.new("Frame"),
	SettinsHolder = Instance.new("ScrollingFrame"),
	SettingsTab = Instance.new("Frame"),
	UICorner_6 = Instance.new("UICorner"),
	SettingsButton = Instance.new("TextButton"),
	SettingsIcon = Instance.new("ImageLabel"),
	UIListLayout_7 = Instance.new("UIListLayout"),
	UIGradient_6 = Instance.new("UIGradient"),
	UICorner_7 = Instance.new("UICorner"),
	Shadow = Instance.new("ImageLabel"),
	PageHolder = Instance.new("Frame"),
	HomePage = Instance.new("Frame"),
	welkamtumacannel = Instance.new("TextLabel"),
	messsaj = Instance.new("TextLabel"),
	HomeItemsHolder = Instance.new("Frame"),
	UICorner_8 = Instance.new("UICorner"),
	UIListLayout_8 = Instance.new("UIListLayout"),
	First = Instance.new("Frame"),
	UIListLayout_9 = Instance.new("UIListLayout"),
	Player = Instance.new("Frame"),
	UICorner_9 = Instance.new("UICorner"),
	Avatar = Instance.new("ImageLabel"),
	UICorner_10 = Instance.new("UICorner"),
	UserName = Instance.new("TextLabel"),
	DisplayName = Instance.new("TextLabel"),
	PlayerTextTitle = Instance.new("TextLabel"),
	UIGradient_7 = Instance.new("UIGradient"),
	Client = Instance.new("Frame"),
	UICorner_11 = Instance.new("UICorner"),
	ClientTextTitle = Instance.new("TextLabel"),
	Msg = Instance.new("TextLabel"),
	Executor = Instance.new("TextLabel"),
	UIGradient_8 = Instance.new("UIGradient"),
	Timer = Instance.new("Frame"),
	UICorner_12 = Instance.new("UICorner"),
	clocker = Instance.new("ImageLabel"),
	realtime = Instance.new("TextLabel"),
	UIGradient_9 = Instance.new("UIGradient"),
	Second = Instance.new("Frame"),
	Server = Instance.new("Frame"),
	UICorner_13 = Instance.new("UICorner"),
	Infos = Instance.new("Frame"),
	UIListLayout_10 = Instance.new("UIListLayout"),
	Players = Instance.new("TextLabel"),
	placeid = Instance.new("TextLabel"),
	gameid = Instance.new("TextLabel"),
	JobId = Instance.new("TextLabel"),
	LoadingTime = Instance.new("TextLabel"),
	FPS = Instance.new("TextLabel"),
	ServerTitleText = Instance.new("TextLabel"),
	UIGradient_10 = Instance.new("UIGradient"),
	UIListLayout_11 = Instance.new("UIListLayout"),
	Third = Instance.new("Frame"),
	UIListLayout_12 = Instance.new("UIListLayout"),
	Friends = Instance.new("Frame"),
	UICorner_14 = Instance.new("UICorner"),
	friendstitle = Instance.new("TextLabel"),
	FriendInfos = Instance.new("Frame"),
	UIListLayout_13 = Instance.new("UIListLayout"),
	Online = Instance.new("TextLabel"),
	Offline = Instance.new("TextLabel"),
	All = Instance.new("TextLabel"),
	InGame = Instance.new("TextLabel"),
	FriendListHolder = Instance.new("Frame"),
	UICorner_15 = Instance.new("UICorner"),
	FriendsList = Instance.new("ScrollingFrame"),
	UIListLayout_14 = Instance.new("UIListLayout"),
	Search = Instance.new("TextBox"),
	ImageLabel = Instance.new("ImageLabel"),
	ScriptsPage = Instance.new("Frame"),
	UICorner_16 = Instance.new("UICorner"),
	Scripts = Instance.new("ScrollingFrame"),
	UIListLayout_15 = Instance.new("UIListLayout"),
	Hawk = Instance.new("Frame"),
	UICorner_17 = Instance.new("UICorner"),
	Title = Instance.new("TextLabel"),
	Typee = Instance.new("TextLabel"),
	Credits = Instance.new("TextLabel"),
	Center = Instance.new("Frame"),
	UICorner_18 = Instance.new("UICorner"),
	UIListLayout_16 = Instance.new("UIListLayout"),
	CopyFrame = Instance.new("Frame"),
	Copy = Instance.new("TextButton"),
	UICorner_19 = Instance.new("UICorner"),
	UICorner_20 = Instance.new("UICorner"),
	ExecuteFrame = Instance.new("Frame"),
	UICorner_21 = Instance.new("UICorner"),
	Execute = Instance.new("TextButton"),
	UICorner_22 = Instance.new("UICorner"),
	Rise = Instance.new("Frame"),
	UICorner_23 = Instance.new("UICorner"),
	Title_2 = Instance.new("TextLabel"),
	Typee_2 = Instance.new("TextLabel"),
	Credits_2 = Instance.new("TextLabel"),
	Center_2 = Instance.new("Frame"),
	UICorner_24 = Instance.new("UICorner"),
	UIListLayout_17 = Instance.new("UIListLayout"),
	CopyFrame_2 = Instance.new("Frame"),
	Copy_2 = Instance.new("TextButton"),
	UICorner_25 = Instance.new("UICorner"),
	UICorner_26 = Instance.new("UICorner"),
	ExecuteFrame_2 = Instance.new("Frame"),
	UICorner_27 = Instance.new("UICorner"),
	Execute_2 = Instance.new("TextButton"),
	UICorner_28 = Instance.new("UICorner"),
	Solarium = Instance.new("Frame"),
	UICorner_29 = Instance.new("UICorner"),
	Title_3 = Instance.new("TextLabel"),
	Typee_3 = Instance.new("TextLabel"),
	Credits_3 = Instance.new("TextLabel"),
	Center_3 = Instance.new("Frame"),
	UICorner_30 = Instance.new("UICorner"),
	UIListLayout_18 = Instance.new("UIListLayout"),
	CopyFrame_3 = Instance.new("Frame"),
	Copy_3 = Instance.new("TextButton"),
	UICorner_31 = Instance.new("UICorner"),
	UICorner_32 = Instance.new("UICorner"),
	ExecuteFrame_3 = Instance.new("Frame"),
	UICorner_33 = Instance.new("UICorner"),
	Execute_3 = Instance.new("TextButton"),
	UICorner_34 = Instance.new("UICorner"),
	InfiniteYield = Instance.new("Frame"),
	UICorner_35 = Instance.new("UICorner"),
	Title_4 = Instance.new("TextLabel"),
	Typee_4 = Instance.new("TextLabel"),
	Credits_4 = Instance.new("TextLabel"),
	Center_4 = Instance.new("Frame"),
	UICorner_36 = Instance.new("UICorner"),
	UIListLayout_19 = Instance.new("UIListLayout"),
	CopyFrame_4 = Instance.new("Frame"),
	Copy_4 = Instance.new("TextButton"),
	UICorner_37 = Instance.new("UICorner"),
	UICorner_38 = Instance.new("UICorner"),
	ExecuteFrame_4 = Instance.new("Frame"),
	UICorner_39 = Instance.new("UICorner"),
	Execute_4 = Instance.new("TextButton"),
	UICorner_40 = Instance.new("UICorner"),
	Nexora = Instance.new("Frame"),
	UICorner_41 = Instance.new("UICorner"),
	Title_5 = Instance.new("TextLabel"),
	Typee_5 = Instance.new("TextLabel"),
	Credits_5 = Instance.new("TextLabel"),
	Center_5 = Instance.new("Frame"),
	UICorner_42 = Instance.new("UICorner"),
	UIListLayout_20 = Instance.new("UIListLayout"),
	CopyFrame_5 = Instance.new("Frame"),
	Copy_5 = Instance.new("TextButton"),
	UICorner_43 = Instance.new("UICorner"),
	UICorner_44 = Instance.new("UICorner"),
	ExecuteFrame_5 = Instance.new("Frame"),
	UICorner_45 = Instance.new("UICorner"),
	Execute_5 = Instance.new("TextButton"),
	UICorner_46 = Instance.new("UICorner"),
	Mistik = Instance.new("Frame"),
	UICorner_47 = Instance.new("UICorner"),
	Title_6 = Instance.new("TextLabel"),
	Typee_6 = Instance.new("TextLabel"),
	Credits_6 = Instance.new("TextLabel"),
	Center_6 = Instance.new("Frame"),
	UICorner_48 = Instance.new("UICorner"),
	UIListLayout_21 = Instance.new("UIListLayout"),
	CopyFrame_6 = Instance.new("Frame"),
	Copy_6 = Instance.new("TextButton"),
	UICorner_49 = Instance.new("UICorner"),
	UICorner_50 = Instance.new("UICorner"),
	ExecuteFrame_6 = Instance.new("Frame"),
	UICorner_51 = Instance.new("UICorner"),
	Execute_6 = Instance.new("TextButton"),
	UICorner_52 = Instance.new("UICorner"),
	Sirius = Instance.new("Frame"),
	UICorner_53 = Instance.new("UICorner"),
	Title_7 = Instance.new("TextLabel"),
	Typee_7 = Instance.new("TextLabel"),
	Credits_7 = Instance.new("TextLabel"),
	Center_7 = Instance.new("Frame"),
	UICorner_54 = Instance.new("UICorner"),
	UIListLayout_22 = Instance.new("UIListLayout"),
	CopyFrame_7 = Instance.new("Frame"),
	Copy_7 = Instance.new("TextButton"),
	UICorner_55 = Instance.new("UICorner"),
	UICorner_56 = Instance.new("UICorner"),
	ExecuteFrame_7 = Instance.new("Frame"),
	UICorner_57 = Instance.new("UICorner"),
	Execute_7 = Instance.new("TextButton"),
	UICorner_58 = Instance.new("UICorner"),
	UIGradient_11 = Instance.new("UIGradient"),
	CMDX = Instance.new("Frame"),
	UICorner_59 = Instance.new("UICorner"),
	Title_8 = Instance.new("TextLabel"),
	Typee_8 = Instance.new("TextLabel"),
	Credits_8 = Instance.new("TextLabel"),
	Center_8 = Instance.new("Frame"),
	UICorner_60 = Instance.new("UICorner"),
	UIListLayout_23 = Instance.new("UIListLayout"),
	CopyFrame_8 = Instance.new("Frame"),
	Copy_8 = Instance.new("TextButton"),
	UICorner_61 = Instance.new("UICorner"),
	UICorner_62 = Instance.new("UICorner"),
	ExecuteFrame_8 = Instance.new("Frame"),
	UICorner_63 = Instance.new("UICorner"),
	Execute_8 = Instance.new("TextButton"),
	UICorner_64 = Instance.new("UICorner"),
	DomainX = Instance.new("Frame"),
	UICorner_65 = Instance.new("UICorner"),
	Typee_9 = Instance.new("TextLabel"),
	Credits_9 = Instance.new("TextLabel"),
	Title_9 = Instance.new("TextLabel"),
	Center_9 = Instance.new("Frame"),
	UICorner_66 = Instance.new("UICorner"),
	UIListLayout_24 = Instance.new("UIListLayout"),
	CopyFrame_9 = Instance.new("Frame"),
	Copy_9 = Instance.new("TextButton"),
	UICorner_67 = Instance.new("UICorner"),
	UICorner_68 = Instance.new("UICorner"),
	ExecuteFrame_9 = Instance.new("Frame"),
	UICorner_69 = Instance.new("UICorner"),
	Execute_9 = Instance.new("TextButton"),
	UICorner_70 = Instance.new("UICorner"),
	EzHUB = Instance.new("Frame"),
	UICorner_71 = Instance.new("UICorner"),
	Typee_10 = Instance.new("TextLabel"),
	Credits_10 = Instance.new("TextLabel"),
	Title_10 = Instance.new("TextLabel"),
	Center_10 = Instance.new("Frame"),
	UICorner_72 = Instance.new("UICorner"),
	UIListLayout_25 = Instance.new("UIListLayout"),
	CopyFrame_10 = Instance.new("Frame"),
	Copy_10 = Instance.new("TextButton"),
	UICorner_73 = Instance.new("UICorner"),
	UICorner_74 = Instance.new("UICorner"),
	ExecuteFrame_10 = Instance.new("Frame"),
	UICorner_75 = Instance.new("UICorner"),
	Execute_10 = Instance.new("TextButton"),
	UICorner_76 = Instance.new("UICorner"),
	FatesAdmin = Instance.new("Frame"),
	UICorner_77 = Instance.new("UICorner"),
	Credits_11 = Instance.new("TextLabel"),
	Typee_11 = Instance.new("TextLabel"),
	Title_11 = Instance.new("TextLabel"),
	Center_11 = Instance.new("Frame"),
	UICorner_78 = Instance.new("UICorner"),
	UIListLayout_26 = Instance.new("UIListLayout"),
	CopyFrame_11 = Instance.new("Frame"),
	Copy_11 = Instance.new("TextButton"),
	UICorner_79 = Instance.new("UICorner"),
	UICorner_80 = Instance.new("UICorner"),
	ExecuteFrame_11 = Instance.new("Frame"),
	UICorner_81 = Instance.new("UICorner"),
	Execute_11 = Instance.new("TextButton"),
	UICorner_82 = Instance.new("UICorner"),
	OwlHUB = Instance.new("Frame"),
	UICorner_83 = Instance.new("UICorner"),
	Typee_12 = Instance.new("TextLabel"),
	Credits_12 = Instance.new("TextLabel"),
	Title_12 = Instance.new("TextLabel"),
	Center_12 = Instance.new("Frame"),
	UICorner_84 = Instance.new("UICorner"),
	UIListLayout_27 = Instance.new("UIListLayout"),
	CopyFrame_12 = Instance.new("Frame"),
	Copy_12 = Instance.new("TextButton"),
	UICorner_85 = Instance.new("UICorner"),
	UICorner_86 = Instance.new("UICorner"),
	ExecuteFrame_12 = Instance.new("Frame"),
	UICorner_87 = Instance.new("UICorner"),
	Execute_12 = Instance.new("TextButton"),
	UICorner_88 = Instance.new("UICorner"),
	UIGradient_12 = Instance.new("UIGradient"),
	Search_2 = Instance.new("TextBox"),
	ImageLabel_2 = Instance.new("ImageLabel"),
	ScriptsPageTitle = Instance.new("TextLabel"),
	UIGradient_13 = Instance.new("UIGradient"),
	GamesPage = Instance.new("Frame"),
	UICorner_89 = Instance.new("UICorner"),
	GamesPageTitle = Instance.new("TextLabel"),
	Search_3 = Instance.new("TextBox"),
	ImageLabel_3 = Instance.new("ImageLabel"),
	Games = Instance.new("ScrollingFrame"),
	UIListLayout_28 = Instance.new("UIListLayout"),
	CreditsPage = Instance.new("Frame"),
	UICorner_92 = Instance.new("UICorner"),
	CreditsPageTitle = Instance.new("TextLabel"),
	Credits_13 = Instance.new("ScrollingFrame"),
	UIListLayout_30 = Instance.new("UIListLayout"),
	Search_4 = Instance.new("TextBox"),
	ImageLabel_4 = Instance.new("ImageLabel"),
	SettingsPage = Instance.new("Frame"),
	UICorner_97 = Instance.new("UICorner"),
	SettingsPageTitle = Instance.new("TextLabel"),
	Settingzz = Instance.new("Frame"),
	UIListLayout_33 = Instance.new("UIListLayout"),
	GameDetectToggli = Instance.new("TextLabel"),
	Loadiir = Instance.new("TextLabel"),
	KeySave = Instance.new("TextLabel"),
	KeyBind = Instance.new("TextLabel"),
	BindSelection = Instance.new("Frame"),
	Bind = Instance.new("TextButton"),
	UICorner_104 = Instance.new("UICorner"),
	LocalPage = Instance.new("Frame"),
	Glow = Instance.new("ImageLabel"),
	LocalPageTitle = Instance.new("TextLabel"),
	UICorner_105 = Instance.new("UICorner"),
	Sliders = Instance.new("Frame"),
	WalkSpeed = Instance.new("Frame"),
	UICorner_106 = Instance.new("UICorner"),
	Title_14 = Instance.new("TextLabel"),
	Action = Instance.new("TextButton"),
	Amount = Instance.new("Frame"),
	UICorner_107 = Instance.new("UICorner"),
	UIListLayout_34 = Instance.new("UIListLayout"),
	FlySpeed = Instance.new("Frame"),
	UICorner_108 = Instance.new("UICorner"),
	Title_15 = Instance.new("TextLabel"),
	Action_2 = Instance.new("TextButton"),
	Amount_2 = Instance.new("Frame"),
	UICorner_109 = Instance.new("UICorner"),
	HipHeight = Instance.new("Frame"),
	UICorner_110 = Instance.new("UICorner"),
	Title_16 = Instance.new("TextLabel"),
	Action_3 = Instance.new("TextButton"),
	Amount_3 = Instance.new("Frame"),
	UICorner_111 = Instance.new("UICorner"),
	JumpPower = Instance.new("Frame"),
	UICorner_112 = Instance.new("UICorner"),
	Title_17 = Instance.new("TextLabel"),
	Action_4 = Instance.new("TextButton"),
	Amount_4 = Instance.new("Frame"),
	UICorner_113 = Instance.new("UICorner"),
	Items = Instance.new("Frame"),
	UIListLayout_35 = Instance.new("UIListLayout"),
	WalkSpeed_2 = Instance.new("Frame"),
	UICorner_114 = Instance.new("UICorner"),
	SpeedIcon = Instance.new("ImageLabel"),
	SpeedButton = Instance.new("TextButton"),
	UICorner_115 = Instance.new("UICorner"),
	JumpPower_2 = Instance.new("Frame"),
	UICorner_116 = Instance.new("UICorner"),
	JumpIcon = Instance.new("ImageLabel"),
	JumpPowerButton = Instance.new("TextButton"),
	UICorner_117 = Instance.new("UICorner"),
	Fly = Instance.new("Frame"),
	UICorner_118 = Instance.new("UICorner"),
	FlyIcon = Instance.new("ImageLabel"),
	FlyButton = Instance.new("TextButton"),
	UICorner_119 = Instance.new("UICorner"),
	HipHeight_2 = Instance.new("Frame"),
	UICorner_120 = Instance.new("UICorner"),
	HipIcon = Instance.new("ImageLabel"),
	HipButton = Instance.new("TextButton"),
	UICorner_121 = Instance.new("UICorner"),
	Reset = Instance.new("Frame"),
	UICorner_122 = Instance.new("UICorner"),
	ResetIcon = Instance.new("ImageLabel"),
	ResetButton = Instance.new("TextButton"),
	UICorner_123 = Instance.new("UICorner"),
	Rejoin = Instance.new("Frame"),
	UICorner_124 = Instance.new("UICorner"),
	RejoinIcon = Instance.new("ImageLabel"),
	RejoinButton = Instance.new("TextButton"),
	UICorner_125 = Instance.new("UICorner"),
	Serverhop = Instance.new("Frame"),
	UICorner_126 = Instance.new("UICorner"),
	ShopIcon = Instance.new("ImageLabel"),
	ShopButton = Instance.new("TextButton"),
	UICorner_127 = Instance.new("UICorner"),
	Invisible = Instance.new("Frame"),
	UICorner_128 = Instance.new("UICorner"),
	InvisibleIcon = Instance.new("ImageLabel"),
	InvisibleButton = Instance.new("TextButton"),
	UICorner_129 = Instance.new("UICorner"),
	UIGradient_16 = Instance.new("UIGradient"),
}

HawkHUB.HawkHUB.Name = "HawkHUB"
HawkHUB.HawkHUB.Parent = game:FindFirstChild("CoreGui")
HawkHUB.HawkHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HawkHUB.HawkHUB.ResetOnSpawn = false
HawkHUB.HawkHUB.IgnoreGuiInset = true

HawkHUB.TabSystem.Name = "TabSystem"
HawkHUB.TabSystem.Parent = HawkHUB.HawkHUB
HawkHUB.TabSystem.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
HawkHUB.TabSystem.BorderColor3 = Color3.fromRGB(45, 45, 45)
HawkHUB.TabSystem.BorderSizePixel = 0
HawkHUB.TabSystem.Position = UDim2.new(0.5, -192, 1, 10)
HawkHUB.TabSystem.Size = UDim2.new(0, 384, 0, 54)
HawkHUB.TabSystem.ZIndex = 4

HawkHUB.GuiToggle.Name = "GuiToggle"
HawkHUB.GuiToggle.Parent = HawkHUB.TabSystem
HawkHUB.GuiToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.GuiToggle.BackgroundTransparency = 1.000
HawkHUB.GuiToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GuiToggle.BorderSizePixel = 0
HawkHUB.GuiToggle.Position = UDim2.new(0.5, -15, 0.7, -70)
HawkHUB.GuiToggle.Size = UDim2.new(0, 25, 0, 25)
HawkHUB.GuiToggle.Visible = false
HawkHUB.GuiToggle.Image = "rbxassetid://6034818372"
HawkHUB.GuiToggle.ImageTransparency = 1.000

HawkHUB.Tabs.Name = "Tabs"
HawkHUB.Tabs.Parent = HawkHUB.TabSystem
HawkHUB.Tabs.Active = true
HawkHUB.Tabs.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Tabs.BackgroundTransparency = 1.000
HawkHUB.Tabs.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Tabs.BorderSizePixel = 0
HawkHUB.Tabs.Position = UDim2.new(0.0314957313, 0, 0, 0)
HawkHUB.Tabs.Size = UDim2.new(0, 361, 0, 53)
HawkHUB.Tabs.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.Tabs.ScrollBarThickness = 0

HawkHUB.UIListLayout.Parent = HawkHUB.Tabs
HawkHUB.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout.Padding = UDim.new(0, 7)

HawkHUB.HomeHolder.Name = "HomeHolder"
HawkHUB.HomeHolder.Parent = HawkHUB.Tabs
HawkHUB.HomeHolder.Active = true
HawkHUB.HomeHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.HomeHolder.BackgroundTransparency = 1.000
HawkHUB.HomeHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HomeHolder.BorderSizePixel = 0
HawkHUB.HomeHolder.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.HomeHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.HomeHolder.ScrollBarThickness = 0
HawkHUB.HomeHolder.ScrollingEnabled = false

HawkHUB.HomeTab.Name = "HomeTab"
HawkHUB.HomeTab.Parent = HawkHUB.HomeHolder
HawkHUB.HomeTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.HomeTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HomeTab.BorderSizePixel = 0
HawkHUB.HomeTab.Position = UDim2.new(0, 0, 0, 40)
HawkHUB.HomeTab.Size = UDim2.new(0, 31, 0, 31)

HawkHUB.UICorner.CornerRadius = UDim.new(0, 7)
HawkHUB.UICorner.Parent = HawkHUB.HomeTab

HawkHUB.HomeButton.Name = "HomeButton"
HawkHUB.HomeButton.Parent = HawkHUB.HomeTab
HawkHUB.HomeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.HomeButton.BackgroundTransparency = 1.000
HawkHUB.HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HomeButton.BorderSizePixel = 0
HawkHUB.HomeButton.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.HomeButton.Font = Enum.Font.SourceSans
HawkHUB.HomeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HomeButton.TextSize = 14.000
HawkHUB.HomeButton.TextTransparency = 1.000

HawkHUB.HomeIcon.Name = "HomeIcon"
HawkHUB.HomeIcon.Parent = HawkHUB.HomeButton
HawkHUB.HomeIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.HomeIcon.BackgroundTransparency = 1.000
HawkHUB.HomeIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HomeIcon.BorderSizePixel = 0
HawkHUB.HomeIcon.Position = UDim2.new(0.5, -7, 0.5, -7)
HawkHUB.HomeIcon.Size = UDim2.new(0, 16, 0, 16)
HawkHUB.HomeIcon.Image = "rbxassetid://13556188790"

HawkHUB.UIListLayout_2.Parent = HawkHUB.HomeButton
HawkHUB.UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_2.Padding = UDim.new(0, 7)

HawkHUB.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(190, 131, 131)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 131, 131))}
HawkHUB.UIGradient.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
HawkHUB.UIGradient.Parent = HawkHUB.HomeTab

HawkHUB.ScriptsHolder.Name = "ScriptsHolder"
HawkHUB.ScriptsHolder.Parent = HawkHUB.Tabs
HawkHUB.ScriptsHolder.Active = true
HawkHUB.ScriptsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ScriptsHolder.BackgroundTransparency = 1.000
HawkHUB.ScriptsHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ScriptsHolder.BorderSizePixel = 0
HawkHUB.ScriptsHolder.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.ScriptsHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.ScriptsHolder.ScrollBarThickness = 0
HawkHUB.ScriptsHolder.ScrollingEnabled = false

HawkHUB.ScriptsTab.Name = "ScriptsTab"
HawkHUB.ScriptsTab.Parent = HawkHUB.ScriptsHolder
HawkHUB.ScriptsTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ScriptsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ScriptsTab.BorderSizePixel = 0
HawkHUB.ScriptsTab.Position = UDim2.new(0, 0, 0, 40)
HawkHUB.ScriptsTab.Size = UDim2.new(0, 31, 0, 31)

HawkHUB.UICorner_2.CornerRadius = UDim.new(0, 7)
HawkHUB.UICorner_2.Parent = HawkHUB.ScriptsTab

HawkHUB.ScriptsButton.Name = "ScriptsButton"
HawkHUB.ScriptsButton.Parent = HawkHUB.ScriptsTab
HawkHUB.ScriptsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ScriptsButton.BackgroundTransparency = 1.000
HawkHUB.ScriptsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ScriptsButton.BorderSizePixel = 0
HawkHUB.ScriptsButton.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.ScriptsButton.Font = Enum.Font.SourceSans
HawkHUB.ScriptsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ScriptsButton.TextSize = 14.000
HawkHUB.ScriptsButton.TextTransparency = 1.000

HawkHUB.ScripstIcon.Name = "ScripstIcon"
HawkHUB.ScripstIcon.Parent = HawkHUB.ScriptsButton
HawkHUB.ScripstIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ScripstIcon.BackgroundTransparency = 1.000
HawkHUB.ScripstIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ScripstIcon.BorderSizePixel = 0
HawkHUB.ScripstIcon.Position = UDim2.new(0.5, -7, 0.5, -7)
HawkHUB.ScripstIcon.Size = UDim2.new(0, 18, 0, 18)
HawkHUB.ScripstIcon.Image = "rbxassetid://9080478424"

HawkHUB.UIListLayout_3.Parent = HawkHUB.ScriptsButton
HawkHUB.UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_3.Padding = UDim.new(0, 7)

HawkHUB.UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(192, 133, 192)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(192, 133, 192))}
HawkHUB.UIGradient_2.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
HawkHUB.UIGradient_2.Parent = HawkHUB.ScriptsTab

HawkHUB.PlayerHolder.Name = "PlayerHolder"
HawkHUB.PlayerHolder.Parent = HawkHUB.Tabs
HawkHUB.PlayerHolder.Active = true
HawkHUB.PlayerHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.PlayerHolder.BackgroundTransparency = 1.000
HawkHUB.PlayerHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.PlayerHolder.BorderSizePixel = 0
HawkHUB.PlayerHolder.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.PlayerHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.PlayerHolder.ScrollBarThickness = 0
HawkHUB.PlayerHolder.ScrollingEnabled = false

HawkHUB.PlayerTab.Name = "PlayerTab"
HawkHUB.PlayerTab.Parent = HawkHUB.PlayerHolder
HawkHUB.PlayerTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.PlayerTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.PlayerTab.BorderSizePixel = 0
HawkHUB.PlayerTab.Position = UDim2.new(0, 0, 0, 40)
HawkHUB.PlayerTab.Size = UDim2.new(0, 31, 0, 31)

HawkHUB.UICorner_3.CornerRadius = UDim.new(0, 7)
HawkHUB.UICorner_3.Parent = HawkHUB.PlayerTab

HawkHUB.PlayerButton.Name = "PlayerButton"
HawkHUB.PlayerButton.Parent = HawkHUB.PlayerTab
HawkHUB.PlayerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.PlayerButton.BackgroundTransparency = 1.000
HawkHUB.PlayerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.PlayerButton.BorderSizePixel = 0
HawkHUB.PlayerButton.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.PlayerButton.Font = Enum.Font.SourceSans
HawkHUB.PlayerButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.PlayerButton.TextSize = 14.000
HawkHUB.PlayerButton.TextTransparency = 1.000

HawkHUB.PlayerIcon.Name = "PlayerIcon"
HawkHUB.PlayerIcon.Parent = HawkHUB.PlayerButton
HawkHUB.PlayerIcon.BackgroundTransparency = 1.000
HawkHUB.PlayerIcon.BorderSizePixel = 0
HawkHUB.PlayerIcon.Position = UDim2.new(0.5, -7, 0.5, -7)
HawkHUB.PlayerIcon.Size = UDim2.new(0, 18, 0, 18)
HawkHUB.PlayerIcon.Image = "rbxassetid://13556192296"

HawkHUB.UIListLayout_4.Parent = HawkHUB.PlayerButton
HawkHUB.UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_4.Padding = UDim.new(0, 7)

HawkHUB.UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(103, 192, 103)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(103, 192, 103))}
HawkHUB.UIGradient_3.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_3.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
HawkHUB.UIGradient_3.Parent = HawkHUB.PlayerTab

HawkHUB.GamesHolder.Name = "GamesHolder"
HawkHUB.GamesHolder.Parent = HawkHUB.Tabs
HawkHUB.GamesHolder.Active = true
HawkHUB.GamesHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.GamesHolder.BackgroundTransparency = 1.000
HawkHUB.GamesHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GamesHolder.BorderSizePixel = 0
HawkHUB.GamesHolder.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.GamesHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.GamesHolder.ScrollBarThickness = 0
HawkHUB.GamesHolder.ScrollingEnabled = false

HawkHUB.GamesTab.Name = "GamesTab"
HawkHUB.GamesTab.Parent = HawkHUB.GamesHolder
HawkHUB.GamesTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.GamesTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GamesTab.BorderSizePixel = 0
HawkHUB.GamesTab.Position = UDim2.new(0, 0, 0, 40)
HawkHUB.GamesTab.Size = UDim2.new(0, 31, 0, 31)

HawkHUB.UICorner_4.CornerRadius = UDim.new(0, 7)
HawkHUB.UICorner_4.Parent = HawkHUB.GamesTab

HawkHUB.GamesButton.Name = "GamesButton"
HawkHUB.GamesButton.Parent = HawkHUB.GamesTab
HawkHUB.GamesButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.GamesButton.BackgroundTransparency = 1.000
HawkHUB.GamesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GamesButton.BorderSizePixel = 0
HawkHUB.GamesButton.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.GamesButton.Font = Enum.Font.SourceSans
HawkHUB.GamesButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GamesButton.TextSize = 14.000
HawkHUB.GamesButton.TextTransparency = 1.000

HawkHUB.GamesIcon.Name = "GamesIcon"
HawkHUB.GamesIcon.Parent = HawkHUB.GamesButton
HawkHUB.GamesIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.GamesIcon.BackgroundTransparency = 1.000
HawkHUB.GamesIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GamesIcon.BorderSizePixel = 0
HawkHUB.GamesIcon.Position = UDim2.new(0.5, -7, 0.5, -7)
HawkHUB.GamesIcon.Size = UDim2.new(0, 16, 0, 16)
HawkHUB.GamesIcon.Image = "rbxassetid://119860545832855"

HawkHUB.UIListLayout_5.Parent = HawkHUB.GamesButton
HawkHUB.UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_5.Padding = UDim.new(0, 7)

HawkHUB.UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(192, 192, 119)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(192, 192, 119))}
HawkHUB.UIGradient_4.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_4.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
HawkHUB.UIGradient_4.Parent = HawkHUB.GamesTab

HawkHUB.CreditsHolder.Name = "CreditsHolder"
HawkHUB.CreditsHolder.Parent = HawkHUB.Tabs
HawkHUB.CreditsHolder.Active = true
HawkHUB.CreditsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.CreditsHolder.BackgroundTransparency = 1.000
HawkHUB.CreditsHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.CreditsHolder.BorderSizePixel = 0
HawkHUB.CreditsHolder.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.CreditsHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.CreditsHolder.ScrollBarThickness = 0
HawkHUB.CreditsHolder.ScrollingEnabled = false

HawkHUB.CreditsTab.Name = "CreditsTab"
HawkHUB.CreditsTab.Parent = HawkHUB.CreditsHolder
HawkHUB.CreditsTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.CreditsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.CreditsTab.BorderSizePixel = 0
HawkHUB.CreditsTab.Position = UDim2.new(0, 0, 0, 40)
HawkHUB.CreditsTab.Size = UDim2.new(0, 31, 0, 31)

HawkHUB.UICorner_5.CornerRadius = UDim.new(0, 7)
HawkHUB.UICorner_5.Parent = HawkHUB.CreditsTab

HawkHUB.CreditsButton.Name = "CreditsButton"
HawkHUB.CreditsButton.Parent = HawkHUB.CreditsTab
HawkHUB.CreditsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.CreditsButton.BackgroundTransparency = 1.000
HawkHUB.CreditsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.CreditsButton.BorderSizePixel = 0
HawkHUB.CreditsButton.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.CreditsButton.Font = Enum.Font.SourceSans
HawkHUB.CreditsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.CreditsButton.TextSize = 14.000
HawkHUB.CreditsButton.TextTransparency = 1.000

HawkHUB.CreditsIcon.Name = "CreditsIcon"
HawkHUB.CreditsIcon.Parent = HawkHUB.CreditsButton
HawkHUB.CreditsIcon.BackgroundTransparency = 1.000
HawkHUB.CreditsIcon.BorderSizePixel = 0
HawkHUB.CreditsIcon.Position = UDim2.new(0.5, -7, 0.5, -7)
HawkHUB.CreditsIcon.Size = UDim2.new(0, 16, 0, 16)
HawkHUB.CreditsIcon.Image = "http://www.roblox.com/asset/?id=6034287518"

HawkHUB.UIListLayout_6.Parent = HawkHUB.CreditsButton
HawkHUB.UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_6.Padding = UDim.new(0, 7)

HawkHUB.UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(133, 133, 192)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(133, 133, 192))}
HawkHUB.UIGradient_5.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_5.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
HawkHUB.UIGradient_5.Parent = HawkHUB.CreditsTab

HawkHUB.Void.Name = "Void"
HawkHUB.Void.Parent = HawkHUB.Tabs
HawkHUB.Void.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Void.BackgroundTransparency = 1.000
HawkHUB.Void.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Void.BorderSizePixel = 0
HawkHUB.Void.Position = UDim2.new(0.526315808, 0, 0.245283023, 0)
HawkHUB.Void.Size = UDim2.new(0, 133, 0, 28)

HawkHUB.SettinsHolder.Name = "SettinsHolder"
HawkHUB.SettinsHolder.Parent = HawkHUB.Tabs
HawkHUB.SettinsHolder.Active = true
HawkHUB.SettinsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.SettinsHolder.BackgroundTransparency = 1.000
HawkHUB.SettinsHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.SettinsHolder.BorderSizePixel = 0
HawkHUB.SettinsHolder.Position = UDim2.new(0.902999997, 0, 0.204999998, 0)
HawkHUB.SettinsHolder.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.SettinsHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.SettinsHolder.ScrollBarThickness = 0
HawkHUB.SettinsHolder.ScrollingEnabled = false

HawkHUB.SettingsTab.Name = "SettingsTab"
HawkHUB.SettingsTab.Parent = HawkHUB.SettinsHolder
HawkHUB.SettingsTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.SettingsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.SettingsTab.BorderSizePixel = 0
HawkHUB.SettingsTab.Position = UDim2.new(0, 0, 0, 40)
HawkHUB.SettingsTab.Size = UDim2.new(0, 31, 0, 31)

HawkHUB.UICorner_6.CornerRadius = UDim.new(0, 7)
HawkHUB.UICorner_6.Parent = HawkHUB.SettingsTab

HawkHUB.SettingsButton.Name = "SettingsButton"
HawkHUB.SettingsButton.Parent = HawkHUB.SettingsTab
HawkHUB.SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.SettingsButton.BackgroundTransparency = 1.000
HawkHUB.SettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.SettingsButton.BorderSizePixel = 0
HawkHUB.SettingsButton.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.SettingsButton.Font = Enum.Font.SourceSans
HawkHUB.SettingsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.SettingsButton.TextSize = 14.000
HawkHUB.SettingsButton.TextTransparency = 1.000

HawkHUB.SettingsIcon.Name = "SettingsIcon"
HawkHUB.SettingsIcon.Parent = HawkHUB.SettingsButton
HawkHUB.SettingsIcon.BackgroundTransparency = 1.000
HawkHUB.SettingsIcon.BorderSizePixel = 0
HawkHUB.SettingsIcon.Position = UDim2.new(0.5, -7, 0.5, -7)
HawkHUB.SettingsIcon.Size = UDim2.new(0, 16, 0, 16)
HawkHUB.SettingsIcon.Image = "http://www.roblox.com/asset/?id=6031280882"

HawkHUB.UIListLayout_7.Parent = HawkHUB.SettingsButton
HawkHUB.UIListLayout_7.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_7.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_7.Padding = UDim.new(0, 7)

HawkHUB.UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(84, 84, 192)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(84, 84, 192))}
HawkHUB.UIGradient_6.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_6.Rotation = 45
HawkHUB.UIGradient_6.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(1.00, 0.20)}
HawkHUB.UIGradient_6.Parent = HawkHUB.SettingsTab

HawkHUB.UICorner_7.CornerRadius = UDim.new(0, 10)
HawkHUB.UICorner_7.Parent = HawkHUB.TabSystem

HawkHUB.Shadow.Name = "Shadow"
HawkHUB.Shadow.Parent = HawkHUB.TabSystem
HawkHUB.Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
HawkHUB.Shadow.BackgroundTransparency = 1.000
HawkHUB.Shadow.BorderSizePixel = 0
HawkHUB.Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
HawkHUB.Shadow.Size = UDim2.new(1, 47, 1, 47)
HawkHUB.Shadow.ZIndex = -1
HawkHUB.Shadow.Image = "rbxassetid://6014261993"
HawkHUB.Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Shadow.ImageTransparency = 0.600
HawkHUB.Shadow.ScaleType = Enum.ScaleType.Slice
HawkHUB.Shadow.SliceCenter = Rect.new(49, 49, 450, 450)

HawkHUB.PageHolder.Name = "PageHolder"
HawkHUB.PageHolder.Parent = HawkHUB.HawkHUB
HawkHUB.PageHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.PageHolder.BackgroundTransparency = 1.000
HawkHUB.PageHolder.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.PageHolder.BorderSizePixel = 0
HawkHUB.PageHolder.Size = UDim2.new(1, 0, 1, 0)

HawkHUB.HomePage.Name = "HomePage"
HawkHUB.HomePage.Parent = HawkHUB.PageHolder
HawkHUB.HomePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.HomePage.BackgroundTransparency = 1.000
HawkHUB.HomePage.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HomePage.BorderSizePixel = 0
HawkHUB.HomePage.Position = UDim2.new(0.015285355, 0, 0.0278207101, 0)
HawkHUB.HomePage.Size = UDim2.new(0, 988, 0, 351)
HawkHUB.HomePage.Visible = false

HawkHUB.welkamtumacannel.Name = "welkamtumacannel"
HawkHUB.welkamtumacannel.Parent = HawkHUB.HomePage
HawkHUB.welkamtumacannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.welkamtumacannel.BackgroundTransparency = 1.000
HawkHUB.welkamtumacannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.welkamtumacannel.BorderSizePixel = 0
HawkHUB.welkamtumacannel.Position = UDim2.new(-0.00202429155, 0, 0.150997147, 0)
HawkHUB.welkamtumacannel.Size = UDim2.new(0.338056684, 0, 0.0569800586, 0)
HawkHUB.welkamtumacannel.Font = Enum.Font.GothamBold
HawkHUB.welkamtumacannel.Text = "Hello, "..LocalPlayer.DisplayName.."!"
HawkHUB.welkamtumacannel.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.welkamtumacannel.TextSize = 16.000
HawkHUB.welkamtumacannel.TextTransparency = 1.000
HawkHUB.welkamtumacannel.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.messsaj.Name = "messsaj"
HawkHUB.messsaj.Parent = HawkHUB.HomePage
HawkHUB.messsaj.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.messsaj.BackgroundTransparency = 1.000
HawkHUB.messsaj.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.messsaj.BorderSizePixel = 0
HawkHUB.messsaj.Position = UDim2.new(-0.00202429155, 0, 0.207977206, 0)
HawkHUB.messsaj.Size = UDim2.new(0.338056684, 0, 0.0455840454, 0)
HawkHUB.messsaj.Font = Enum.Font.Gotham
HawkHUB.messsaj.Text = ""
HawkHUB.messsaj.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.messsaj.TextSize = 16.000
HawkHUB.messsaj.TextTransparency = 1.000
HawkHUB.messsaj.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.HomeItemsHolder.Name = "HomeItemsHolder"
HawkHUB.HomeItemsHolder.Parent = HawkHUB.HomePage
HawkHUB.HomeItemsHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.HomeItemsHolder.BackgroundTransparency = 1.000
HawkHUB.HomeItemsHolder.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.HomeItemsHolder.BorderSizePixel = 0
HawkHUB.HomeItemsHolder.Position = UDim2.new(-0.00202429155, 0, 0.299145311, 0)
HawkHUB.HomeItemsHolder.Size = UDim2.new(0, 956, 0, 225)

HawkHUB.UICorner_8.Parent = HawkHUB.HomeItemsHolder

HawkHUB.UIListLayout_8.Parent = HawkHUB.HomeItemsHolder
HawkHUB.UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_8.Padding = UDim.new(0, 30)

HawkHUB.First.Name = "First"
HawkHUB.First.Parent = HawkHUB.HomeItemsHolder
HawkHUB.First.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.First.BackgroundTransparency = 1.000
HawkHUB.First.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.First.BorderSizePixel = 0
HawkHUB.First.Size = UDim2.new(0, 220, 0, 260)

HawkHUB.UIListLayout_9.Parent = HawkHUB.First
HawkHUB.UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_9.Padding = UDim.new(0, 9)

HawkHUB.Player.Name = "Player"
HawkHUB.Player.Parent = HawkHUB.First
HawkHUB.Player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Player.BackgroundTransparency = 1.000
HawkHUB.Player.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Player.BorderSizePixel = 0
HawkHUB.Player.Size = UDim2.new(0, 218, 0, 88)

HawkHUB.UICorner_9.Parent = HawkHUB.Player

HawkHUB.Avatar.Name = "Avatar"
HawkHUB.Avatar.Parent = HawkHUB.Player
HawkHUB.Avatar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Avatar.BackgroundTransparency = 1.000
HawkHUB.Avatar.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Avatar.BorderSizePixel = 0
HawkHUB.Avatar.Position = UDim2.new(0.0406517759, 0, 0.28701055, 0)
HawkHUB.Avatar.Size = UDim2.new(0, 50, 0, 50)
HawkHUB.Avatar.Image = content
HawkHUB.Avatar.ImageTransparency = 1.000

HawkHUB.UICorner_10.CornerRadius = UDim.new(6, 6)
HawkHUB.UICorner_10.Parent = HawkHUB.Avatar

HawkHUB.UserName.Name = "UserName"
HawkHUB.UserName.Parent = HawkHUB.Avatar
HawkHUB.UserName.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
HawkHUB.UserName.BackgroundTransparency = 1.000
HawkHUB.UserName.BorderColor3 = Color3.fromRGB(24, 24, 24)
HawkHUB.UserName.BorderSizePixel = 0
HawkHUB.UserName.Position = UDim2.new(1.26666725, 0, 0.479999989, 0)
HawkHUB.UserName.Size = UDim2.new(0, 136, 0, 14)
HawkHUB.UserName.Font = Enum.Font.SourceSans
HawkHUB.UserName.Text = "@"
HawkHUB.UserName.TextColor3 = Color3.fromRGB(199, 199, 199)
HawkHUB.UserName.TextSize = 16.000
HawkHUB.UserName.TextTransparency = 1.000
HawkHUB.UserName.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.DisplayName.Name = "DisplayName"
HawkHUB.DisplayName.Parent = HawkHUB.Avatar
HawkHUB.DisplayName.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
HawkHUB.DisplayName.BackgroundTransparency = 1.000
HawkHUB.DisplayName.BorderColor3 = Color3.fromRGB(24, 24, 24)
HawkHUB.DisplayName.BorderSizePixel = 0
HawkHUB.DisplayName.Position = UDim2.new(1.26666725, 0, 0.208888859, 0)
HawkHUB.DisplayName.Size = UDim2.new(0, 136, 0, 13)
HawkHUB.DisplayName.Font = Enum.Font.SourceSans
HawkHUB.DisplayName.Text = ""
HawkHUB.DisplayName.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.DisplayName.TextSize = 16.000
HawkHUB.DisplayName.TextTransparency = 1.000
HawkHUB.DisplayName.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.PlayerTextTitle.Name = "PlayerTextTitle"
HawkHUB.PlayerTextTitle.Parent = HawkHUB.Player
HawkHUB.PlayerTextTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.PlayerTextTitle.BackgroundTransparency = 1.000
HawkHUB.PlayerTextTitle.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.PlayerTextTitle.BorderSizePixel = 0
HawkHUB.PlayerTextTitle.Position = UDim2.new(0.0410000011, 0, 0.0599999987, 0)
HawkHUB.PlayerTextTitle.Size = UDim2.new(0, 104, 0, 14)
HawkHUB.PlayerTextTitle.Font = Enum.Font.SourceSans
HawkHUB.PlayerTextTitle.Text = "Local Player"
HawkHUB.PlayerTextTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.PlayerTextTitle.TextSize = 14.000
HawkHUB.PlayerTextTitle.TextTransparency = 1.000
HawkHUB.PlayerTextTitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(60, 102, 60)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 30, 30))}
HawkHUB.UIGradient_7.Offset = Vector2.new(0.300000012, 0)
HawkHUB.UIGradient_7.Rotation = -120
HawkHUB.UIGradient_7.Parent = HawkHUB.Player

HawkHUB.Client.Name = "Client"
HawkHUB.Client.Parent = HawkHUB.First
HawkHUB.Client.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Client.BackgroundTransparency = 1.000
HawkHUB.Client.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Client.BorderSizePixel = 0
HawkHUB.Client.Position = UDim2.new(0, 0, 0.431111097, 0)
HawkHUB.Client.Size = UDim2.new(0, 218, 0, 106)

HawkHUB.UICorner_11.Parent = HawkHUB.Client

HawkHUB.ClientTextTitle.Name = "ClientTextTitle"
HawkHUB.ClientTextTitle.Parent = HawkHUB.Client
HawkHUB.ClientTextTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.ClientTextTitle.BackgroundTransparency = 1.000
HawkHUB.ClientTextTitle.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.ClientTextTitle.BorderSizePixel = 0
HawkHUB.ClientTextTitle.Position = UDim2.new(0.0410000011, 0, 0.0599999987, 0)
HawkHUB.ClientTextTitle.Size = UDim2.new(0, 104, 0, 14)
HawkHUB.ClientTextTitle.Font = Enum.Font.SourceSans
HawkHUB.ClientTextTitle.Text = "Client"
HawkHUB.ClientTextTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ClientTextTitle.TextSize = 14.000
HawkHUB.ClientTextTitle.TextTransparency = 1.000
HawkHUB.ClientTextTitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Msg.Name = "Msg"
HawkHUB.Msg.Parent = HawkHUB.Client
HawkHUB.Msg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Msg.BackgroundTransparency = 1.000
HawkHUB.Msg.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Msg.BorderSizePixel = 0
HawkHUB.Msg.Position = UDim2.new(0.0484264269, 0, 0.461454868, 0)
HawkHUB.Msg.Size = UDim2.new(0, 197, 0, 47)
HawkHUB.Msg.Font = Enum.Font.SourceSans
HawkHUB.Msg.Text = "N/A"
HawkHUB.Msg.TextColor3 = Color3.fromRGB(184, 184, 184)
HawkHUB.Msg.TextSize = 15.000
HawkHUB.Msg.TextTransparency = 1.000
HawkHUB.Msg.TextWrapped = true
HawkHUB.Msg.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Executor.Name = "Executor"
HawkHUB.Executor.Parent = HawkHUB.Client
HawkHUB.Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Executor.BackgroundTransparency = 1.000
HawkHUB.Executor.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Executor.BorderSizePixel = 0
HawkHUB.Executor.Position = UDim2.new(0.0484264269, 0, 0.255786836, 0)
HawkHUB.Executor.Size = UDim2.new(0, 175, 0, 22)
HawkHUB.Executor.Font = Enum.Font.SourceSans
HawkHUB.Executor.Text = ""

local executorfix = false
for i, v in pairs(Supported) do
	if executorfix == false then
		if string.lower(tostring(identifyexecutor())):find(v) then
			HawkHUB.Msg.Text = "This client is supported. You can use script with no problem!"
			HawkHUB.Executor.Text = "Executor: <font face='Gotham' color='rgb(0,255,0)'>"..identifyexecutor().."</font>"
			executorfix = true
		else
			HawkHUB.Msg.Text = "Unsupported Client. You may face problems while using the script."
			HawkHUB.Executor.Text = "Executor: <font face='Gotham' color='rgb(255,0,0)'>"..identifyexecutor().."</font>"
		end
	end
end

HawkHUB.Executor.TextColor3 = Color3.fromRGB(239, 239, 239)
HawkHUB.Executor.TextSize = 16.000
HawkHUB.Executor.TextTransparency = 1.000
HawkHUB.Executor.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Executor.RichText = true

HawkHUB.UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 85, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 30, 30))}
HawkHUB.UIGradient_8.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_8.Rotation = 45
HawkHUB.UIGradient_8.Parent = HawkHUB.Client

HawkHUB.Timer.Name = "Timer"
HawkHUB.Timer.Parent = HawkHUB.First
HawkHUB.Timer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Timer.BackgroundTransparency = 1.000
HawkHUB.Timer.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Timer.BorderSizePixel = 0
HawkHUB.Timer.Position = UDim2.new(1.73395325e-08, 0, 0.942222238, 0)
HawkHUB.Timer.Size = UDim2.new(0, 127, 0, 48)

HawkHUB.UICorner_12.Parent = HawkHUB.Timer

HawkHUB.clocker.Name = "clocker"
HawkHUB.clocker.Parent = HawkHUB.Timer
HawkHUB.clocker.BackgroundTransparency = 1.000
HawkHUB.clocker.BorderSizePixel = 0
HawkHUB.clocker.Position = UDim2.new(0.081541799, 0, 0.158602402, 0)
HawkHUB.clocker.Size = UDim2.new(0, 31, 0, 31)
HawkHUB.clocker.Image = "http://www.roblox.com/asset/?id=6034983856"
HawkHUB.clocker.ImageColor3 = Color3.fromRGB(221, 221, 221)
HawkHUB.clocker.ImageTransparency = 1.000

HawkHUB.realtime.Name = "realtime"
HawkHUB.realtime.Parent = HawkHUB.Timer
HawkHUB.realtime.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.realtime.BackgroundTransparency = 1.000
HawkHUB.realtime.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.realtime.BorderSizePixel = 0
HawkHUB.realtime.Position = UDim2.new(0.342378765, 0, 0.0772857666, 0)
HawkHUB.realtime.Size = UDim2.new(0, 77, 0, 40)
HawkHUB.realtime.Font = Enum.Font.SourceSans
HawkHUB.realtime.Text = "01:12"
HawkHUB.realtime.TextColor3 = Color3.fromRGB(221, 221, 221)
HawkHUB.realtime.TextSize = 27.000
HawkHUB.realtime.TextTransparency = 1.000

HawkHUB.UIGradient_9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(200, 87, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 30, 30))}
HawkHUB.UIGradient_9.Offset = Vector2.new(0, 0.699999988)
HawkHUB.UIGradient_9.Rotation = -60
HawkHUB.UIGradient_9.Parent = HawkHUB.Timer

HawkHUB.Second.Name = "Second"
HawkHUB.Second.Parent = HawkHUB.HomeItemsHolder
HawkHUB.Second.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Second.BackgroundTransparency = 1.000
HawkHUB.Second.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Second.BorderSizePixel = 0
HawkHUB.Second.Size = UDim2.new(0, 220, 0, 260)

HawkHUB.Server.Name = "Server"
HawkHUB.Server.Parent = HawkHUB.Second
HawkHUB.Server.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Server.BackgroundTransparency = 1.000
HawkHUB.Server.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Server.BorderSizePixel = 0
HawkHUB.Server.Size = UDim2.new(1.01249027, 0, 0.531205416, 0)

HawkHUB.UICorner_13.Parent = HawkHUB.Server

HawkHUB.Infos.Name = "Infos"
HawkHUB.Infos.Parent = HawkHUB.Server
HawkHUB.Infos.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Infos.BackgroundTransparency = 1.000
HawkHUB.Infos.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Infos.BorderSizePixel = 0
HawkHUB.Infos.Position = UDim2.new(0.0520000011, 0, 0.200000003, 0)
HawkHUB.Infos.Size = UDim2.new(0, 198, 0, 109)

HawkHUB.UIListLayout_10.Parent = HawkHUB.Infos
HawkHUB.UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_10.Padding = UDim.new(0, 3)

HawkHUB.Players.Name = "Players"
HawkHUB.Players.Parent = HawkHUB.Infos
HawkHUB.Players.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Players.BackgroundTransparency = 1.000
HawkHUB.Players.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Players.BorderSizePixel = 0
HawkHUB.Players.Size = UDim2.new(0, 198, 0, 14)
HawkHUB.Players.Font = Enum.Font.Gotham
HawkHUB.Players.Text = ""
HawkHUB.Players.TextColor3 = Color3.fromRGB(184, 184, 184)
HawkHUB.Players.TextSize = 16.000
HawkHUB.Players.TextTransparency = 1.000
HawkHUB.Players.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Players.RichText = true

HawkHUB.placeid.Name = "placeid"
HawkHUB.placeid.Parent = HawkHUB.Infos
HawkHUB.placeid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.placeid.BackgroundTransparency = 1.000
HawkHUB.placeid.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.placeid.BorderSizePixel = 0
HawkHUB.placeid.Position = UDim2.new(0, 0, 0.168316826, 0)
HawkHUB.placeid.Size = UDim2.new(0, 211, 0, 14)
HawkHUB.placeid.Font = Enum.Font.Gotham
HawkHUB.placeid.Text = "Place Id: <font face='Gotham' color='rgb(255,255,255)'>"..game.PlaceId.."</font>"
HawkHUB.placeid.TextColor3 = Color3.fromRGB(184, 184, 184)
HawkHUB.placeid.TextSize = 16.000
HawkHUB.placeid.TextTransparency = 1.000
HawkHUB.placeid.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.placeid.RichText = true

HawkHUB.gameid.Name = "gameid"
HawkHUB.gameid.Parent = HawkHUB.Infos
HawkHUB.gameid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.gameid.BackgroundTransparency = 1.000
HawkHUB.gameid.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.gameid.BorderSizePixel = 0
HawkHUB.gameid.Position = UDim2.new(0, 0, 0.336633652, 0)
HawkHUB.gameid.Size = UDim2.new(0, 198, 0, 14)
HawkHUB.gameid.Font = Enum.Font.Gotham
HawkHUB.gameid.Text = "Game Id: <font face='Gotham' color='rgb(255,255,255)'>"..game.GameId.."</font>"
HawkHUB.gameid.TextColor3 = Color3.fromRGB(184, 184, 184)
HawkHUB.gameid.TextSize = 16.000
HawkHUB.gameid.TextTransparency = 1.000
HawkHUB.gameid.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.gameid.RichText = true

HawkHUB.JobId.Name = "JobId"
HawkHUB.JobId.Parent = HawkHUB.Infos
HawkHUB.JobId.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.JobId.BackgroundTransparency = 1.000
HawkHUB.JobId.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.JobId.BorderSizePixel = 0
HawkHUB.JobId.Position = UDim2.new(0, 0, 0.504950523, 0)
HawkHUB.JobId.Size = UDim2.new(0, 198, 0, 14)
HawkHUB.JobId.Font = Enum.Font.Gotham
HawkHUB.JobId.Text = "User Id: <font face='Gotham' color='rgb(255,255,255)'>"..game:GetService("Players").LocalPlayer.UserId.."</font>"
HawkHUB.JobId.TextColor3 = Color3.fromRGB(184, 184, 184)
HawkHUB.JobId.TextSize = 16.000
HawkHUB.JobId.TextTransparency = 1.000
HawkHUB.JobId.TextWrapped = true
HawkHUB.JobId.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.JobId.TextYAlignment = Enum.TextYAlignment.Top
HawkHUB.JobId.RichText = true

HawkHUB.LoadingTime.Name = "LoadingTime"
HawkHUB.LoadingTime.Parent = HawkHUB.Infos
HawkHUB.LoadingTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.LoadingTime.BackgroundTransparency = 1.000
HawkHUB.LoadingTime.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.LoadingTime.BorderSizePixel = 0
HawkHUB.LoadingTime.Position = UDim2.new(0, 0, 0.673267305, 0)
HawkHUB.LoadingTime.Size = UDim2.new(0, 198, 0, 14)
HawkHUB.LoadingTime.Font = Enum.Font.Gotham
HawkHUB.LoadingTime.Text = "Load Time: <font face='Gotham' color='rgb(255,255,255)'>"..string.sub(tick()-start,0,3).." seconds".."</font>"
HawkHUB.LoadingTime.TextColor3 = Color3.fromRGB(184, 184, 184)
HawkHUB.LoadingTime.TextSize = 16.000
HawkHUB.LoadingTime.TextTransparency = 1.000
HawkHUB.LoadingTime.TextWrapped = true
HawkHUB.LoadingTime.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.LoadingTime.TextYAlignment = Enum.TextYAlignment.Top
HawkHUB.LoadingTime.RichText = true

HawkHUB.FPS.Name = "FPS"
HawkHUB.FPS.Parent = HawkHUB.Infos
HawkHUB.FPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.FPS.BackgroundTransparency = 1.000
HawkHUB.FPS.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.FPS.BorderSizePixel = 0
HawkHUB.FPS.Position = UDim2.new(0, 0, 0.841584146, 0)
HawkHUB.FPS.Size = UDim2.new(0, 198, 0, 14)
HawkHUB.FPS.Font = Enum.Font.Gotham
HawkHUB.FPS.Text = "FPS: <font face=\"Gotham\" color=\"rgb(255,255,255)\">9999 :scream:</font>"
HawkHUB.FPS.TextColor3 = Color3.fromRGB(184, 184, 184)
HawkHUB.FPS.TextSize = 16.000
HawkHUB.FPS.TextTransparency = 1.000
HawkHUB.FPS.TextWrapped = true
HawkHUB.FPS.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.FPS.TextYAlignment = Enum.TextYAlignment.Top
HawkHUB.FPS.RichText = true

HawkHUB.ServerTitleText.Name = "ServerTitleText"
HawkHUB.ServerTitleText.Parent = HawkHUB.Server
HawkHUB.ServerTitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ServerTitleText.BackgroundTransparency = 1.000
HawkHUB.ServerTitleText.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ServerTitleText.BorderSizePixel = 0
HawkHUB.ServerTitleText.Position = UDim2.new(0.0454893708, 0, 0.0310382918, 0)
HawkHUB.ServerTitleText.Size = UDim2.new(0, 199, 0, 18)
HawkHUB.ServerTitleText.Font = Enum.Font.SourceSans
HawkHUB.ServerTitleText.Text = "Server"
HawkHUB.ServerTitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ServerTitleText.TextSize = 14.000
HawkHUB.ServerTitleText.TextTransparency = 1.000
HawkHUB.ServerTitleText.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.UIGradient_10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(127, 70, 70)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 30, 30))}
HawkHUB.UIGradient_10.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_10.Rotation = 90
HawkHUB.UIGradient_10.Parent = HawkHUB.Server

HawkHUB.UIListLayout_11.Parent = HawkHUB.Second
HawkHUB.UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_11.Padding = UDim.new(0, 9)

HawkHUB.Third.Name = "Third"
HawkHUB.Third.Parent = HawkHUB.HomeItemsHolder
HawkHUB.Third.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Third.BackgroundTransparency = 1.000
HawkHUB.Third.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Third.BorderSizePixel = 0
HawkHUB.Third.Position = UDim2.new(0.523012578, 0, 0, 0)
HawkHUB.Third.Size = UDim2.new(0, 439, 0, 186)

HawkHUB.UIListLayout_12.Parent = HawkHUB.Third
HawkHUB.UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_12.Padding = UDim.new(0, 9)

HawkHUB.Friends.Name = "Friends"
HawkHUB.Friends.Parent = HawkHUB.Third
HawkHUB.Friends.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Friends.BackgroundTransparency = 1.000
HawkHUB.Friends.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Friends.BorderSizePixel = 0
HawkHUB.Friends.Size = UDim2.new(0.98675245, 0, 1.09139788, 0)

HawkHUB.UICorner_14.Parent = HawkHUB.Friends

HawkHUB.friendstitle.Name = "friendstitle"
HawkHUB.friendstitle.Parent = HawkHUB.Friends
HawkHUB.friendstitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.friendstitle.BackgroundTransparency = 1.000
HawkHUB.friendstitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.friendstitle.BorderSizePixel = 0
HawkHUB.friendstitle.Position = UDim2.new(0.0241909176, 0, 0.032316234, 0)
HawkHUB.friendstitle.Size = UDim2.new(0, 67, 0, 16)
HawkHUB.friendstitle.Font = Enum.Font.SourceSans
HawkHUB.friendstitle.Text = "Friends"
HawkHUB.friendstitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.friendstitle.TextSize = 16.000
HawkHUB.friendstitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.friendstitle.TextTransparency = 1.000
HawkHUB.friendstitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.FriendInfos.Name = "FriendInfos"
HawkHUB.FriendInfos.Parent = HawkHUB.Friends
HawkHUB.FriendInfos.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.FriendInfos.BackgroundTransparency = 1.000
HawkHUB.FriendInfos.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.FriendInfos.BorderSizePixel = 0
HawkHUB.FriendInfos.Position = UDim2.new(0.0449526943, 0, 0.164928377, 0)
HawkHUB.FriendInfos.Size = UDim2.new(0, 388, 0, 14)

HawkHUB.UIListLayout_13.Parent = HawkHUB.FriendInfos
HawkHUB.UIListLayout_13.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_13.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_13.Padding = UDim.new(0, 7)

HawkHUB.Online.Name = "Online"
HawkHUB.Online.Parent = HawkHUB.FriendInfos
HawkHUB.Online.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Online.BackgroundTransparency = 1.000
HawkHUB.Online.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Online.BorderSizePixel = 0
HawkHUB.Online.Position = UDim2.new(0.0468524955, 0, 0.165254235, 0)
HawkHUB.Online.Size = UDim2.new(0, 67, 0, 14)
HawkHUB.Online.Font = Enum.Font.Gotham
HawkHUB.Online.Text = "Online: <font color=\"rgb(200,200,200)\">N/A</font>"
HawkHUB.Online.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Online.TextSize = 14.000
HawkHUB.Online.TextTransparency = 1.000
HawkHUB.Online.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Online.RichText = true

HawkHUB.Offline.Name = "Offline"
HawkHUB.Offline.Parent = HawkHUB.FriendInfos
HawkHUB.Offline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Offline.BackgroundTransparency = 1.000
HawkHUB.Offline.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Offline.BorderSizePixel = 0
HawkHUB.Offline.Position = UDim2.new(0.220206201, 0, 0.165254235, 0)
HawkHUB.Offline.Size = UDim2.new(0, 67, 0, 14)
HawkHUB.Offline.Font = Enum.Font.Gotham
HawkHUB.Offline.Text = "Offline: <font color=\"rgb(200,200,200)\">N/A</font>"
HawkHUB.Offline.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Offline.TextSize = 14.000
HawkHUB.Offline.TextTransparency = 1.000
HawkHUB.Offline.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Offline.RichText = true

HawkHUB.All.Name = "All"
HawkHUB.All.Parent = HawkHUB.FriendInfos
HawkHUB.All.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.All.BackgroundTransparency = 1.000
HawkHUB.All.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.All.BorderSizePixel = 0
HawkHUB.All.Position = UDim2.new(0.381443292, 0, 0, 0)
HawkHUB.All.Size = UDim2.new(0, 43, 0, 14)
HawkHUB.All.Font = Enum.Font.Gotham
HawkHUB.All.Text = ""
HawkHUB.All.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.All.TextSize = 14.000
HawkHUB.All.TextTransparency = 1.000
HawkHUB.All.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.All.RichText = true

HawkHUB.InGame.Name = "InGame"
HawkHUB.InGame.Parent = HawkHUB.FriendInfos
HawkHUB.InGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.InGame.BackgroundTransparency = 1.000
HawkHUB.InGame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.InGame.BorderSizePixel = 0
HawkHUB.InGame.Position = UDim2.new(0.524746537, 0, 0.165254235, 0)
HawkHUB.InGame.Size = UDim2.new(0, 67, 0, 14)
HawkHUB.InGame.Font = Enum.Font.Gotham
HawkHUB.InGame.Text = ""
HawkHUB.InGame.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.InGame.TextSize = 14.000
HawkHUB.InGame.TextTransparency = 1.000
HawkHUB.InGame.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.InGame.RichText = true

HawkHUB.FriendListHolder.Name = "FriendListHolder"
HawkHUB.FriendListHolder.Parent = HawkHUB.Friends
HawkHUB.FriendListHolder.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
HawkHUB.FriendListHolder.BackgroundTransparency = 1.000
HawkHUB.FriendListHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.FriendListHolder.BorderSizePixel = 0
HawkHUB.FriendListHolder.Position = UDim2.new(0.0468523763, 0, 0.255330801, 0)
HawkHUB.FriendListHolder.Size = UDim2.new(0, 412, 0, 151)

HawkHUB.UICorner_15.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_15.Parent = HawkHUB.FriendListHolder

HawkHUB.FriendsList.Name = "FriendsList"
HawkHUB.FriendsList.Parent = HawkHUB.FriendListHolder
HawkHUB.FriendsList.Active = true
HawkHUB.FriendsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.FriendsList.BackgroundTransparency = 1.000
HawkHUB.FriendsList.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.FriendsList.BorderSizePixel = 0
HawkHUB.FriendsList.Position = UDim2.new(0, 0, 0.217524037, 0)
HawkHUB.FriendsList.Size = UDim2.new(0, 412, 0, 108)
HawkHUB.FriendsList.ScrollBarThickness = 5
HawkHUB.FriendsList.ScrollBarImageTransparency = 1
HawkHUB.FriendsList.ScrollBarImageColor3 = Color3.fromRGB(180, 180, 180)

HawkHUB.UIListLayout_14.Parent = HawkHUB.FriendsList
HawkHUB.UIListLayout_14.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_14.Padding = UDim.new(0, 5)

HawkHUB.Search.Name = "Search"
HawkHUB.Search.Parent = HawkHUB.FriendListHolder
HawkHUB.Search.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
HawkHUB.Search.BackgroundTransparency = 1.000
HawkHUB.Search.BorderColor3 = Color3.fromRGB(35, 35, 35)
HawkHUB.Search.BorderSizePixel = 0
HawkHUB.Search.Position = UDim2.new(0.0560809001, 0, -0.000432558416, 0)
HawkHUB.Search.Size = UDim2.new(0, 348, 0, 23)
HawkHUB.Search.Font = Enum.Font.SourceSans
HawkHUB.Search.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search.PlaceholderText = "Search Friend"
HawkHUB.Search.Text = ""
HawkHUB.Search.TextColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search.TextSize = 18.000
HawkHUB.Search.TextTransparency = 1.000
HawkHUB.Search.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Search.ClearTextOnFocus = false
HawkHUB.Search:GetPropertyChangedSignal("Text"):Connect(function()
	for i, v in pairs(HawkHUB.FriendsList:GetDescendants()) do
		if v:IsA("TextLabel") and v.Name == "Gorunenad" or v.Name == "kullaniciadi" then
			if string.match(string.lower(v.Text),string.lower(HawkHUB.Search.Text)) then
				for a, b in pairs(HawkHUB.FriendsList:GetDescendants()) do
					if b:IsA("TextLabel") then
						if b.Name == "Status" or b.Name == "oyun" then
							b.Parent.Visible = false
						end
					end
				end
				v.Parent.Parent.Visible = true
			end
		end
	end

	if HawkHUB.Search.Text == "" then
		for i, v in pairs(HawkHUB.FriendsList:GetDescendants()) do
			if v:IsA("TextLabel") then
				if v.Name ~= "Status" or v.Name ~= "oyun" then
					v.Parent.Parent.Visible = true
				end
			end
		end
	end
end)

HawkHUB.ImageLabel.Parent = HawkHUB.Search
HawkHUB.ImageLabel.BackgroundTransparency = 1.000
HawkHUB.ImageLabel.BorderSizePixel = 0
HawkHUB.ImageLabel.Position = UDim2.new(-0.0660919547, 0, 0.103434689, 0)
HawkHUB.ImageLabel.Size = UDim2.new(0, 20, 0, 20)
HawkHUB.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031154871"
HawkHUB.ImageLabel.ImageColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.ImageLabel.ImageTransparency = 1.000

HawkHUB.ScriptsPage.Name = "ScriptsPage"
HawkHUB.ScriptsPage.Parent = HawkHUB.PageHolder
HawkHUB.ScriptsPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ScriptsPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.ScriptsPage.BorderSizePixel = 0
HawkHUB.ScriptsPage.Position = UDim2.new(0.5, -192,0.512, -65)
HawkHUB.ScriptsPage.Size = UDim2.new(0, 384, 0, 306)
HawkHUB.ScriptsPage.Visible = false
HawkHUB.ScriptsPage.ZIndex = 2
HawkHUB.ScriptsPage.BackgroundTransparency = 1

HawkHUB.UICorner_16.Parent = HawkHUB.ScriptsPage

HawkHUB.Scripts.Name = "Scripts"
HawkHUB.Scripts.Parent = HawkHUB.ScriptsPage
HawkHUB.Scripts.Active = true
HawkHUB.Scripts.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
HawkHUB.Scripts.BackgroundTransparency = 1.000
HawkHUB.Scripts.BorderColor3 = Color3.fromRGB(36, 36, 36)
HawkHUB.Scripts.BorderSizePixel = 0
HawkHUB.Scripts.Position = UDim2.new(0.0275114384, 0, 0.209358767, 0)
HawkHUB.Scripts.Size = UDim2.new(0, 362, 0, 236)
HawkHUB.Scripts.CanvasSize = UDim2.new(0, 0, 3.1, 0)
HawkHUB.Scripts.ScrollBarThickness = 0

HawkHUB.UIListLayout_15.Parent = HawkHUB.Scripts
HawkHUB.UIListLayout_15.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_15.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_15.Padding = UDim.new(0, 7)

HawkHUB.Hawk.Name = "Hawk"
HawkHUB.Hawk.Parent = HawkHUB.Scripts
HawkHUB.Hawk.BackgroundColor3 = Color3.fromRGB(85, 85, 127)
HawkHUB.Hawk.BackgroundTransparency = 0.400
HawkHUB.Hawk.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Hawk.Position = UDim2.new(0.0377094969, 0, -1.91780818, 0)
HawkHUB.Hawk.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_17.Parent = HawkHUB.Hawk

HawkHUB.Title.Name = "Title"
HawkHUB.Title.Parent = HawkHUB.Hawk
HawkHUB.Title.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title.BackgroundTransparency = 1.000
HawkHUB.Title.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title.Font = Enum.Font.GothamBold
HawkHUB.Title.Text = "Hawk HUB"
HawkHUB.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title.TextSize = 14.000
HawkHUB.Title.TextWrapped = true
HawkHUB.Title.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee.Name = "Typee"
HawkHUB.Typee.Parent = HawkHUB.Hawk
HawkHUB.Typee.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee.BackgroundTransparency = 1.000
HawkHUB.Typee.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee.Position = UDim2.new(0.0361934789, 0, 0.357222229, 0)
HawkHUB.Typee.Size = UDim2.new(0, 241, 0, 17)
HawkHUB.Typee.Font = Enum.Font.Montserrat
HawkHUB.Typee.Text = "<i> Horrific Housing and more </i>"
HawkHUB.Typee.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee.TextSize = 14.000
HawkHUB.Typee.TextWrapped = true
HawkHUB.Typee.RichText = true
HawkHUB.Typee.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Credits.Name = "Credits"
HawkHUB.Credits.Parent = HawkHUB.Hawk
HawkHUB.Credits.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits.BackgroundTransparency = 1.000
HawkHUB.Credits.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits.Font = Enum.Font.Gotham
HawkHUB.Credits.Text = "by falpearx & Hanki"
HawkHUB.Credits.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits.TextSize = 14.000
HawkHUB.Credits.TextWrapped = true
HawkHUB.Credits.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center.Name = "Center"
HawkHUB.Center.Parent = HawkHUB.Hawk
HawkHUB.Center.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center.BackgroundTransparency = 1.000
HawkHUB.Center.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_18.Parent = HawkHUB.Center

HawkHUB.UIListLayout_16.Parent = HawkHUB.Center
HawkHUB.UIListLayout_16.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_16.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_16.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_16.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame.Name = "CopyFrame"
HawkHUB.CopyFrame.Parent = HawkHUB.Center
HawkHUB.CopyFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 38)
HawkHUB.CopyFrame.BackgroundTransparency = 0.300
HawkHUB.CopyFrame.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.CopyFrame.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy.Name = "Copy"
HawkHUB.Copy.Parent = HawkHUB.CopyFrame
HawkHUB.Copy.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy.BackgroundTransparency = 1.000
HawkHUB.Copy.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy.Font = Enum.Font.Gotham
HawkHUB.Copy.Text = "Copy"
HawkHUB.Copy.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy.TextSize = 12.000
HawkHUB.Copy.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Main/Loader.lua"))()]])
end)

HawkHUB.UICorner_19.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_19.Parent = HawkHUB.Copy

HawkHUB.UICorner_20.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_20.Parent = HawkHUB.CopyFrame

HawkHUB.ExecuteFrame.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame.Parent = HawkHUB.Center
HawkHUB.ExecuteFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 38)
HawkHUB.ExecuteFrame.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.ExecuteFrame.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_21.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_21.Parent = HawkHUB.ExecuteFrame

HawkHUB.Execute.Name = "Execute"
HawkHUB.Execute.Parent = HawkHUB.ExecuteFrame
HawkHUB.Execute.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute.BackgroundTransparency = 1.000
HawkHUB.Execute.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute.Font = Enum.Font.Gotham
HawkHUB.Execute.Text = "Execute"
HawkHUB.Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute.TextSize = 12.000
HawkHUB.Execute.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Main/Loader.lua"))()
end)

HawkHUB.UICorner_22.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_22.Parent = HawkHUB.Execute

HawkHUB.Rise.Name = "Rise"
HawkHUB.Rise.Parent = HawkHUB.Scripts
HawkHUB.Rise.BackgroundColor3 = Color3.fromRGB(143, 50, 50)
HawkHUB.Rise.BackgroundTransparency = 0.400
HawkHUB.Rise.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Rise.Position = UDim2.new(0.0377094969, 0, -1.55707765, 0)
HawkHUB.Rise.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_23.Parent = HawkHUB.Rise

HawkHUB.Title_2.Name = "Title"
HawkHUB.Title_2.Parent = HawkHUB.Rise
HawkHUB.Title_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_2.BackgroundTransparency = 1.000
HawkHUB.Title_2.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_2.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_2.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_2.Font = Enum.Font.GothamBold
HawkHUB.Title_2.Text = "Rise"
HawkHUB.Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_2.TextSize = 14.000
HawkHUB.Title_2.TextWrapped = true
HawkHUB.Title_2.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_2.Name = "Typee"
HawkHUB.Typee_2.Parent = HawkHUB.Rise
HawkHUB.Typee_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_2.BackgroundTransparency = 1.000
HawkHUB.Typee_2.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_2.Position = UDim2.new(0.0361934789, 0, 0.357222229, 0)
HawkHUB.Typee_2.Size = UDim2.new(0, 221, 0, 17)
HawkHUB.Typee_2.Font = Enum.Font.Montserrat
HawkHUB.Typee_2.Text = "<i> Skywars and more </i>"
HawkHUB.Typee_2.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_2.TextSize = 14.000
HawkHUB.Typee_2.TextWrapped = true
HawkHUB.Typee_2.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_2.RichText = true

HawkHUB.Credits_2.Name = "Credits"
HawkHUB.Credits_2.Parent = HawkHUB.Rise
HawkHUB.Credits_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_2.BackgroundTransparency = 1.000
HawkHUB.Credits_2.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_2.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits_2.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits_2.Font = Enum.Font.Gotham
HawkHUB.Credits_2.Text = "by SHWX Team"
HawkHUB.Credits_2.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_2.TextSize = 14.000
HawkHUB.Credits_2.TextWrapped = true
HawkHUB.Credits_2.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_2.Name = "Center"
HawkHUB.Center_2.Parent = HawkHUB.Rise
HawkHUB.Center_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_2.BackgroundTransparency = 1.000
HawkHUB.Center_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_2.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center_2.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_24.Parent = HawkHUB.Center_2

HawkHUB.UIListLayout_17.Parent = HawkHUB.Center_2
HawkHUB.UIListLayout_17.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_17.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_17.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_17.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_2.Name = "CopyFrame"
HawkHUB.CopyFrame_2.Parent = HawkHUB.Center_2
HawkHUB.CopyFrame_2.BackgroundColor3 = Color3.fromRGB(54, 19, 19)
HawkHUB.CopyFrame_2.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_2.BorderColor3 = Color3.fromRGB(143, 50, 50)
HawkHUB.CopyFrame_2.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame_2.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_2.Name = "Copy"
HawkHUB.Copy_2.Parent = HawkHUB.CopyFrame_2
HawkHUB.Copy_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_2.BackgroundTransparency = 1.000
HawkHUB.Copy_2.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_2.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy_2.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_2.Font = Enum.Font.Gotham
HawkHUB.Copy_2.Text = "Copy"
HawkHUB.Copy_2.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_2.TextSize = 12.000
HawkHUB.Copy_2.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowBey01/SHWX-Team-Rise-Scripts/refs/heads/main/SomeStuff/SHWX%20UI.lua"))()]])
end)

HawkHUB.UICorner_25.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_25.Parent = HawkHUB.Copy_2

HawkHUB.UICorner_26.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_26.Parent = HawkHUB.CopyFrame_2

HawkHUB.ExecuteFrame_2.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_2.Parent = HawkHUB.Center_2
HawkHUB.ExecuteFrame_2.BackgroundColor3 = Color3.fromRGB(54, 19, 19)
HawkHUB.ExecuteFrame_2.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_2.BorderColor3 = Color3.fromRGB(143, 50, 50)
HawkHUB.ExecuteFrame_2.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame_2.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_27.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_27.Parent = HawkHUB.ExecuteFrame_2

HawkHUB.Execute_2.Name = "Execute"
HawkHUB.Execute_2.Parent = HawkHUB.ExecuteFrame_2
HawkHUB.Execute_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_2.BackgroundTransparency = 1.000
HawkHUB.Execute_2.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_2.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute_2.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_2.Font = Enum.Font.Gotham
HawkHUB.Execute_2.Text = "Execute"
HawkHUB.Execute_2.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_2.TextSize = 12.000
HawkHUB.Execute_2.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowBey01/SHWX-Team-Rise-Scripts/refs/heads/main/SomeStuff/SHWX%20UI.lua"))()
end)

HawkHUB.UICorner_28.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_28.Parent = HawkHUB.Execute_2

HawkHUB.Solarium.Name = "Solarium"
HawkHUB.Solarium.Parent = HawkHUB.Scripts
HawkHUB.Solarium.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Solarium.BackgroundTransparency = 0.400
HawkHUB.Solarium.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Solarium.Position = UDim2.new(0.0377094969, 0, -1.196347, 0)
HawkHUB.Solarium.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_29.Parent = HawkHUB.Solarium

HawkHUB.Title_3.Name = "Title"
HawkHUB.Title_3.Parent = HawkHUB.Solarium
HawkHUB.Title_3.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_3.BackgroundTransparency = 1.000
HawkHUB.Title_3.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_3.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_3.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_3.Font = Enum.Font.GothamBold
HawkHUB.Title_3.Text = "LDS HUB"
HawkHUB.Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_3.TextSize = 14.000
HawkHUB.Title_3.TextWrapped = true
HawkHUB.Title_3.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_3.Name = "Typee"
HawkHUB.Typee_3.Parent = HawkHUB.Solarium
HawkHUB.Typee_3.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_3.BackgroundTransparency = 1.000
HawkHUB.Typee_3.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_3.Position = UDim2.new(0.0361934192, 0, 0.357222229, 0)
HawkHUB.Typee_3.Size = UDim2.new(0, 190, 0, 17)
HawkHUB.Typee_3.Font = Enum.Font.Montserrat
HawkHUB.Typee_3.Text = "<i> Blade Ball and more. </i>"
HawkHUB.Typee_3.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_3.TextSize = 14.000
HawkHUB.Typee_3.TextWrapped = true
HawkHUB.Typee_3.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_3.RichText = true

HawkHUB.Credits_3.Name = "Credits"
HawkHUB.Credits_3.Parent = HawkHUB.Solarium
HawkHUB.Credits_3.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_3.BackgroundTransparency = 1.000
HawkHUB.Credits_3.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_3.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits_3.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits_3.Font = Enum.Font.Gotham
HawkHUB.Credits_3.Text = "by sr.lds"
HawkHUB.Credits_3.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_3.TextSize = 14.000
HawkHUB.Credits_3.TextWrapped = true
HawkHUB.Credits_3.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_3.Name = "Center"
HawkHUB.Center_3.Parent = HawkHUB.Solarium
HawkHUB.Center_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_3.BackgroundTransparency = 1.000
HawkHUB.Center_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_3.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center_3.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_30.Parent = HawkHUB.Center_3

HawkHUB.UIListLayout_18.Parent = HawkHUB.Center_3
HawkHUB.UIListLayout_18.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_18.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_18.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_18.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_3.Name = "CopyFrame"
HawkHUB.CopyFrame_3.Parent = HawkHUB.Center_3
HawkHUB.CopyFrame_3.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
HawkHUB.CopyFrame_3.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_3.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.CopyFrame_3.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame_3.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_3.Name = "Copy"
HawkHUB.Copy_3.Parent = HawkHUB.CopyFrame_3
HawkHUB.Copy_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_3.BackgroundTransparency = 1.000
HawkHUB.Copy_3.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_3.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy_3.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_3.Font = Enum.Font.Gotham
HawkHUB.Copy_3.Text = "Copy"
HawkHUB.Copy_3.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_3.TextSize = 12.000
HawkHUB.Copy_3.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/49f02b0d8c1f60207c84ae76e12abc1e.lua'))()]])
end)

HawkHUB.UICorner_31.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_31.Parent = HawkHUB.Copy_3

HawkHUB.UICorner_32.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_32.Parent = HawkHUB.CopyFrame_3

HawkHUB.ExecuteFrame_3.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_3.Parent = HawkHUB.Center_3
HawkHUB.ExecuteFrame_3.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
HawkHUB.ExecuteFrame_3.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_3.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.ExecuteFrame_3.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame_3.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_33.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_33.Parent = HawkHUB.ExecuteFrame_3

HawkHUB.Execute_3.Name = "Execute"
HawkHUB.Execute_3.Parent = HawkHUB.ExecuteFrame_3
HawkHUB.Execute_3.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_3.BackgroundTransparency = 1.000
HawkHUB.Execute_3.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_3.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute_3.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_3.Font = Enum.Font.Gotham
HawkHUB.Execute_3.Text = "Execute"
HawkHUB.Execute_3.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_3.TextSize = 12.000
HawkHUB.Execute_3.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/49f02b0d8c1f60207c84ae76e12abc1e.lua'))()
end)

HawkHUB.UICorner_34.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_34.Parent = HawkHUB.Execute_3

HawkHUB.InfiniteYield.Name = "InfiniteYield"
HawkHUB.InfiniteYield.Parent = HawkHUB.Scripts
HawkHUB.InfiniteYield.BackgroundColor3 = Color3.fromRGB(67, 172, 67)
HawkHUB.InfiniteYield.BackgroundTransparency = 0.400
HawkHUB.InfiniteYield.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.InfiniteYield.Position = UDim2.new(0.0377094969, 0, -0.83561641, 0)
HawkHUB.InfiniteYield.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_35.Parent = HawkHUB.InfiniteYield

HawkHUB.Title_4.Name = "Title"
HawkHUB.Title_4.Parent = HawkHUB.InfiniteYield
HawkHUB.Title_4.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_4.BackgroundTransparency = 1.000
HawkHUB.Title_4.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_4.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_4.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_4.Font = Enum.Font.GothamBold
HawkHUB.Title_4.Text = "Infinite Yield"
HawkHUB.Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_4.TextSize = 14.000
HawkHUB.Title_4.TextWrapped = true
HawkHUB.Title_4.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_4.Name = "Typee"
HawkHUB.Typee_4.Parent = HawkHUB.InfiniteYield
HawkHUB.Typee_4.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_4.BackgroundTransparency = 1.000
HawkHUB.Typee_4.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_4.Position = UDim2.new(0.0361934789, 0, 0.357222229, 0)
HawkHUB.Typee_4.Size = UDim2.new(0, 241, 0, 17)
HawkHUB.Typee_4.Font = Enum.Font.Montserrat
HawkHUB.Typee_4.Text = "<i> Admin Commands Script </i>"
HawkHUB.Typee_4.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_4.TextSize = 14.000
HawkHUB.Typee_4.TextWrapped = true
HawkHUB.Typee_4.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_4.RichText = true

HawkHUB.Credits_4.Name = "Credits"
HawkHUB.Credits_4.Parent = HawkHUB.InfiniteYield
HawkHUB.Credits_4.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_4.BackgroundTransparency = 1.000
HawkHUB.Credits_4.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_4.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits_4.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits_4.Font = Enum.Font.Gotham
HawkHUB.Credits_4.Text = "by Edge, IY and Toon ++"
HawkHUB.Credits_4.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_4.TextSize = 14.000
HawkHUB.Credits_4.TextWrapped = true
HawkHUB.Credits_4.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_4.Name = "Center"
HawkHUB.Center_4.Parent = HawkHUB.InfiniteYield
HawkHUB.Center_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_4.BackgroundTransparency = 1.000
HawkHUB.Center_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_4.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center_4.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_36.Parent = HawkHUB.Center_4

HawkHUB.UIListLayout_19.Parent = HawkHUB.Center_4
HawkHUB.UIListLayout_19.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_19.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_19.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_19.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_4.Name = "CopyFrame"
HawkHUB.CopyFrame_4.Parent = HawkHUB.Center_4
HawkHUB.CopyFrame_4.BackgroundColor3 = Color3.fromRGB(23, 50, 23)
HawkHUB.CopyFrame_4.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_4.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.CopyFrame_4.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame_4.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_4.Name = "Copy"
HawkHUB.Copy_4.Parent = HawkHUB.CopyFrame_4
HawkHUB.Copy_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_4.BackgroundTransparency = 1.000
HawkHUB.Copy_4.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_4.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy_4.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_4.Font = Enum.Font.Gotham
HawkHUB.Copy_4.Text = "Copy"
HawkHUB.Copy_4.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_4.TextSize = 12.000
HawkHUB.Copy_4.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()]])
end)

HawkHUB.UICorner_37.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_37.Parent = HawkHUB.Copy_4

HawkHUB.UICorner_38.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_38.Parent = HawkHUB.CopyFrame_4

HawkHUB.ExecuteFrame_4.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_4.Parent = HawkHUB.Center_4
HawkHUB.ExecuteFrame_4.BackgroundColor3 = Color3.fromRGB(23, 50, 23)
HawkHUB.ExecuteFrame_4.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_4.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.ExecuteFrame_4.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame_4.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_39.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_39.Parent = HawkHUB.ExecuteFrame_4

HawkHUB.Execute_4.Name = "Execute"
HawkHUB.Execute_4.Parent = HawkHUB.ExecuteFrame_4
HawkHUB.Execute_4.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_4.BackgroundTransparency = 1.000
HawkHUB.Execute_4.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_4.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute_4.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_4.Font = Enum.Font.Gotham
HawkHUB.Execute_4.Text = "Execute"
HawkHUB.Execute_4.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_4.TextSize = 12.000
HawkHUB.Execute_4.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

HawkHUB.UICorner_40.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_40.Parent = HawkHUB.Execute_4

HawkHUB.Nexora.Name = "Nexora"
HawkHUB.Nexora.Parent = HawkHUB.Scripts
HawkHUB.Nexora.BackgroundColor3 = Color3.fromRGB(120, 120, 60)
HawkHUB.Nexora.BackgroundTransparency = 0.400
HawkHUB.Nexora.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Nexora.Position = UDim2.new(0.0377094969, 0, -0.474885851, 0)
HawkHUB.Nexora.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_41.Parent = HawkHUB.Nexora

HawkHUB.Title_5.Name = "Title"
HawkHUB.Title_5.Parent = HawkHUB.Nexora
HawkHUB.Title_5.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_5.BackgroundTransparency = 1.000
HawkHUB.Title_5.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_5.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_5.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_5.Font = Enum.Font.GothamBold
HawkHUB.Title_5.Text = "Nexora HUB"
HawkHUB.Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_5.TextSize = 14.000
HawkHUB.Title_5.TextWrapped = true
HawkHUB.Title_5.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_5.Name = "Typee"
HawkHUB.Typee_5.Parent = HawkHUB.Nexora
HawkHUB.Typee_5.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_5.BackgroundTransparency = 1.000
HawkHUB.Typee_5.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_5.Position = UDim2.new(0.0361934789, 0, 0.357222229, 0)
HawkHUB.Typee_5.Size = UDim2.new(0, 241, 0, 17)
HawkHUB.Typee_5.Font = Enum.Font.Montserrat
HawkHUB.Typee_5.Text = "<i> Emergency Hamburg </i>"
HawkHUB.Typee_5.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_5.TextSize = 14.000
HawkHUB.Typee_5.TextWrapped = true
HawkHUB.Typee_5.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_5.RichText = true

HawkHUB.Credits_5.Name = "Credits"
HawkHUB.Credits_5.Parent = HawkHUB.Nexora
HawkHUB.Credits_5.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_5.BackgroundTransparency = 1.000
HawkHUB.Credits_5.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_5.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits_5.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits_5.Font = Enum.Font.Gotham
HawkHUB.Credits_5.Text = "by Lave"
HawkHUB.Credits_5.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_5.TextSize = 14.000
HawkHUB.Credits_5.TextWrapped = true
HawkHUB.Credits_5.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_5.Name = "Center"
HawkHUB.Center_5.Parent = HawkHUB.Nexora
HawkHUB.Center_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_5.BackgroundTransparency = 1.000
HawkHUB.Center_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_5.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center_5.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_42.Parent = HawkHUB.Center_5

HawkHUB.UIListLayout_20.Parent = HawkHUB.Center_5
HawkHUB.UIListLayout_20.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_20.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_20.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_20.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_5.Name = "CopyFrame"
HawkHUB.CopyFrame_5.Parent = HawkHUB.Center_5
HawkHUB.CopyFrame_5.BackgroundColor3 = Color3.fromRGB(57, 57, 31)
HawkHUB.CopyFrame_5.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_5.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.CopyFrame_5.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame_5.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_5.Name = "Copy"
HawkHUB.Copy_5.Parent = HawkHUB.CopyFrame_5
HawkHUB.Copy_5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_5.BackgroundTransparency = 1.000
HawkHUB.Copy_5.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_5.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy_5.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_5.Font = Enum.Font.Gotham
HawkHUB.Copy_5.Text = "Copy"
HawkHUB.Copy_5.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_5.TextSize = 12.000
HawkHUB.Copy_5.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Lave01/NexoraHUB/refs/heads/main/NexoraHUB"))()]])
end)

HawkHUB.UICorner_43.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_43.Parent = HawkHUB.Copy_5

HawkHUB.UICorner_44.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_44.Parent = HawkHUB.CopyFrame_5

HawkHUB.ExecuteFrame_5.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_5.Parent = HawkHUB.Center_5
HawkHUB.ExecuteFrame_5.BackgroundColor3 = Color3.fromRGB(57, 57, 31)
HawkHUB.ExecuteFrame_5.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_5.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.ExecuteFrame_5.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame_5.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_45.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_45.Parent = HawkHUB.ExecuteFrame_5

HawkHUB.Execute_5.Name = "Execute"
HawkHUB.Execute_5.Parent = HawkHUB.ExecuteFrame_5
HawkHUB.Execute_5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_5.BackgroundTransparency = 1.000
HawkHUB.Execute_5.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_5.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute_5.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_5.Font = Enum.Font.Gotham
HawkHUB.Execute_5.Text = "Execute"
HawkHUB.Execute_5.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_5.TextSize = 12.000
HawkHUB.Execute_5.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Lave01/NexoraHUB/refs/heads/main/NexoraHUB"))()
end)

HawkHUB.UICorner_46.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_46.Parent = HawkHUB.Execute_5

HawkHUB.Mistik.Name = "Mistik"
HawkHUB.Mistik.Parent = HawkHUB.Scripts
HawkHUB.Mistik.BackgroundColor3 = Color3.fromRGB(135, 67, 202)
HawkHUB.Mistik.BackgroundTransparency = 0.400
HawkHUB.Mistik.BorderColor3 = Color3.fromRGB(135, 67, 202)
HawkHUB.Mistik.Position = UDim2.new(0.0377094969, 0, -0.114155248, 0)
HawkHUB.Mistik.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_47.Parent = HawkHUB.Mistik

HawkHUB.Title_6.Name = "Title"
HawkHUB.Title_6.Parent = HawkHUB.Mistik
HawkHUB.Title_6.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_6.BackgroundTransparency = 1.000
HawkHUB.Title_6.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_6.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_6.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_6.Font = Enum.Font.GothamBold
HawkHUB.Title_6.Text = "Eclipse HUB"
HawkHUB.Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_6.TextSize = 14.000
HawkHUB.Title_6.TextWrapped = true
HawkHUB.Title_6.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_6.Name = "Typee"
HawkHUB.Typee_6.Parent = HawkHUB.Mistik
HawkHUB.Typee_6.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_6.BackgroundTransparency = 1.000
HawkHUB.Typee_6.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_6.Position = UDim2.new(0.0361934789, 0, 0.357222229, 0)
HawkHUB.Typee_6.Size = UDim2.new(0, 241, 0, 17)
HawkHUB.Typee_6.Font = Enum.Font.Montserrat
HawkHUB.Typee_6.Text = "<i> Tps Street Soccer </i>"
HawkHUB.Typee_6.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_6.TextSize = 14.000
HawkHUB.Typee_6.TextWrapped = true
HawkHUB.Typee_6.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_6.RichText = true

HawkHUB.Credits_6.Name = "Credits"
HawkHUB.Credits_6.Parent = HawkHUB.Mistik
HawkHUB.Credits_6.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_6.BackgroundTransparency = 1.000
HawkHUB.Credits_6.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_6.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits_6.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits_6.Font = Enum.Font.Gotham
HawkHUB.Credits_6.Text = "by henqzy"
HawkHUB.Credits_6.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_6.TextSize = 14.000
HawkHUB.Credits_6.TextWrapped = true
HawkHUB.Credits_6.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_6.Name = "Center"
HawkHUB.Center_6.Parent = HawkHUB.Mistik
HawkHUB.Center_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_6.BackgroundTransparency = 1.000
HawkHUB.Center_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_6.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center_6.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_48.Parent = HawkHUB.Center_6

HawkHUB.UIListLayout_21.Parent = HawkHUB.Center_6
HawkHUB.UIListLayout_21.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_21.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_21.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_21.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_6.Name = "CopyFrame"
HawkHUB.CopyFrame_6.Parent = HawkHUB.Center_6
HawkHUB.CopyFrame_6.BackgroundColor3 = Color3.fromRGB(61, 30, 91)
HawkHUB.CopyFrame_6.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_6.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.CopyFrame_6.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame_6.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_6.Name = "Copy"
HawkHUB.Copy_6.Parent = HawkHUB.CopyFrame_6
HawkHUB.Copy_6.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_6.BackgroundTransparency = 1.000
HawkHUB.Copy_6.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_6.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy_6.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_6.Font = Enum.Font.Gotham
HawkHUB.Copy_6.Text = "Copy"
HawkHUB.Copy_6.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_6.TextSize = 12.000
HawkHUB.Copy_6.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Lave01/NexoraHUB/refs/heads/main/NexoraHUB"))()]])
end)

HawkHUB.UICorner_49.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_49.Parent = HawkHUB.Copy_6

HawkHUB.UICorner_50.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_50.Parent = HawkHUB.CopyFrame_6

HawkHUB.ExecuteFrame_6.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_6.Parent = HawkHUB.Center_6
HawkHUB.ExecuteFrame_6.BackgroundColor3 = Color3.fromRGB(61, 30, 91)
HawkHUB.ExecuteFrame_6.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_6.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.ExecuteFrame_6.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame_6.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_51.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_51.Parent = HawkHUB.ExecuteFrame_6

HawkHUB.Execute_6.Name = "Execute"
HawkHUB.Execute_6.Parent = HawkHUB.ExecuteFrame_6
HawkHUB.Execute_6.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_6.BackgroundTransparency = 1.000
HawkHUB.Execute_6.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_6.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute_6.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_6.Font = Enum.Font.Gotham
HawkHUB.Execute_6.Text = "Execute"
HawkHUB.Execute_6.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_6.TextSize = 12.000
HawkHUB.Execute_6.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Lave01/NexoraHUB/refs/heads/main/NexoraHUB"))()
end)

HawkHUB.UICorner_52.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_52.Parent = HawkHUB.Execute_6

HawkHUB.Sirius.Name = "Sirius"
HawkHUB.Sirius.Parent = HawkHUB.Scripts
HawkHUB.Sirius.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Sirius.BackgroundTransparency = 0.400
HawkHUB.Sirius.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Sirius.Position = UDim2.new(0.0377094969, 0, 0.246575475, 0)
HawkHUB.Sirius.Size = UDim2.new(0, 360, 0, 71)

HawkHUB.UICorner_53.Parent = HawkHUB.Sirius

HawkHUB.Title_7.Name = "Title"
HawkHUB.Title_7.Parent = HawkHUB.Sirius
HawkHUB.Title_7.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_7.BackgroundTransparency = 1.000
HawkHUB.Title_7.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_7.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_7.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_7.Font = Enum.Font.GothamBold
HawkHUB.Title_7.Text = "Sirius"
HawkHUB.Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_7.TextSize = 14.000
HawkHUB.Title_7.TextWrapped = true
HawkHUB.Title_7.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_7.Name = "Typee"
HawkHUB.Typee_7.Parent = HawkHUB.Sirius
HawkHUB.Typee_7.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_7.BackgroundTransparency = 1.000
HawkHUB.Typee_7.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_7.Position = UDim2.new(0.0361934192, 0, 0.357222229, 0)
HawkHUB.Typee_7.Size = UDim2.new(0, 190, 0, 17)
HawkHUB.Typee_7.Font = Enum.Font.Montserrat
HawkHUB.Typee_7.RichText = true
HawkHUB.Typee_7.Text = "<i> A HUB Script </i>"
HawkHUB.Typee_7.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_7.TextSize = 14.000
HawkHUB.Typee_7.TextWrapped = true
HawkHUB.Typee_7.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_7.RichText = true

HawkHUB.Credits_7.Name = "Credits"
HawkHUB.Credits_7.Parent = HawkHUB.Sirius
HawkHUB.Credits_7.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_7.BackgroundTransparency = 1.000
HawkHUB.Credits_7.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_7.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits_7.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits_7.Font = Enum.Font.Gotham
HawkHUB.Credits_7.Text = "by shlex"
HawkHUB.Credits_7.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_7.TextSize = 14.000
HawkHUB.Credits_7.TextWrapped = true
HawkHUB.Credits_7.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_7.Name = "Center"
HawkHUB.Center_7.Parent = HawkHUB.Sirius
HawkHUB.Center_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_7.BackgroundTransparency = 1.000
HawkHUB.Center_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_7.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center_7.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_54.Parent = HawkHUB.Center_7

HawkHUB.UIListLayout_22.Parent = HawkHUB.Center_7
HawkHUB.UIListLayout_22.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_22.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_22.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_22.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_7.Name = "CopyFrame"
HawkHUB.CopyFrame_7.Parent = HawkHUB.Center_7
HawkHUB.CopyFrame_7.BackgroundColor3 = Color3.fromRGB(11, 17, 21)
HawkHUB.CopyFrame_7.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_7.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.CopyFrame_7.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame_7.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_7.Name = "Copy"
HawkHUB.Copy_7.Parent = HawkHUB.CopyFrame_7
HawkHUB.Copy_7.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_7.BackgroundTransparency = 1.000
HawkHUB.Copy_7.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_7.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy_7.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_7.Font = Enum.Font.Gotham
HawkHUB.Copy_7.Text = "Copy"
HawkHUB.Copy_7.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_7.TextSize = 12.000
HawkHUB.Copy_7.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet('https://sirius.menu/sirius'))()]])
end)

HawkHUB.UICorner_55.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_55.Parent = HawkHUB.Copy_7

HawkHUB.UICorner_56.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_56.Parent = HawkHUB.CopyFrame_7

HawkHUB.ExecuteFrame_7.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_7.Parent = HawkHUB.Center_7
HawkHUB.ExecuteFrame_7.BackgroundColor3 = Color3.fromRGB(11, 17, 21)
HawkHUB.ExecuteFrame_7.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_7.BorderColor3 = Color3.fromRGB(26, 26, 26)
HawkHUB.ExecuteFrame_7.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame_7.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_57.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_57.Parent = HawkHUB.ExecuteFrame_7

HawkHUB.Execute_7.Name = "Execute"
HawkHUB.Execute_7.Parent = HawkHUB.ExecuteFrame_7
HawkHUB.Execute_7.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_7.BackgroundTransparency = 1.000
HawkHUB.Execute_7.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_7.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute_7.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_7.Font = Enum.Font.Gotham
HawkHUB.Execute_7.Text = "Execute"
HawkHUB.Execute_7.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_7.TextSize = 12.000
HawkHUB.Execute_7.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://sirius.menu/sirius'))()
end)

HawkHUB.UICorner_58.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_58.Parent = HawkHUB.Execute_7

HawkHUB.UIGradient_11.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(17, 47, 65))}
HawkHUB.UIGradient_11.Rotation = 30
HawkHUB.UIGradient_11.Parent = HawkHUB.Sirius

HawkHUB.CMDX.Name = "CMDX"
HawkHUB.CMDX.Parent = HawkHUB.Scripts
HawkHUB.CMDX.BackgroundColor3 = Color3.fromRGB(121, 65, 30)
HawkHUB.CMDX.BackgroundTransparency = 0.400
HawkHUB.CMDX.BorderColor3 = Color3.fromRGB(121, 65, 30)
HawkHUB.CMDX.Position = UDim2.new(0.0377094969, 0, 0.607305825, 0)
HawkHUB.CMDX.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_59.Parent = HawkHUB.CMDX

HawkHUB.Title_8.Name = "Title"
HawkHUB.Title_8.Parent = HawkHUB.CMDX
HawkHUB.Title_8.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_8.BackgroundTransparency = 1.000
HawkHUB.Title_8.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_8.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_8.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_8.Font = Enum.Font.GothamBold
HawkHUB.Title_8.Text = "CMD X"
HawkHUB.Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_8.TextSize = 14.000
HawkHUB.Title_8.TextWrapped = true
HawkHUB.Title_8.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_8.Name = "Typee"
HawkHUB.Typee_8.Parent = HawkHUB.CMDX
HawkHUB.Typee_8.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_8.BackgroundTransparency = 1.000
HawkHUB.Typee_8.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_8.Position = UDim2.new(0.0361934789, 0, 0.357222229, 0)
HawkHUB.Typee_8.Size = UDim2.new(0, 241, 0, 17)
HawkHUB.Typee_8.Font = Enum.Font.Montserrat
HawkHUB.Typee_8.Text = "<i> Admin Commands Script </i>"
HawkHUB.Typee_8.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_8.TextSize = 14.000
HawkHUB.Typee_8.TextWrapped = true
HawkHUB.Typee_8.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_8.RichText = true

HawkHUB.Credits_8.Name = "Credits"
HawkHUB.Credits_8.Parent = HawkHUB.CMDX
HawkHUB.Credits_8.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_8.BackgroundTransparency = 1.000
HawkHUB.Credits_8.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_8.Position = UDim2.new(0.0338459983, 0, 0.607222259, 0)
HawkHUB.Credits_8.Size = UDim2.new(0, 191, 0, 17)
HawkHUB.Credits_8.Font = Enum.Font.Gotham
HawkHUB.Credits_8.Text = "by Various Developers"
HawkHUB.Credits_8.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_8.TextSize = 14.000
HawkHUB.Credits_8.TextWrapped = true
HawkHUB.Credits_8.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_8.Name = "Center"
HawkHUB.Center_8.Parent = HawkHUB.CMDX
HawkHUB.Center_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_8.BackgroundTransparency = 1.000
HawkHUB.Center_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_8.Position = UDim2.new(0.760563314, 0, 0, 0)
HawkHUB.Center_8.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_60.Parent = HawkHUB.Center_8

HawkHUB.UIListLayout_23.Parent = HawkHUB.Center_8
HawkHUB.UIListLayout_23.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_23.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_23.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_23.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_8.Name = "CopyFrame"
HawkHUB.CopyFrame_8.Parent = HawkHUB.Center_8
HawkHUB.CopyFrame_8.BackgroundColor3 = Color3.fromRGB(47, 25, 12)
HawkHUB.CopyFrame_8.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_8.BorderColor3 = Color3.fromRGB(121, 65, 30)
HawkHUB.CopyFrame_8.Position = UDim2.new(0.104166664, 0, 0.145833328, 0)
HawkHUB.CopyFrame_8.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_8.Name = "Copy"
HawkHUB.Copy_8.Parent = HawkHUB.CopyFrame_8
HawkHUB.Copy_8.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_8.BackgroundTransparency = 1.000
HawkHUB.Copy_8.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Copy_8.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Copy_8.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_8.Font = Enum.Font.Gotham
HawkHUB.Copy_8.Text = "Copy"
HawkHUB.Copy_8.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_8.TextSize = 12.000
HawkHUB.Copy_8.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/refs/heads/master/Source'))()]])
end)

HawkHUB.UICorner_61.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_61.Parent = HawkHUB.Copy_8

HawkHUB.UICorner_62.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_62.Parent = HawkHUB.CopyFrame_8

HawkHUB.ExecuteFrame_8.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_8.Parent = HawkHUB.Center_8
HawkHUB.ExecuteFrame_8.BackgroundColor3 = Color3.fromRGB(47, 25, 12)
HawkHUB.ExecuteFrame_8.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_8.BorderColor3 = Color3.fromRGB(121, 65, 30)
HawkHUB.ExecuteFrame_8.Position = UDim2.new(0.104166664, 0, 0.548611104, 0)
HawkHUB.ExecuteFrame_8.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_63.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_63.Parent = HawkHUB.ExecuteFrame_8

HawkHUB.Execute_8.Name = "Execute"
HawkHUB.Execute_8.Parent = HawkHUB.ExecuteFrame_8
HawkHUB.Execute_8.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_8.BackgroundTransparency = 1.000
HawkHUB.Execute_8.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Execute_8.Position = UDim2.new(-0.00580358505, 0, 0, 0)
HawkHUB.Execute_8.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_8.Font = Enum.Font.Gotham
HawkHUB.Execute_8.Text = "Execute"
HawkHUB.Execute_8.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_8.TextSize = 12.000
HawkHUB.Execute_8.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/refs/heads/master/Source'))()
end)

HawkHUB.UICorner_64.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_64.Parent = HawkHUB.Execute_8

HawkHUB.DomainX.Name = "DomainX"
HawkHUB.DomainX.Parent = HawkHUB.Scripts
HawkHUB.DomainX.BackgroundColor3 = Color3.fromRGB(98, 98, 0)
HawkHUB.DomainX.BackgroundTransparency = 0.400
HawkHUB.DomainX.BorderColor3 = Color3.fromRGB(121, 65, 30)
HawkHUB.DomainX.Position = UDim2.new(0.0377094969, 0, 0.968036413, 0)
HawkHUB.DomainX.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_65.Parent = HawkHUB.DomainX

HawkHUB.Typee_9.Name = "Typee"
HawkHUB.Typee_9.Parent = HawkHUB.DomainX
HawkHUB.Typee_9.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_9.BackgroundTransparency = 1.000
HawkHUB.Typee_9.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_9.Position = UDim2.new(0.0361934192, 0, 0.357222229, 0)
HawkHUB.Typee_9.Size = UDim2.new(0, 190, 0, 17)
HawkHUB.Typee_9.Font = Enum.Font.Montserrat
HawkHUB.Typee_9.Text = "<i> Universal </i>"
HawkHUB.Typee_9.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_9.TextSize = 14.000
HawkHUB.Typee_9.TextWrapped = true
HawkHUB.Typee_9.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_9.RichText = true

HawkHUB.Credits_9.Name = "Credits"
HawkHUB.Credits_9.Parent = HawkHUB.DomainX
HawkHUB.Credits_9.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_9.BackgroundTransparency = 1.000
HawkHUB.Credits_9.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_9.Position = UDim2.new(0.0408882536, 0, 0.607222259, 0)
HawkHUB.Credits_9.Size = UDim2.new(0, 208, 0, 17)
HawkHUB.Credits_9.Font = Enum.Font.Gotham
HawkHUB.Credits_9.Text = "by shlex"
HawkHUB.Credits_9.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_9.TextSize = 14.000
HawkHUB.Credits_9.TextWrapped = true
HawkHUB.Credits_9.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Title_9.Name = "Title"
HawkHUB.Title_9.Parent = HawkHUB.DomainX
HawkHUB.Title_9.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_9.BackgroundTransparency = 1.000
HawkHUB.Title_9.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_9.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_9.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_9.Font = Enum.Font.GothamBold
HawkHUB.Title_9.Text = "Domain X"
HawkHUB.Title_9.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_9.TextSize = 14.000
HawkHUB.Title_9.TextWrapped = true
HawkHUB.Title_9.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_9.Name = "Center"
HawkHUB.Center_9.Parent = HawkHUB.DomainX
HawkHUB.Center_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_9.BackgroundTransparency = 1.000
HawkHUB.Center_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_9.Position = UDim2.new(0.760563374, 0, 0, 0)
HawkHUB.Center_9.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_66.Parent = HawkHUB.Center_9

HawkHUB.UIListLayout_24.Parent = HawkHUB.Center_9
HawkHUB.UIListLayout_24.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_24.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_24.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_24.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_9.Name = "CopyFrame"
HawkHUB.CopyFrame_9.Parent = HawkHUB.Center_9
HawkHUB.CopyFrame_9.BackgroundColor3 = Color3.fromRGB(38, 38, 0)
HawkHUB.CopyFrame_9.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_9.BorderColor3 = Color3.fromRGB(38, 38, 0)
HawkHUB.CopyFrame_9.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_9.Name = "Copy"
HawkHUB.Copy_9.Parent = HawkHUB.CopyFrame_9
HawkHUB.Copy_9.BackgroundColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Copy_9.BackgroundTransparency = 1.000
HawkHUB.Copy_9.BorderColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Copy_9.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_9.Font = Enum.Font.Gotham
HawkHUB.Copy_9.Text = "Copy"
HawkHUB.Copy_9.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_9.TextSize = 14.000
HawkHUB.Copy_9.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/domainx/refs/heads/main/source'))()]])
end)

HawkHUB.UICorner_67.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_67.Parent = HawkHUB.Copy_9

HawkHUB.UICorner_68.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_68.Parent = HawkHUB.CopyFrame_9

HawkHUB.ExecuteFrame_9.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_9.Parent = HawkHUB.Center_9
HawkHUB.ExecuteFrame_9.BackgroundColor3 = Color3.fromRGB(38, 38, 0)
HawkHUB.ExecuteFrame_9.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_9.BorderColor3 = Color3.fromRGB(38, 38, 0)
HawkHUB.ExecuteFrame_9.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_69.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_69.Parent = HawkHUB.ExecuteFrame_9

HawkHUB.Execute_9.Name = "Execute"
HawkHUB.Execute_9.Parent = HawkHUB.ExecuteFrame_9
HawkHUB.Execute_9.BackgroundColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Execute_9.BackgroundTransparency = 1.000
HawkHUB.Execute_9.BorderColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Execute_9.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_9.Font = Enum.Font.Gotham
HawkHUB.Execute_9.Text = "Execute"
HawkHUB.Execute_9.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_9.TextSize = 14.000
HawkHUB.Execute_9.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/domainx/refs/heads/main/source'))()
end)

HawkHUB.UICorner_70.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_70.Parent = HawkHUB.Execute_9

HawkHUB.EzHUB.Name = "EzHUB"
HawkHUB.EzHUB.Parent = HawkHUB.Scripts
HawkHUB.EzHUB.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
HawkHUB.EzHUB.BackgroundTransparency = 0.400
HawkHUB.EzHUB.BorderColor3 = Color3.fromRGB(121, 65, 30)
HawkHUB.EzHUB.Position = UDim2.new(0.0377094969, 0, 1.32876694, 0)
HawkHUB.EzHUB.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_71.Parent = HawkHUB.EzHUB

HawkHUB.Typee_10.Name = "Typee"
HawkHUB.Typee_10.Parent = HawkHUB.EzHUB
HawkHUB.Typee_10.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_10.BackgroundTransparency = 1.000
HawkHUB.Typee_10.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_10.Position = UDim2.new(0.0361934192, 0, 0.357222229, 0)
HawkHUB.Typee_10.Size = UDim2.new(0, 190, 0, 17)
HawkHUB.Typee_10.Font = Enum.Font.Montserrat
HawkHUB.Typee_10.Text = "<i> Tps, Grow a Garden and more. </i>"
HawkHUB.Typee_10.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_10.TextSize = 14.000
HawkHUB.Typee_10.TextWrapped = true
HawkHUB.Typee_10.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_10.RichText = true

HawkHUB.Credits_10.Name = "Credits"
HawkHUB.Credits_10.Parent = HawkHUB.EzHUB
HawkHUB.Credits_10.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_10.BackgroundTransparency = 1.000
HawkHUB.Credits_10.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_10.Position = UDim2.new(0.0408882573, 0, 0.607222259, 0)
HawkHUB.Credits_10.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Credits_10.Font = Enum.Font.Gotham
HawkHUB.Credits_10.Text = "by Hexiron Team"
HawkHUB.Credits_10.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_10.TextSize = 14.000
HawkHUB.Credits_10.TextWrapped = true
HawkHUB.Credits_10.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Title_10.Name = "Title"
HawkHUB.Title_10.Parent = HawkHUB.EzHUB
HawkHUB.Title_10.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_10.BackgroundTransparency = 1.000
HawkHUB.Title_10.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_10.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_10.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_10.Font = Enum.Font.GothamBold
HawkHUB.Title_10.Text = "Hexiron"
HawkHUB.Title_10.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_10.TextSize = 14.000
HawkHUB.Title_10.TextWrapped = true
HawkHUB.Title_10.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_10.Name = "Center"
HawkHUB.Center_10.Parent = HawkHUB.EzHUB
HawkHUB.Center_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_10.BackgroundTransparency = 1.000
HawkHUB.Center_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_10.Position = UDim2.new(0.760563374, 0, 0, 0)
HawkHUB.Center_10.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_72.Parent = HawkHUB.Center_10

HawkHUB.UIListLayout_25.Parent = HawkHUB.Center_10
HawkHUB.UIListLayout_25.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_25.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_25.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_25.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_10.Name = "CopyFrame"
HawkHUB.CopyFrame_10.Parent = HawkHUB.Center_10
HawkHUB.CopyFrame_10.BackgroundColor3 = Color3.fromRGB(43, 0, 0)
HawkHUB.CopyFrame_10.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_10.BorderColor3 = Color3.fromRGB(16, 47, 0)
HawkHUB.CopyFrame_10.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_10.Name = "Copy"
HawkHUB.Copy_10.Parent = HawkHUB.CopyFrame_10
HawkHUB.Copy_10.BackgroundColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Copy_10.BackgroundTransparency = 1.000
HawkHUB.Copy_10.BorderColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Copy_10.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_10.Font = Enum.Font.Gotham
HawkHUB.Copy_10.Text = "Copy"
HawkHUB.Copy_10.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_10.TextSize = 14.000
HawkHUB.Copy_10.MouseButton1Click:Connect(function()
	setclipboard([[not ready yet]])
end)

HawkHUB.UICorner_73.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_73.Parent = HawkHUB.Copy_10

HawkHUB.UICorner_74.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_74.Parent = HawkHUB.CopyFrame_10

HawkHUB.ExecuteFrame_10.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_10.Parent = HawkHUB.Center_10
HawkHUB.ExecuteFrame_10.BackgroundColor3 = Color3.fromRGB(43, 0, 0)
HawkHUB.ExecuteFrame_10.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_10.BorderColor3 = Color3.fromRGB(16, 47, 0)
HawkHUB.ExecuteFrame_10.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_75.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_75.Parent = HawkHUB.ExecuteFrame_10

HawkHUB.Execute_10.Name = "Execute"
HawkHUB.Execute_10.Parent = HawkHUB.ExecuteFrame_10
HawkHUB.Execute_10.BackgroundColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Execute_10.BackgroundTransparency = 1.000
HawkHUB.Execute_10.BorderColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Execute_10.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_10.Font = Enum.Font.Gotham
HawkHUB.Execute_10.Text = "Execute"
HawkHUB.Execute_10.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_10.TextSize = 14.000
HawkHUB.Execute_10.MouseButton1Click:Connect(function()
	warn("Hexiron is not ready yet ;-;")
end)

HawkHUB.UICorner_76.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_76.Parent = HawkHUB.Execute_10

HawkHUB.FatesAdmin.Name = "FatesAdmin"
HawkHUB.FatesAdmin.Parent = HawkHUB.Scripts
HawkHUB.FatesAdmin.BackgroundColor3 = Color3.fromRGB(109, 22, 72)
HawkHUB.FatesAdmin.BackgroundTransparency = 0.400
HawkHUB.FatesAdmin.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.FatesAdmin.Position = UDim2.new(0.0377094969, 0, 1.68949759, 0)
HawkHUB.FatesAdmin.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_77.Parent = HawkHUB.FatesAdmin

HawkHUB.Credits_11.Name = "Credits"
HawkHUB.Credits_11.Parent = HawkHUB.FatesAdmin
HawkHUB.Credits_11.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_11.BackgroundTransparency = 1.000
HawkHUB.Credits_11.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_11.Position = UDim2.new(0.0385408364, 0, 0.607222259, 0)
HawkHUB.Credits_11.Size = UDim2.new(0, 189, 0, 17)
HawkHUB.Credits_11.Font = Enum.Font.Gotham
HawkHUB.Credits_11.Text = "by fate"
HawkHUB.Credits_11.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_11.TextSize = 14.000
HawkHUB.Credits_11.TextWrapped = true
HawkHUB.Credits_11.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Typee_11.Name = "Typee"
HawkHUB.Typee_11.Parent = HawkHUB.FatesAdmin
HawkHUB.Typee_11.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_11.BackgroundTransparency = 1.000
HawkHUB.Typee_11.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_11.Position = UDim2.new(0.0359999985, 0, 0.356999993, 0)
HawkHUB.Typee_11.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Typee_11.Font = Enum.Font.Montserrat
HawkHUB.Typee_11.Text = "<i> Admin Commands Script </i>"
HawkHUB.Typee_11.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_11.TextSize = 14.000
HawkHUB.Typee_11.TextWrapped = true
HawkHUB.Typee_11.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_11.RichText = true

HawkHUB.Title_11.Name = "Title"
HawkHUB.Title_11.Parent = HawkHUB.FatesAdmin
HawkHUB.Title_11.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_11.BackgroundTransparency = 1.000
HawkHUB.Title_11.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_11.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_11.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_11.Font = Enum.Font.GothamBold
HawkHUB.Title_11.Text = "Fates Admin"
HawkHUB.Title_11.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_11.TextSize = 14.000
HawkHUB.Title_11.TextWrapped = true
HawkHUB.Title_11.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_11.Name = "Center"
HawkHUB.Center_11.Parent = HawkHUB.FatesAdmin
HawkHUB.Center_11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_11.BackgroundTransparency = 1.000
HawkHUB.Center_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_11.Position = UDim2.new(0.760563374, 0, 0, 0)
HawkHUB.Center_11.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_78.Parent = HawkHUB.Center_11

HawkHUB.UIListLayout_26.Parent = HawkHUB.Center_11
HawkHUB.UIListLayout_26.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_26.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_26.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_26.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_11.Name = "CopyFrame"
HawkHUB.CopyFrame_11.Parent = HawkHUB.Center_11
HawkHUB.CopyFrame_11.BackgroundColor3 = Color3.fromRGB(45, 10, 32)
HawkHUB.CopyFrame_11.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_11.BorderColor3 = Color3.fromRGB(45, 10, 32)
HawkHUB.CopyFrame_11.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_11.Name = "Copy"
HawkHUB.Copy_11.Parent = HawkHUB.CopyFrame_11
HawkHUB.Copy_11.BackgroundColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Copy_11.BackgroundTransparency = 1.000
HawkHUB.Copy_11.BorderColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Copy_11.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_11.Font = Enum.Font.Gotham
HawkHUB.Copy_11.Text = "Copy"
HawkHUB.Copy_11.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_11.TextSize = 14.000
HawkHUB.Copy_11.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()]])
end)

HawkHUB.UICorner_79.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_79.Parent = HawkHUB.Copy_11

HawkHUB.UICorner_80.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_80.Parent = HawkHUB.CopyFrame_11

HawkHUB.ExecuteFrame_11.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_11.Parent = HawkHUB.Center_11
HawkHUB.ExecuteFrame_11.BackgroundColor3 = Color3.fromRGB(45, 10, 32)
HawkHUB.ExecuteFrame_11.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_11.BorderColor3 = Color3.fromRGB(45, 10, 32)
HawkHUB.ExecuteFrame_11.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_81.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_81.Parent = HawkHUB.ExecuteFrame_11

HawkHUB.Execute_11.Name = "Execute"
HawkHUB.Execute_11.Parent = HawkHUB.ExecuteFrame_11
HawkHUB.Execute_11.BackgroundColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Execute_11.BackgroundTransparency = 1.000
HawkHUB.Execute_11.BorderColor3 = Color3.fromRGB(42, 42, 0)
HawkHUB.Execute_11.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_11.Font = Enum.Font.Gotham
HawkHUB.Execute_11.Text = "Execute"
HawkHUB.Execute_11.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_11.TextSize = 14.000
HawkHUB.Execute_11.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

HawkHUB.UICorner_82.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_82.Parent = HawkHUB.Execute_11

HawkHUB.OwlHUB.Name = "OwlHUB"
HawkHUB.OwlHUB.Parent = HawkHUB.Scripts
HawkHUB.OwlHUB.BackgroundColor3 = Color3.fromRGB(32, 0, 95)
HawkHUB.OwlHUB.BackgroundTransparency = 0.400
HawkHUB.OwlHUB.BorderColor3 = Color3.fromRGB(121, 65, 30)
HawkHUB.OwlHUB.Position = UDim2.new(0.0377094969, 0, 2.05022812, 0)
HawkHUB.OwlHUB.Size = UDim2.new(0, 360, 0, 72)

HawkHUB.UICorner_83.Parent = HawkHUB.OwlHUB

HawkHUB.Typee_12.Name = "Typee"
HawkHUB.Typee_12.Parent = HawkHUB.OwlHUB
HawkHUB.Typee_12.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_12.BackgroundTransparency = 1.000
HawkHUB.Typee_12.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Typee_12.Position = UDim2.new(0.0361934192, 0, 0.357222229, 0)
HawkHUB.Typee_12.Size = UDim2.new(0, 190, 0, 17)
HawkHUB.Typee_12.Font = Enum.Font.Montserrat
HawkHUB.Typee_12.Text = "<i> Universal </i>"
HawkHUB.Typee_12.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Typee_12.TextSize = 14.000
HawkHUB.Typee_12.TextWrapped = true
HawkHUB.Typee_12.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Typee_12.RichText = true

HawkHUB.Credits_12.Name = "Credits"
HawkHUB.Credits_12.Parent = HawkHUB.OwlHUB
HawkHUB.Credits_12.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_12.BackgroundTransparency = 1.000
HawkHUB.Credits_12.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Credits_12.Position = UDim2.new(0.0408882536, 0, 0.607222259, 0)
HawkHUB.Credits_12.Size = UDim2.new(0, 208, 0, 17)
HawkHUB.Credits_12.Font = Enum.Font.Gotham
HawkHUB.Credits_12.Text = "by CriShoux & Google Chrome"
HawkHUB.Credits_12.TextColor3 = Color3.fromRGB(211, 211, 211)
HawkHUB.Credits_12.TextSize = 14.000
HawkHUB.Credits_12.TextWrapped = true
HawkHUB.Credits_12.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Title_12.Name = "Title"
HawkHUB.Title_12.Parent = HawkHUB.OwlHUB
HawkHUB.Title_12.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_12.BackgroundTransparency = 1.000
HawkHUB.Title_12.BorderColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Title_12.Position = UDim2.new(0.0408882573, 0, 0.129444435, 0)
HawkHUB.Title_12.Size = UDim2.new(0, 188, 0, 17)
HawkHUB.Title_12.Font = Enum.Font.GothamBold
HawkHUB.Title_12.Text = "Owl HUB"
HawkHUB.Title_12.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Title_12.TextSize = 14.000
HawkHUB.Title_12.TextWrapped = true
HawkHUB.Title_12.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Center_12.Name = "Center"
HawkHUB.Center_12.Parent = HawkHUB.OwlHUB
HawkHUB.Center_12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_12.BackgroundTransparency = 1.000
HawkHUB.Center_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Center_12.Position = UDim2.new(0.760563374, 0, 0, 0)
HawkHUB.Center_12.Size = UDim2.new(0, 85, 0, 72)

HawkHUB.UICorner_84.Parent = HawkHUB.Center_12

HawkHUB.UIListLayout_27.Parent = HawkHUB.Center_12
HawkHUB.UIListLayout_27.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_27.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_27.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_27.Padding = UDim.new(0, 7)

HawkHUB.CopyFrame_12.Name = "CopyFrame"
HawkHUB.CopyFrame_12.Parent = HawkHUB.Center_12
HawkHUB.CopyFrame_12.BackgroundColor3 = Color3.fromRGB(9, 0, 27)
HawkHUB.CopyFrame_12.BackgroundTransparency = 0.300
HawkHUB.CopyFrame_12.BorderColor3 = Color3.fromRGB(16, 0, 47)
HawkHUB.CopyFrame_12.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.Copy_12.Name = "Copy"
HawkHUB.Copy_12.Parent = HawkHUB.CopyFrame_12
HawkHUB.Copy_12.BackgroundColor3 = Color3.fromRGB(16, 0, 47)
HawkHUB.Copy_12.BackgroundTransparency = 1.000
HawkHUB.Copy_12.BorderColor3 = Color3.fromRGB(16, 0, 47)
HawkHUB.Copy_12.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Copy_12.Font = Enum.Font.Gotham
HawkHUB.Copy_12.Text = "Copy"
HawkHUB.Copy_12.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Copy_12.TextSize = 14.000
HawkHUB.Copy_12.MouseButton1Click:Connect(function()
	setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()]])
end)

HawkHUB.UICorner_85.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_85.Parent = HawkHUB.Copy_12

HawkHUB.UICorner_86.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_86.Parent = HawkHUB.CopyFrame_12

HawkHUB.ExecuteFrame_12.Name = "ExecuteFrame"
HawkHUB.ExecuteFrame_12.Parent = HawkHUB.Center_12
HawkHUB.ExecuteFrame_12.BackgroundColor3 = Color3.fromRGB(9, 0, 27)
HawkHUB.ExecuteFrame_12.BackgroundTransparency = 0.300
HawkHUB.ExecuteFrame_12.BorderColor3 = Color3.fromRGB(16, 0, 47)
HawkHUB.ExecuteFrame_12.Size = UDim2.new(0, 64, 0, 22)

HawkHUB.UICorner_87.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_87.Parent = HawkHUB.ExecuteFrame_12

HawkHUB.Execute_12.Name = "Execute"
HawkHUB.Execute_12.Parent = HawkHUB.ExecuteFrame_12
HawkHUB.Execute_12.BackgroundColor3 = Color3.fromRGB(16, 0, 47)
HawkHUB.Execute_12.BackgroundTransparency = 1.000
HawkHUB.Execute_12.BorderColor3 = Color3.fromRGB(16, 0, 47)
HawkHUB.Execute_12.Size = UDim2.new(0, 64, 0, 22)
HawkHUB.Execute_12.Font = Enum.Font.Gotham
HawkHUB.Execute_12.Text = "Execute"
HawkHUB.Execute_12.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Execute_12.TextSize = 14.000
HawkHUB.Execute_12.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
end)

HawkHUB.UICorner_88.CornerRadius = UDim.new(0, 5)
HawkHUB.UICorner_88.Parent = HawkHUB.Execute_12

HawkHUB.UIGradient_12.Parent = HawkHUB.OwlHUB

HawkHUB.Search_2.Name = "Search"
HawkHUB.Search_2.Parent = HawkHUB.ScriptsPage
HawkHUB.Search_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Search_2.BackgroundTransparency = 1.000
HawkHUB.Search_2.BorderColor3 = Color3.fromRGB(35, 35, 35)
HawkHUB.Search_2.BorderSizePixel = 0
HawkHUB.Search_2.Position = UDim2.new(0.0869422257, 0, 0.0956068859, 0)
HawkHUB.Search_2.Size = UDim2.new(0, 318, 0, 23)
HawkHUB.Search_2.Font = Enum.Font.SourceSans
HawkHUB.Search_2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search_2.PlaceholderText = "Search For A Script"
HawkHUB.Search_2.Text = ""
HawkHUB.Search_2.TextColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search_2.TextSize = 18.000
HawkHUB.Search_2.ClearTextOnFocus = false
HawkHUB.Search_2.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Search_2:GetPropertyChangedSignal("Text"):Connect(function()
	for i, v in pairs(HawkHUB.Games:GetChildren()) do
		if v:IsA("TextLabel") then
			if string.match(string.lower(v.Name),string.lower(HawkHUB.Search_2.Text)) then
				v.Visible = true
			else
				v.Visible = false
			end
		end
	end
	if HawkHUB.Search_2.Text == "" then
		for i, v in pairs(HawkHUB.Games:GetChildren()) do
			if v:IsA("TextButton") then
				v.Visible = true
			end
		end
	end
end)


HawkHUB.Search_2:GetPropertyChangedSignal("Text"):Connect(function()
	for i, v in pairs(HawkHUB.Scripts:GetDescendants()) do
		if v:IsA("TextLabel") then
			if string.match(string.lower(v.Text),string.lower(HawkHUB.Search_2.Text)) then
				for a, b in pairs(HawkHUB.Scripts:GetDescendants()) do
					if b:IsA("TextLabel") then
						b.Parent.Visible = false
					end
				end
				v.Parent.Visible = true
			end
		end
	end

	if HawkHUB.Search_2.Text == "" then
		for i, v in pairs(HawkHUB.Scripts:GetDescendants()) do
			if v:IsA("TextLabel") then
				v.Parent.Visible = true
			end
		end
	end
end)

HawkHUB.ImageLabel_2.Parent = HawkHUB.Search_2
HawkHUB.ImageLabel_2.BackgroundTransparency = 1.000
HawkHUB.ImageLabel_2.BorderSizePixel = 0
HawkHUB.ImageLabel_2.Position = UDim2.new(-0.0743345469, 0, 0.146912947, 0)
HawkHUB.ImageLabel_2.Size = UDim2.new(0, 20, 0, 20)
HawkHUB.ImageLabel_2.Image = "http://www.roblox.com/asset/?id=6031154871"
HawkHUB.ImageLabel_2.ImageColor3 = Color3.fromRGB(178, 178, 178)

HawkHUB.ScriptsPageTitle.Name = "ScriptsPageTitle"
HawkHUB.ScriptsPageTitle.Parent = HawkHUB.ScriptsPage
HawkHUB.ScriptsPageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ScriptsPageTitle.BackgroundTransparency = 1.000
HawkHUB.ScriptsPageTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ScriptsPageTitle.BorderSizePixel = 0
HawkHUB.ScriptsPageTitle.Position = UDim2.new(0.0286533274, 0, 0, 0)
HawkHUB.ScriptsPageTitle.Size = UDim2.new(0, 65, 0, 31)
HawkHUB.ScriptsPageTitle.Font = Enum.Font.SourceSans
HawkHUB.ScriptsPageTitle.Text = "Scripts"
HawkHUB.ScriptsPageTitle.TextColor3 = Color3.fromRGB(166, 166, 166)
HawkHUB.ScriptsPageTitle.TextSize = 14.000
HawkHUB.ScriptsPageTitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.UIGradient_13.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(68, 135, 180))}
HawkHUB.UIGradient_13.Offset = Vector2.new(0, -0.400000006)
HawkHUB.UIGradient_13.Rotation = -90
HawkHUB.UIGradient_13.Parent = HawkHUB.ScriptsPage

HawkHUB.GamesPage.Name = "GamesPage"
HawkHUB.GamesPage.Parent = HawkHUB.PageHolder
HawkHUB.GamesPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.GamesPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.GamesPage.BorderSizePixel = 0
HawkHUB.GamesPage.Position = UDim2.new(0.5, -192,0.512, -65)
HawkHUB.GamesPage.Size = UDim2.new(0, 376, 0, 306)
HawkHUB.GamesPage.Visible = false
HawkHUB.GamesPage.ZIndex = 2

HawkHUB.UICorner_89.Parent = HawkHUB.GamesPage

HawkHUB.GamesPageTitle.Name = "GamesPageTitle"
HawkHUB.GamesPageTitle.Parent = HawkHUB.GamesPage
HawkHUB.GamesPageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.GamesPageTitle.BackgroundTransparency = 1.000
HawkHUB.GamesPageTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GamesPageTitle.BorderSizePixel = 0
HawkHUB.GamesPageTitle.Position = UDim2.new(0.0286533274, 0, 0, 0)
HawkHUB.GamesPageTitle.Size = UDim2.new(0, 65, 0, 31)
HawkHUB.GamesPageTitle.Font = Enum.Font.SourceSans
HawkHUB.GamesPageTitle.Text = "Games"
HawkHUB.GamesPageTitle.TextColor3 = Color3.fromRGB(166, 166, 166)
HawkHUB.GamesPageTitle.TextSize = 14.000
HawkHUB.GamesPageTitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Search_3.Name = "Search"
HawkHUB.Search_3.Parent = HawkHUB.GamesPage
HawkHUB.Search_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Search_3.BorderColor3 = Color3.fromRGB(35, 35, 35)
HawkHUB.Search_3.BorderSizePixel = 0
HawkHUB.Search_3.Position = UDim2.new(0.0869422257, 0, 0.0956068859, 0)
HawkHUB.Search_3.Size = UDim2.new(0, 318, 0, 23)
HawkHUB.Search_3.Font = Enum.Font.SourceSans
HawkHUB.Search_3.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search_3.PlaceholderText = "Search For A Game"
HawkHUB.Search_3.Text = ""
HawkHUB.Search_3.TextColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search_3.TextSize = 18.000
HawkHUB.Search_3.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Search_3:GetPropertyChangedSignal("Text"):Connect(function()
	for i, v in pairs(HawkHUB.Games:GetChildren()) do
		if v:IsA("Frame") then
			if string.match(string.lower(v.Name),string.lower(HawkHUB.Search_3.Text)) then
				v.Visible = true
			else
				v.Visible = false
			end
		end
	end
	if HawkHUB.Search_3.Text == "" then
		for i, v in pairs(HawkHUB.Games:GetChildren()) do
			if v:IsA("TextButton") then
				v.Visible = true
			end
		end
	end
end)

HawkHUB.ImageLabel_3.Parent = HawkHUB.Search_3
HawkHUB.ImageLabel_3.BackgroundTransparency = 1.000
HawkHUB.ImageLabel_3.BorderSizePixel = 0
HawkHUB.ImageLabel_3.Position = UDim2.new(-0.0743345469, 0, 0.146912947, 0)
HawkHUB.ImageLabel_3.Size = UDim2.new(0, 20, 0, 20)
HawkHUB.ImageLabel_3.Image = "http://www.roblox.com/asset/?id=6031154871"
HawkHUB.ImageLabel_3.ImageColor3 = Color3.fromRGB(178, 178, 178)

HawkHUB.Games.Name = "Games"
HawkHUB.Games.Parent = HawkHUB.GamesPage
HawkHUB.Games.Active = true
HawkHUB.Games.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
HawkHUB.Games.BackgroundTransparency = 1
HawkHUB.Games.BorderColor3 = Color3.fromRGB(36, 36, 36)
HawkHUB.Games.BorderSizePixel = 0
HawkHUB.Games.Position = UDim2.new(-1.62327538e-07, 0, 0.211294979, 0)
HawkHUB.Games.Size = UDim2.new(0, 376, 0, 241)
HawkHUB.Games.CanvasSize = UDim2.new(0, 0, 1, 0)
HawkHUB.Games.ScrollBarThickness = 4

HawkHUB.UIListLayout_28.Parent = HawkHUB.Games
HawkHUB.UIListLayout_28.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_28.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_28.Padding = UDim.new(0, 10)

HawkHUB.CreditsPage.Name = "CreditsPage"
HawkHUB.CreditsPage.Parent = HawkHUB.PageHolder
HawkHUB.CreditsPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.CreditsPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.CreditsPage.BorderSizePixel = 0
HawkHUB.CreditsPage.Size = UDim2.new(0, 376, 0, 288)
HawkHUB.CreditsPage.Position = UDim2.new(0.5, -192,0.512, -65)
HawkHUB.CreditsPage.Visible = false
HawkHUB.CreditsPage.ZIndex = 2

HawkHUB.UICorner_92.Parent = HawkHUB.CreditsPage

HawkHUB.CreditsPageTitle.Name = "CreditsPageTitle"
HawkHUB.CreditsPageTitle.Parent = HawkHUB.CreditsPage
HawkHUB.CreditsPageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.CreditsPageTitle.BackgroundTransparency = 1.000
HawkHUB.CreditsPageTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.CreditsPageTitle.BorderSizePixel = 0
HawkHUB.CreditsPageTitle.Position = UDim2.new(0.0286533274, 0, 0, 0)
HawkHUB.CreditsPageTitle.Size = UDim2.new(0, 65, 0, 31)
HawkHUB.CreditsPageTitle.Font = Enum.Font.SourceSans
HawkHUB.CreditsPageTitle.Text = "Credits"
HawkHUB.CreditsPageTitle.TextColor3 = Color3.fromRGB(166, 166, 166)
HawkHUB.CreditsPageTitle.TextSize = 14.000
HawkHUB.CreditsPageTitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Credits_13.Name = "Credits"
HawkHUB.Credits_13.Parent = HawkHUB.CreditsPage
HawkHUB.Credits_13.Active = true
HawkHUB.Credits_13.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
HawkHUB.Credits_13.BackgroundTransparency = 1.000
HawkHUB.Credits_13.BorderColor3 = Color3.fromRGB(36, 36, 36)
HawkHUB.Credits_13.BorderSizePixel = 0
HawkHUB.Credits_13.Position = UDim2.new(-1.62327538e-07, 0, 0.194884568, 0)
HawkHUB.Credits_13.Size = UDim2.new(0, 376, 0, 231)
HawkHUB.Credits_13.CanvasSize = UDim2.new(0, 0, 0, 0)
HawkHUB.Credits_13.ScrollBarThickness = 4

HawkHUB.UIListLayout_30.Parent = HawkHUB.Credits_13
HawkHUB.UIListLayout_30.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_30.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_30.Padding = UDim.new(0, 10)

HawkHUB.Search_4.Name = "Search"
HawkHUB.Search_4.Parent = HawkHUB.CreditsPage
HawkHUB.Search_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Search_4.BorderColor3 = Color3.fromRGB(35, 35, 35)
HawkHUB.Search_4.BorderSizePixel = 0
HawkHUB.Search_4.Position = UDim2.new(0.0869422257, 0, 0.0956068859, 0)
HawkHUB.Search_4.Size = UDim2.new(0, 318, 0, 23)
HawkHUB.Search_4.Font = Enum.Font.SourceSans
HawkHUB.Search_4.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search_4.PlaceholderText = "Search For A People"
HawkHUB.Search_4.Text = ""
HawkHUB.Search_4.TextColor3 = Color3.fromRGB(178, 178, 178)
HawkHUB.Search_4.TextSize = 18.000
HawkHUB.Search_4.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.Search_4:GetPropertyChangedSignal("Text"):Connect(function()
	for i, v in pairs(HawkHUB.Credits_13:GetChildren()) do
		if v:IsA("Frame") then
			if string.match(string.lower(v.Name),string.lower(HawkHUB.Search_4.Text)) then
				v.Visible = true
			else
				v.Visible = false
			end
		end
	end
	if HawkHUB.Search_4.Text == "" then
		for i, v in pairs(HawkHUB.Credits_13:GetChildren()) do
			if v:IsA("TextButton") then
				v.Visible = true
			end
		end
	end
end)

HawkHUB.ImageLabel_4.Parent = HawkHUB.Search_4
HawkHUB.ImageLabel_4.BackgroundTransparency = 1.000
HawkHUB.ImageLabel_4.BorderSizePixel = 0
HawkHUB.ImageLabel_4.Position = UDim2.new(-0.0743345469, 0, 0.146912947, 0)
HawkHUB.ImageLabel_4.Size = UDim2.new(0, 20, 0, 20)
HawkHUB.ImageLabel_4.Image = "http://www.roblox.com/asset/?id=6031154871"
HawkHUB.ImageLabel_4.ImageColor3 = Color3.fromRGB(178, 178, 178)

HawkHUB.SettingsPage.Name = "SettingsPage"
HawkHUB.SettingsPage.Parent = HawkHUB.PageHolder
HawkHUB.SettingsPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.SettingsPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.SettingsPage.BorderSizePixel = 0
HawkHUB.SettingsPage.Size = UDim2.new(0, 376, 0, 163)
HawkHUB.SettingsPage.Visible = false
HawkHUB.SettingsPage.ZIndex = 2
if UserInputService.KeyboardEnabled then
	HawkHUB.SettingsPage.Position = UDim2.new(0.5, -191, 0.600000024, 16)
else
	HawkHUB.SettingsPage.Position = UDim2.new(0.5, -191, 0.600000024, -110)
end
HawkHUB.UICorner_97.Parent = HawkHUB.SettingsPage

HawkHUB.SettingsPageTitle.Name = "SettingsPageTitle"
HawkHUB.SettingsPageTitle.Parent = HawkHUB.SettingsPage
HawkHUB.SettingsPageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.SettingsPageTitle.BackgroundTransparency = 1.000
HawkHUB.SettingsPageTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.SettingsPageTitle.BorderSizePixel = 0
HawkHUB.SettingsPageTitle.Position = UDim2.new(0.0286533274, 0, 0, 0)
HawkHUB.SettingsPageTitle.Size = UDim2.new(0, 65, 0, 31)
HawkHUB.SettingsPageTitle.Font = Enum.Font.SourceSans
HawkHUB.SettingsPageTitle.Text = "Settings"
HawkHUB.SettingsPageTitle.TextColor3 = Color3.fromRGB(166, 166, 166)
HawkHUB.SettingsPageTitle.TextSize = 14.000
HawkHUB.SettingsPageTitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Settingzz.Name = "Settingzz"
HawkHUB.Settingzz.Parent = HawkHUB.SettingsPage
HawkHUB.Settingzz.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Settingzz.BackgroundTransparency = 1.000
HawkHUB.Settingzz.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Settingzz.BorderSizePixel = 0
HawkHUB.Settingzz.Position = UDim2.new(0.0974211991, 0, 0.190183952, 0)
HawkHUB.Settingzz.Size = UDim2.new(0, 266, 0, 121)

HawkHUB.UIListLayout_33.Parent = HawkHUB.Settingzz
HawkHUB.UIListLayout_33.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_33.Padding = UDim.new(0, 11)

HawkHUB.GameDetectToggli.Name = "GameDetectToggli"
HawkHUB.GameDetectToggli.Parent = HawkHUB.Settingzz
HawkHUB.GameDetectToggli.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.GameDetectToggli.BackgroundTransparency = 1.000
HawkHUB.GameDetectToggli.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.GameDetectToggli.BorderSizePixel = 0
HawkHUB.GameDetectToggli.Size = UDim2.new(0, 192, 0, 21)
HawkHUB.GameDetectToggli.Font = Enum.Font.SourceSans
HawkHUB.GameDetectToggli.Text = "Game Detection Notification:"
HawkHUB.GameDetectToggli.TextColor3 = Color3.fromRGB(220, 220, 220)
HawkHUB.GameDetectToggli.TextSize = 19.000
HawkHUB.GameDetectToggli.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Loadiir.Name = "Loadiir"
HawkHUB.Loadiir.Parent = HawkHUB.Settingzz
HawkHUB.Loadiir.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Loadiir.BackgroundTransparency = 1.000
HawkHUB.Loadiir.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Loadiir.BorderSizePixel = 0
HawkHUB.Loadiir.Position = UDim2.new(3.44183206e-07, 0, 0.256198347, 0)
HawkHUB.Loadiir.Size = UDim2.new(0, 78, 0, 21)
HawkHUB.Loadiir.Font = Enum.Font.SourceSans
HawkHUB.Loadiir.Text = "Loader GUI:"
HawkHUB.Loadiir.TextColor3 = Color3.fromRGB(220, 220, 220)
HawkHUB.Loadiir.TextSize = 19.000
HawkHUB.Loadiir.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.KeySave.Name = "KeySave"
HawkHUB.KeySave.Parent = HawkHUB.Settingzz
HawkHUB.KeySave.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.KeySave.BackgroundTransparency = 1.000
HawkHUB.KeySave.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.KeySave.BorderSizePixel = 0
HawkHUB.KeySave.Position = UDim2.new(3.44183206e-07, 0, 0.512396693, 0)
HawkHUB.KeySave.Size = UDim2.new(0, 64, 0, 21)
HawkHUB.KeySave.Font = Enum.Font.SourceSans
HawkHUB.KeySave.Text = "Key Save:"
HawkHUB.KeySave.TextColor3 = Color3.fromRGB(220, 220, 220)
HawkHUB.KeySave.TextSize = 19.000
HawkHUB.KeySave.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.KeyBind.Name = "KeyBind"
HawkHUB.KeyBind.Parent = HawkHUB.Settingzz
HawkHUB.KeyBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.KeyBind.BackgroundTransparency = 1.000
HawkHUB.KeyBind.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.KeyBind.BorderSizePixel = 0
HawkHUB.KeyBind.Position = UDim2.new(0, 0, 0.818181813, 0)
HawkHUB.KeyBind.Size = UDim2.new(0, 78, 0, 13)
HawkHUB.KeyBind.Font = Enum.Font.SourceSans
HawkHUB.KeyBind.Text = "UI Keybind:"
HawkHUB.KeyBind.TextColor3 = Color3.fromRGB(220, 220, 220)
HawkHUB.KeyBind.TextSize = 19.000
HawkHUB.KeyBind.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.BindSelection.Name = "BindSelection"
HawkHUB.BindSelection.Parent = HawkHUB.KeyBind
HawkHUB.BindSelection.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
HawkHUB.BindSelection.BorderColor3 = Color3.fromRGB(60, 60, 60)
HawkHUB.BindSelection.BorderSizePixel = 0
HawkHUB.BindSelection.Position = UDim2.new(1.00281978, 0, -0.32475397, 0)
HawkHUB.BindSelection.Size = UDim2.new(0, 24, 0, 24)
HawkHUB.BindSelection.ZIndex = 3

HawkHUB.Bind.Name = "Bind"
HawkHUB.Bind.Parent = HawkHUB.BindSelection
HawkHUB.Bind.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Bind.BackgroundTransparency = 1.000
HawkHUB.Bind.BorderColor3 = Color3.fromRGB(27, 27, 27)
HawkHUB.Bind.BorderSizePixel = 0
HawkHUB.Bind.Size = UDim2.new(0, 24, 0, 24)
HawkHUB.Bind.ZIndex = 0
HawkHUB.Bind.Font = Enum.Font.Gotham
HawkHUB.Bind.Text = "K"
HawkHUB.Bind.TextColor3 = Color3.fromRGB(199, 199, 199)
HawkHUB.Bind.TextSize = 13.000

HawkHUB.UICorner_104.CornerRadius = UDim.new(0, 7)
HawkHUB.UICorner_104.Parent = HawkHUB.BindSelection

--------------------------------------

local ToggleFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SlidingToggle = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local loader = Instance.new("TextButton")
local ToggleFrame_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local SlidingToggle_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local key = Instance.new("TextButton")
local ToggleFrame_3 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local SlidingToggle_3 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local GameDetectBtn = Instance.new("TextButton")

ToggleFrame.Name = "ToggleFrame"
ToggleFrame.Parent = HawkHUB.Loadiir
ToggleFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ToggleFrame.BorderColor3 = Color3.fromRGB(0, 85, 255)
ToggleFrame.BorderSizePixel = 0
ToggleFrame.Position = UDim2.new(1.00840211, 0, 0.0476190485, 0)
ToggleFrame.Size = UDim2.new(0, 46, 0, 20)

UICorner.CornerRadius = UDim.new(99, 99)
UICorner.Parent = ToggleFrame

SlidingToggle.Name = "SlidingToggle"
SlidingToggle.Parent = ToggleFrame
SlidingToggle.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
SlidingToggle.BorderColor3 = Color3.fromRGB(255, 255, 255)
SlidingToggle.BorderSizePixel = 0
SlidingToggle.Position = UDim2.new(0.06, 0,0.1, 0)
SlidingToggle.Size = UDim2.new(0, 16, 0, 16)

UICorner_2.CornerRadius = UDim.new(99, 99)
UICorner_2.Parent = SlidingToggle

loader.Name = "loader"
loader.Parent = ToggleFrame
loader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loader.BackgroundTransparency = 1.000
loader.BorderColor3 = Color3.fromRGB(0, 0, 0)
loader.BorderSizePixel = 0
loader.Position = UDim2.new(0, 0, 0.0133544924, 0)
loader.Size = UDim2.new(0, 46, 0, 19)
loader.Font = Enum.Font.SourceSans
loader.Text = ""
loader.TextColor3 = Color3.fromRGB(0, 0, 0)
loader.TextSize = 14.000

ToggleFrame_2.Name = "ToggleFrame"
ToggleFrame_2.Parent = HawkHUB.KeySave
ToggleFrame_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ToggleFrame_2.BorderColor3 = Color3.fromRGB(0, 85, 255)
ToggleFrame_2.BorderSizePixel = 0
ToggleFrame_2.Position = UDim2.new(1.0067997, 0, 0.0476190485, 0)
ToggleFrame_2.Size = UDim2.new(0, 46, 0, 20)

UICorner_3.CornerRadius = UDim.new(99, 99)
UICorner_3.Parent = ToggleFrame_2

SlidingToggle_2.Name = "SlidingToggle"
SlidingToggle_2.Parent = ToggleFrame_2
SlidingToggle_2.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
SlidingToggle_2.BorderColor3 = Color3.fromRGB(98, 98, 98)
SlidingToggle_2.BorderSizePixel = 0
SlidingToggle_2.Position = UDim2.new(0.06, 0,0.1, 0)
SlidingToggle_2.Size = UDim2.new(0, 16, 0, 16)

UICorner_4.CornerRadius = UDim.new(99, 99)
UICorner_4.Parent = SlidingToggle_2

key.Name = "key"
key.Parent = ToggleFrame_2
key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
key.BackgroundTransparency = 1.000
key.BorderColor3 = Color3.fromRGB(0, 0, 0)
key.BorderSizePixel = 0
key.Position = UDim2.new(0, 0, 0.0133544924, 0)
key.Size = UDim2.new(0, 46, 0, 19)
key.Font = Enum.Font.SourceSans
key.Text = ""
key.TextColor3 = Color3.fromRGB(0, 0, 0)
key.TextSize = 14.000

ToggleFrame_3.Name = "ToggleFrame"
ToggleFrame_3.Parent = HawkHUB.GameDetectToggli
ToggleFrame_3.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ToggleFrame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleFrame_3.BorderSizePixel = 0
ToggleFrame_3.Position = UDim2.new(0.999225438, 0, 0.0476190485, 0)
ToggleFrame_3.Size = UDim2.new(0, 46, 0, 20)

UICorner_5.CornerRadius = UDim.new(99, 99)
UICorner_5.Parent = ToggleFrame_3

SlidingToggle_3.Name = "SlidingToggle"
SlidingToggle_3.Parent = ToggleFrame_3
SlidingToggle_3.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
SlidingToggle_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
SlidingToggle_3.BorderSizePixel = 0
SlidingToggle_3.Position = UDim2.new(0.06, 0,0.1, 0)
SlidingToggle_3.Size = UDim2.new(0, 16, 0, 16)

UICorner_6.CornerRadius = UDim.new(99, 99)
UICorner_6.Parent = SlidingToggle_3

GameDetectBtn.Name = "GameDetectBtn"
GameDetectBtn.Parent = ToggleFrame_3
GameDetectBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameDetectBtn.BackgroundTransparency = 1.000
GameDetectBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameDetectBtn.BorderSizePixel = 0
GameDetectBtn.Position = UDim2.new(0, 0, 0.0133544924, 0)
GameDetectBtn.Size = UDim2.new(0, 46, 0, 19)
GameDetectBtn.Font = Enum.Font.SourceSans
GameDetectBtn.Text = ""
GameDetectBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
GameDetectBtn.TextSize = 14.000

local truetogglefinished = true
local falsetogglefinished = true

function firetoggleastrue(ToggleName)
	if falsetogglefinished == false then return end
	truetogglefinished = false
	TweenService:Create(
		ToggleName:FindFirstChild("SlidingToggle"),
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0.6, 0,0.095, 0)}
	):Play()
	TweenService:Create(
		ToggleName:FindFirstChild("SlidingToggle"),
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(255, 255, 255)}
	):Play()
	TweenService:Create(
		ToggleName,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(85, 85, 255)}
	):Play()
	truetogglefinished = true
end

function firetoggleasfalse(ToggleName)
	if truetogglefinished == false then return end
	falsetogglefinished = false
	TweenService:Create(
		ToggleName:FindFirstChild("SlidingToggle"),
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0.06, 0,0.1, 0)}
	):Play()
	TweenService:Create(
		ToggleName:FindFirstChild("SlidingToggle"),
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(98, 98, 98)}
	):Play()
	TweenService:Create(
		ToggleName,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
	):Play()
	falsetogglefinished = true
end

---------------------------------------

HawkHUB.LocalPage.Name = "LocalPage"
HawkHUB.LocalPage.Parent = HawkHUB.PageHolder
HawkHUB.LocalPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.LocalPage.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.LocalPage.BorderSizePixel = 0
HawkHUB.LocalPage.Size = UDim2.new(0, 383, 0, 163)
HawkHUB.LocalPage.Visible = false
HawkHUB.LocalPage.ZIndex = 2
if UserInputService.KeyboardEnabled then
	HawkHUB.LocalPage.Position = UDim2.new(0.5, -191, 0.600000024, 16)
else
	HawkHUB.LocalPage.Position = UDim2.new(0.5, -191, 0.600000024, -110)
end

HawkHUB.Glow.Name = "Glow"
HawkHUB.Glow.Parent = HawkHUB.LocalPage
HawkHUB.Glow.Active = true
HawkHUB.Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.Glow.BackgroundTransparency = 1.000
HawkHUB.Glow.BorderColor3 = Color3.fromRGB(27, 42, 53)
HawkHUB.Glow.Position = UDim2.new(0, -15, 0, -15)
HawkHUB.Glow.Size = UDim2.new(1, 30, 1, 30)
HawkHUB.Glow.ZIndex = 0
HawkHUB.Glow.Image = "rbxassetid://5028857084"
HawkHUB.Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Glow.ImageTransparency = 0.500
HawkHUB.Glow.ScaleType = Enum.ScaleType.Slice
HawkHUB.Glow.SliceCenter = Rect.new(24, 24, 276, 276)

HawkHUB.LocalPageTitle.Name = "LocalPageTitle"
HawkHUB.LocalPageTitle.Parent = HawkHUB.LocalPage
HawkHUB.LocalPageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.LocalPageTitle.BackgroundTransparency = 1.000
HawkHUB.LocalPageTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.LocalPageTitle.BorderSizePixel = 0
HawkHUB.LocalPageTitle.Position = UDim2.new(0.0286533274, 0, 0, 0)
HawkHUB.LocalPageTitle.Size = UDim2.new(0, 65, 0, 31)
HawkHUB.LocalPageTitle.Font = Enum.Font.SourceSans
HawkHUB.LocalPageTitle.Text = "Local"
HawkHUB.LocalPageTitle.TextColor3 = Color3.fromRGB(166, 166, 166)
HawkHUB.LocalPageTitle.TextSize = 14.000
HawkHUB.LocalPageTitle.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.UICorner_105.CornerRadius = UDim.new(0, 6)
HawkHUB.UICorner_105.Parent = HawkHUB.LocalPage

HawkHUB.Sliders.Name = "Sliders"
HawkHUB.Sliders.Parent = HawkHUB.LocalPage
HawkHUB.Sliders.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
HawkHUB.Sliders.BackgroundTransparency = 1.000
HawkHUB.Sliders.BorderColor3 = Color3.fromRGB(24, 24, 24)
HawkHUB.Sliders.BorderSizePixel = 0
HawkHUB.Sliders.Position = UDim2.new(0.0230883341, 0, 0.190184042, 0)
HawkHUB.Sliders.Size = UDim2.new(0, 181, 0, 120)
HawkHUB.Sliders.ZIndex = 7

HawkHUB.WalkSpeed.Name = "WalkSpeed"
HawkHUB.WalkSpeed.Parent = HawkHUB.Sliders
HawkHUB.WalkSpeed.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.WalkSpeed.BackgroundTransparency = 0.240
HawkHUB.WalkSpeed.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.WalkSpeed.Position = UDim2.new(0.0857142881, 0, 0, 0)
HawkHUB.WalkSpeed.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.WalkSpeed.ZIndex = 2

HawkHUB.UICorner_106.Parent = HawkHUB.WalkSpeed

HawkHUB.Title_14.Name = "Title"
HawkHUB.Title_14.Parent = HawkHUB.WalkSpeed
HawkHUB.Title_14.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_14.BackgroundTransparency = 1.000
HawkHUB.Title_14.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_14.BorderSizePixel = 0
HawkHUB.Title_14.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.Title_14.ZIndex = 6
HawkHUB.Title_14.Font = Enum.Font.GothamMedium
HawkHUB.Title_14.Text = "16 WalkSpeed"
HawkHUB.Title_14.TextColor3 = Color3.fromRGB(145, 145, 145)
HawkHUB.Title_14.TextSize = 11.000

HawkHUB.Action.Name = "Action"
HawkHUB.Action.Parent = HawkHUB.WalkSpeed
HawkHUB.Action.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action.BackgroundTransparency = 1.000
HawkHUB.Action.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action.Size = UDim2.new(1, 0, 1, 0)
HawkHUB.Action.ZIndex = 2
HawkHUB.Action.Font = Enum.Font.SourceSans
HawkHUB.Action.Text = ""
HawkHUB.Action.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Action.TextSize = 14.000

HawkHUB.Amount.Name = "Amount"
HawkHUB.Amount.Parent = HawkHUB.Action
HawkHUB.Amount.BackgroundColor3 = Color3.fromRGB(7, 119, 95)
HawkHUB.Amount.BorderColor3 = Color3.fromRGB(7, 119, 95)
HawkHUB.Amount.Size = UDim2.new(0.074038133, 0, 1, 0)
HawkHUB.Amount.ZIndex = 2

HawkHUB.UICorner_107.Parent = HawkHUB.Amount

HawkHUB.UIListLayout_34.Parent = HawkHUB.Sliders
HawkHUB.UIListLayout_34.HorizontalAlignment = Enum.HorizontalAlignment.Center
HawkHUB.UIListLayout_34.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_34.VerticalAlignment = Enum.VerticalAlignment.Center
HawkHUB.UIListLayout_34.Padding = UDim.new(0, 12)

HawkHUB.FlySpeed.Name = "FlySpeed"
HawkHUB.FlySpeed.Parent = HawkHUB.Sliders
HawkHUB.FlySpeed.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.FlySpeed.BackgroundTransparency = 0.240
HawkHUB.FlySpeed.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.FlySpeed.Position = UDim2.new(0.0230882894, 0, 0.520072937, 0)
HawkHUB.FlySpeed.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.FlySpeed.ZIndex = 2

HawkHUB.UICorner_108.Parent = HawkHUB.FlySpeed

HawkHUB.Title_15.Name = "Title"
HawkHUB.Title_15.Parent = HawkHUB.FlySpeed
HawkHUB.Title_15.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_15.BackgroundTransparency = 1.000
HawkHUB.Title_15.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_15.BorderSizePixel = 0
HawkHUB.Title_15.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.Title_15.ZIndex = 6
HawkHUB.Title_15.Font = Enum.Font.GothamMedium
HawkHUB.Title_15.Text = "1 FlySpeed"
HawkHUB.Title_15.TextColor3 = Color3.fromRGB(145, 145, 145)
HawkHUB.Title_15.TextSize = 11.000

HawkHUB.Action_2.Name = "Action"
HawkHUB.Action_2.Parent = HawkHUB.FlySpeed
HawkHUB.Action_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action_2.BackgroundTransparency = 1.000
HawkHUB.Action_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action_2.Size = UDim2.new(1, 0, 1, 0)
HawkHUB.Action_2.ZIndex = 2
HawkHUB.Action_2.Font = Enum.Font.SourceSans
HawkHUB.Action_2.Text = ""
HawkHUB.Action_2.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Action_2.TextSize = 14.000

HawkHUB.Amount_2.Name = "Amount"
HawkHUB.Amount_2.Parent = HawkHUB.Action_2
HawkHUB.Amount_2.BackgroundColor3 = Color3.fromRGB(174, 45, 13)
HawkHUB.Amount_2.BorderColor3 = Color3.fromRGB(174, 45, 13)
HawkHUB.Amount_2.Size = UDim2.new(0.074038133, 0, 1, 0)
HawkHUB.Amount_2.ZIndex = 2

HawkHUB.UICorner_109.Parent = HawkHUB.Amount_2

HawkHUB.HipHeight.Name = "HipHeight"
HawkHUB.HipHeight.Parent = HawkHUB.Sliders
HawkHUB.HipHeight.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.HipHeight.BackgroundTransparency = 0.240
HawkHUB.HipHeight.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.HipHeight.Position = UDim2.new(0.0230882894, 0, 0.773696125, 0)
HawkHUB.HipHeight.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.HipHeight.ZIndex = 2

HawkHUB.UICorner_110.Parent = HawkHUB.HipHeight

HawkHUB.Title_16.Name = "Title"
HawkHUB.Title_16.Parent = HawkHUB.HipHeight
HawkHUB.Title_16.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_16.BackgroundTransparency = 1.000
HawkHUB.Title_16.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_16.BorderSizePixel = 0
HawkHUB.Title_16.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.Title_16.ZIndex = 6
HawkHUB.Title_16.Font = Enum.Font.GothamMedium
HawkHUB.Title_16.Text = "1 HipHeight"
HawkHUB.Title_16.TextColor3 = Color3.fromRGB(145, 145, 145)
HawkHUB.Title_16.TextSize = 11.000

HawkHUB.Action_3.Name = "Action"
HawkHUB.Action_3.Parent = HawkHUB.HipHeight
HawkHUB.Action_3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action_3.BackgroundTransparency = 1.000
HawkHUB.Action_3.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action_3.Size = UDim2.new(1, 0, 1, 0)
HawkHUB.Action_3.ZIndex = 2
HawkHUB.Action_3.Font = Enum.Font.SourceSans
HawkHUB.Action_3.Text = ""
HawkHUB.Action_3.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Action_3.TextSize = 14.000

HawkHUB.Amount_3.Name = "Amount"
HawkHUB.Amount_3.Parent = HawkHUB.Action_3
HawkHUB.Amount_3.BackgroundColor3 = Color3.fromRGB(85, 0, 127)
HawkHUB.Amount_3.BorderColor3 = Color3.fromRGB(85, 0, 127)
HawkHUB.Amount_3.Size = UDim2.new(0.074038133, 0, 1, 0)
HawkHUB.Amount_3.ZIndex = 2

HawkHUB.UICorner_111.Parent = HawkHUB.Amount_3

HawkHUB.JumpPower.Name = "JumpPower"
HawkHUB.JumpPower.Parent = HawkHUB.Sliders
HawkHUB.JumpPower.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.JumpPower.BackgroundTransparency = 0.240
HawkHUB.JumpPower.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.JumpPower.Position = UDim2.new(0.0230882894, 0, 0.266449809, 0)
HawkHUB.JumpPower.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.JumpPower.ZIndex = 2

HawkHUB.UICorner_112.Parent = HawkHUB.JumpPower

HawkHUB.Title_17.Name = "Title"
HawkHUB.Title_17.Parent = HawkHUB.JumpPower
HawkHUB.Title_17.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_17.BackgroundTransparency = 1.000
HawkHUB.Title_17.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Title_17.BorderSizePixel = 0
HawkHUB.Title_17.Size = UDim2.new(0, 174, 0, 19)
HawkHUB.Title_17.ZIndex = 6
HawkHUB.Title_17.Font = Enum.Font.GothamMedium
HawkHUB.Title_17.Text = "10 JumpPower"
HawkHUB.Title_17.TextColor3 = Color3.fromRGB(145, 145, 145)
HawkHUB.Title_17.TextSize = 11.000

HawkHUB.Action_4.Name = "Action"
HawkHUB.Action_4.Parent = HawkHUB.JumpPower
HawkHUB.Action_4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action_4.BackgroundTransparency = 1.000
HawkHUB.Action_4.BorderColor3 = Color3.fromRGB(40, 40, 40)
HawkHUB.Action_4.Size = UDim2.new(1, 0, 1, 0)
HawkHUB.Action_4.ZIndex = 2
HawkHUB.Action_4.Font = Enum.Font.SourceSans
HawkHUB.Action_4.Text = ""
HawkHUB.Action_4.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Action_4.TextSize = 14.000

HawkHUB.Amount_4.Name = "Amount"
HawkHUB.Amount_4.Parent = HawkHUB.Action_4
HawkHUB.Amount_4.BackgroundColor3 = Color3.fromRGB(25, 107, 137)
HawkHUB.Amount_4.BorderColor3 = Color3.fromRGB(25, 107, 137)
HawkHUB.Amount_4.Size = UDim2.new(0.074038133, 0, 1, 0)
HawkHUB.Amount_4.ZIndex = 2

HawkHUB.UICorner_113.Parent = HawkHUB.Amount_4

HawkHUB.Items.Name = "Items"
HawkHUB.Items.Parent = HawkHUB.LocalPage
HawkHUB.Items.Active = true
HawkHUB.Items.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Items.BackgroundTransparency = 1.000
HawkHUB.Items.BorderColor3 = Color3.fromRGB(30, 30, 30)
HawkHUB.Items.BorderSizePixel = 0
HawkHUB.Items.Position = UDim2.new(0.585106552, 0, 0.21472393, 0)
HawkHUB.Items.Size = UDim2.new(0, 146, 0, 112)

HawkHUB.UIListLayout_35.Parent = HawkHUB.Items
HawkHUB.UIListLayout_35.FillDirection = Enum.FillDirection.Horizontal
HawkHUB.UIListLayout_35.SortOrder = Enum.SortOrder.LayoutOrder
HawkHUB.UIListLayout_35.Padding = UDim.new(0, 7)
HawkHUB.UIListLayout_35.Wraps = true

HawkHUB.WalkSpeed_2.Name = "WalkSpeed"
HawkHUB.WalkSpeed_2.Parent = HawkHUB.Items
HawkHUB.WalkSpeed_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.WalkSpeed_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.WalkSpeed_2.BorderSizePixel = 0
HawkHUB.WalkSpeed_2.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_114.Parent = HawkHUB.WalkSpeed_2

HawkHUB.SpeedIcon.Name = "SpeedIcon"
HawkHUB.SpeedIcon.Parent = HawkHUB.WalkSpeed_2
HawkHUB.SpeedIcon.BackgroundTransparency = 1.000
HawkHUB.SpeedIcon.BorderSizePixel = 0
HawkHUB.SpeedIcon.Position = UDim2.new(0.226999998, 0, 0.187999994, 0)
HawkHUB.SpeedIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.SpeedIcon.Image = "http://www.roblox.com/asset/?id=6026681578"
HawkHUB.SpeedIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.SpeedButton.Name = "SpeedButton"
HawkHUB.SpeedButton.Parent = HawkHUB.WalkSpeed_2
HawkHUB.SpeedButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.SpeedButton.BackgroundTransparency = 1.000
HawkHUB.SpeedButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.SpeedButton.BorderSizePixel = 0
HawkHUB.SpeedButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.SpeedButton.Font = Enum.Font.SourceSans
HawkHUB.SpeedButton.Text = ""
HawkHUB.SpeedButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.SpeedButton.TextSize = 14.000

HawkHUB.UICorner_115.Parent = HawkHUB.SpeedButton

HawkHUB.JumpPower_2.Name = "JumpPower"
HawkHUB.JumpPower_2.Parent = HawkHUB.Items
HawkHUB.JumpPower_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.JumpPower_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.JumpPower_2.BorderSizePixel = 0
HawkHUB.JumpPower_2.Position = UDim2.new(0.27850917, 0, 0, 0)
HawkHUB.JumpPower_2.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_116.Parent = HawkHUB.JumpPower_2

HawkHUB.JumpIcon.Name = "JumpIcon"
HawkHUB.JumpIcon.Parent = HawkHUB.JumpPower_2
HawkHUB.JumpIcon.BackgroundTransparency = 1.000
HawkHUB.JumpIcon.BorderSizePixel = 0
HawkHUB.JumpIcon.Position = UDim2.new(0.192517504, 0, 0.187999859, 0)
HawkHUB.JumpIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.JumpIcon.Image = "rbxassetid://140529764676235"
HawkHUB.JumpIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.JumpPowerButton.Name = "JumpPowerButton"
HawkHUB.JumpPowerButton.Parent = HawkHUB.JumpPower_2
HawkHUB.JumpPowerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.JumpPowerButton.BackgroundTransparency = 1.000
HawkHUB.JumpPowerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.JumpPowerButton.BorderSizePixel = 0
HawkHUB.JumpPowerButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.JumpPowerButton.Font = Enum.Font.SourceSans
HawkHUB.JumpPowerButton.Text = ""
HawkHUB.JumpPowerButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.JumpPowerButton.TextSize = 14.000

HawkHUB.UICorner_117.Parent = HawkHUB.JumpPowerButton

HawkHUB.Fly.Name = "Fly"
HawkHUB.Fly.Parent = HawkHUB.Items
HawkHUB.Fly.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Fly.BorderSizePixel = 0
HawkHUB.Fly.Position = UDim2.new(0.158000007, 0, 0.187999994, 0)
HawkHUB.Fly.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_118.Parent = HawkHUB.Fly

HawkHUB.FlyIcon.Name = "FlyIcon"
HawkHUB.FlyIcon.Parent = HawkHUB.Fly
HawkHUB.FlyIcon.BackgroundTransparency = 1.000
HawkHUB.FlyIcon.BorderSizePixel = 0
HawkHUB.FlyIcon.Position = UDim2.new(0.226999998, 0, 0.187999994, 0)
HawkHUB.FlyIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.FlyIcon.Image = "rbxassetid://6034744030"
HawkHUB.FlyIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.FlyButton.Name = "FlyButton"
HawkHUB.FlyButton.Parent = HawkHUB.Fly
HawkHUB.FlyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.FlyButton.BackgroundTransparency = 1.000
HawkHUB.FlyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.FlyButton.BorderSizePixel = 0
HawkHUB.FlyButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.FlyButton.Font = Enum.Font.SourceSans
HawkHUB.FlyButton.Text = ""
HawkHUB.FlyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.FlyButton.TextSize = 14.000

HawkHUB.UICorner_119.Parent = HawkHUB.FlyButton

HawkHUB.HipHeight_2.Name = "HipHeight"
HawkHUB.HipHeight_2.Parent = HawkHUB.Items
HawkHUB.HipHeight_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.HipHeight_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HipHeight_2.BorderSizePixel = 0
HawkHUB.HipHeight_2.Position = UDim2.new(0, 0, 0.3515625, 0)
HawkHUB.HipHeight_2.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_120.Parent = HawkHUB.HipHeight_2

HawkHUB.HipIcon.Name = "HipIcon"
HawkHUB.HipIcon.Parent = HawkHUB.HipHeight_2
HawkHUB.HipIcon.BackgroundTransparency = 1.000
HawkHUB.HipIcon.BorderSizePixel = 0
HawkHUB.HipIcon.Position = UDim2.new(0.226999998, 0, 0.187999994, 0)
HawkHUB.HipIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.HipIcon.Image = "http://www.roblox.com/asset/?id=6034925613"
HawkHUB.HipIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.HipButton.Name = "HipButton"
HawkHUB.HipButton.Parent = HawkHUB.HipHeight_2
HawkHUB.HipButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.HipButton.BackgroundTransparency = 1.000
HawkHUB.HipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HipButton.BorderSizePixel = 0
HawkHUB.HipButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.HipButton.Font = Enum.Font.SourceSans
HawkHUB.HipButton.Text = ""
HawkHUB.HipButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.HipButton.TextSize = 14.000

HawkHUB.UICorner_121.Parent = HawkHUB.HipButton

HawkHUB.Reset.Name = "Reset"
HawkHUB.Reset.Parent = HawkHUB.Items
HawkHUB.Reset.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Reset.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Reset.BorderSizePixel = 0
HawkHUB.Reset.Position = UDim2.new(0.27850917, 0, 0.3515625, 0)
HawkHUB.Reset.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_122.Parent = HawkHUB.Reset

HawkHUB.ResetIcon.Name = "ResetIcon"
HawkHUB.ResetIcon.Parent = HawkHUB.Reset
HawkHUB.ResetIcon.BackgroundTransparency = 1.000
HawkHUB.ResetIcon.BorderSizePixel = 0
HawkHUB.ResetIcon.Position = UDim2.new(0.226999998, 0, 0.187999994, 0)
HawkHUB.ResetIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.ResetIcon.Image = "http://www.roblox.com/asset/?id=6031280886"
HawkHUB.ResetIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.ResetButton.Name = "ResetButton"
HawkHUB.ResetButton.Parent = HawkHUB.Reset
HawkHUB.ResetButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ResetButton.BackgroundTransparency = 1.000
HawkHUB.ResetButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ResetButton.BorderSizePixel = 0
HawkHUB.ResetButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.ResetButton.Font = Enum.Font.SourceSans
HawkHUB.ResetButton.Text = ""
HawkHUB.ResetButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ResetButton.TextSize = 14.000

HawkHUB.UICorner_123.Parent = HawkHUB.ResetButton

HawkHUB.Rejoin.Name = "Rejoin"
HawkHUB.Rejoin.Parent = HawkHUB.Items
HawkHUB.Rejoin.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Rejoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Rejoin.BorderSizePixel = 0
HawkHUB.Rejoin.Position = UDim2.new(0.55701834, 0, 0.3515625, 0)
HawkHUB.Rejoin.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_124.Parent = HawkHUB.Rejoin

HawkHUB.RejoinIcon.Name = "RejoinIcon"
HawkHUB.RejoinIcon.Parent = HawkHUB.Rejoin
HawkHUB.RejoinIcon.BackgroundTransparency = 1.000
HawkHUB.RejoinIcon.BorderSizePixel = 0
HawkHUB.RejoinIcon.Position = UDim2.new(0.192517504, 0, 0.187999859, 0)
HawkHUB.RejoinIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.RejoinIcon.Image = "rbxassetid://88849385440791"
HawkHUB.RejoinIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.RejoinButton.Name = "RejoinButton"
HawkHUB.RejoinButton.Parent = HawkHUB.Rejoin
HawkHUB.RejoinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.RejoinButton.BackgroundTransparency = 1.000
HawkHUB.RejoinButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.RejoinButton.BorderSizePixel = 0
HawkHUB.RejoinButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.RejoinButton.Font = Enum.Font.SourceSans
HawkHUB.RejoinButton.Text = ""
HawkHUB.RejoinButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.RejoinButton.TextSize = 14.000

HawkHUB.UICorner_125.Parent = HawkHUB.RejoinButton

HawkHUB.Serverhop.Name = "Serverhop"
HawkHUB.Serverhop.Parent = HawkHUB.Items
HawkHUB.Serverhop.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Serverhop.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Serverhop.BorderSizePixel = 0
HawkHUB.Serverhop.Position = UDim2.new(0, 0, 0.703125, 0)
HawkHUB.Serverhop.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_126.Parent = HawkHUB.Serverhop

HawkHUB.ShopIcon.Name = "ShopIcon"
HawkHUB.ShopIcon.Parent = HawkHUB.Serverhop
HawkHUB.ShopIcon.BackgroundTransparency = 1.000
HawkHUB.ShopIcon.BorderSizePixel = 0
HawkHUB.ShopIcon.Position = UDim2.new(0.226999998, 0, 0.187999994, 0)
HawkHUB.ShopIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.ShopIcon.Image = "rbxassetid://132816995911533"
HawkHUB.ShopIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.ShopButton.Name = "ShopButton"
HawkHUB.ShopButton.Parent = HawkHUB.Serverhop
HawkHUB.ShopButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.ShopButton.BackgroundTransparency = 1.000
HawkHUB.ShopButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ShopButton.BorderSizePixel = 0
HawkHUB.ShopButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.ShopButton.Font = Enum.Font.SourceSans
HawkHUB.ShopButton.Text = ""
HawkHUB.ShopButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.ShopButton.TextSize = 14.000

HawkHUB.UICorner_127.Parent = HawkHUB.ShopButton

HawkHUB.Invisible.Name = "Invisible"
HawkHUB.Invisible.Parent = HawkHUB.Items
HawkHUB.Invisible.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
HawkHUB.Invisible.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.Invisible.BorderSizePixel = 0
HawkHUB.Invisible.Position = UDim2.new(0, 0, 0.703125, 0)
HawkHUB.Invisible.Size = UDim2.new(0, 29, 0, 29)

HawkHUB.UICorner_128.Parent = HawkHUB.Invisible

HawkHUB.InvisibleIcon.Name = "InvisibleIcon"
HawkHUB.InvisibleIcon.Parent = HawkHUB.Invisible
HawkHUB.InvisibleIcon.BackgroundTransparency = 1.000
HawkHUB.InvisibleIcon.BorderSizePixel = 0
HawkHUB.InvisibleIcon.Position = UDim2.new(0.226999998, 0, 0.187999994, 0)
HawkHUB.InvisibleIcon.Size = UDim2.new(0, 17, 0, 17)
HawkHUB.InvisibleIcon.Image = "http://www.roblox.com/asset/?id=6031763426"
HawkHUB.InvisibleIcon.ImageColor3 = Color3.fromRGB(212, 212, 212)

HawkHUB.InvisibleButton.Name = "InvisibleButton"
HawkHUB.InvisibleButton.Parent = HawkHUB.Invisible
HawkHUB.InvisibleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.InvisibleButton.BackgroundTransparency = 1.000
HawkHUB.InvisibleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.InvisibleButton.BorderSizePixel = 0
HawkHUB.InvisibleButton.Size = UDim2.new(0, 29, 0, 29)
HawkHUB.InvisibleButton.Font = Enum.Font.SourceSans
HawkHUB.InvisibleButton.Text = ""
HawkHUB.InvisibleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HawkHUB.InvisibleButton.TextSize = 14.000

HawkHUB.UICorner_129.Parent = HawkHUB.InvisibleButton

HawkHUB.UIGradient_16.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(143, 0, 214))}
HawkHUB.UIGradient_16.Offset = Vector2.new(0.800000012, 0)
HawkHUB.UIGradient_16.Rotation = 45
HawkHUB.UIGradient_16.Parent = HawkHUB.LocalPage

local opened = false
function open()
	if opened == true then return end
		opened = true
	TweenService:Create(
		HawkHUB.PageHolder,
		TweenInfo.new(2, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0, 0, 0, 0)}
	):Play()
	TweenService:Create(
		HawkHUB.TabSystem,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0.5, -192,1, -64)}
	):Play()
	TweenService:Create(
		game:GetService("CoreGui").RobloxGui.Backpack,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0, 0, 0, -100)}
	):Play()
	task.wait(0.3)
	TweenService:Create(
		HawkHUB.HomeTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,0)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.ScriptsTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,0)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.PlayerTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,0)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.GamesTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,0)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.CreditsTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,0)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.SettingsTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,0)}
	):Play()
	opened = false
end
local animationplaying = false


local closed = false
function close()
	if closed == true then return end
	closed = true
	TweenService:Create(
		HawkHUB.SettingsTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,40)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.CreditsTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,40)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.GamesTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,40)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.PlayerTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,40)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.ScriptsTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,40)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.HomeTab,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0,0,0,40)}
	):Play()
	wait(0.2)
	TweenService:Create(
		HawkHUB.TabSystem,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0.5, -192, 1, 10)}
	):Play()
	TweenService:Create(
		HawkHUB.PageHolder,
		TweenInfo.new(2, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0, 0, 2, 0)}
	):Play()
	TweenService:Create(
		game:GetService("CoreGui").RobloxGui.Backpack,
		TweenInfo.new(.4, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0, 0, 0, -30)}
	):Play()
	closed = false
end

open()

wait(1)
HawkHUB.GuiToggle.Visible = true
wait(0.3)
TweenService:Create(
	HawkHUB.GuiToggle,
	TweenInfo.new(.2, Enum.EasingStyle.Quad),
	{ImageTransparency = 0}
):Play()

for i, v in pairs(HawkHUB.ScriptsPage:GetDescendants()) do
	if v:IsA("Frame") then
		v.BackgroundTransparency = 1
	elseif v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
		v.BackgroundTransparency = 1
		v.TextTransparency = 1
	elseif v:IsA("ImageLabel") then
		v.BackgroundTransparency = 1
		v.ImageTransparency = 1
	end
end

for i, v in pairs(HawkHUB.LocalPage:GetDescendants()) do
	if v:IsA("Frame") then
		v.BackgroundTransparency = 1
	elseif v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
		v.BackgroundTransparency = 1
		v.TextTransparency = 1
	elseif v:IsA("ImageLabel") then
		v.BackgroundTransparency = 1
		v.ImageTransparency = 1
	end
end

for i, v in pairs(HawkHUB.Scripts:GetDescendants()) do
	if v:IsA("TextButton") then
		v.MouseButton1Down:Connect(function()
			TweenService:Create(
				v.Parent,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 72,0, 23)}
			):Play()
			TweenService:Create(
				v,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 72,0, 23)}
			):Play()
			wait(0.1)
			TweenService:Create(
				v.Parent,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 64,0, 22)}
			):Play()
			TweenService:Create(
				v,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 64,0, 22)}
			):Play()
		end)
	end
end

canvaaaz = HawkHUB
local function creategame(gameinfos)
	
	local HawkHUB = {
		Skywars = Instance.new("Frame"),
		UICorner_90 = Instance.new("UICorner"),
		SkywarsLogo = Instance.new("ImageLabel"),
		UICorner_91 = Instance.new("UICorner"),
		Container = Instance.new("Frame"),
		UIListLayout_29 = Instance.new("UIListLayout"),
		Title_13 = Instance.new("TextLabel"),
		Status = Instance.new("TextLabel"),
		LastUpdate = Instance.new("TextLabel"),
		Devs = Instance.new("TextLabel")
	}
	
	HawkHUB.Skywars.Name = gameinfos.GameName
	HawkHUB.Skywars.Parent = canvaaaz.Games
	HawkHUB.Skywars.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Skywars.BackgroundTransparency = 0.400
	HawkHUB.Skywars.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Skywars.Position = UDim2.new(0.0360962562, 0, 0, 0)
	HawkHUB.Skywars.Size = UDim2.new(0, 355, 0, 103)

	HawkHUB.UICorner_90.Parent = HawkHUB.Skywars

	HawkHUB.SkywarsLogo.Name = "SkywarsLogo"
	HawkHUB.SkywarsLogo.Parent = HawkHUB.Skywars
	HawkHUB.SkywarsLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.SkywarsLogo.BackgroundTransparency = 1.000
	HawkHUB.SkywarsLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HawkHUB.SkywarsLogo.BorderSizePixel = 0
	HawkHUB.SkywarsLogo.Position = UDim2.new(0.030985916, 0, 0.5, -40)
	HawkHUB.SkywarsLogo.Size = UDim2.new(0, 80, 0, 80)
	HawkHUB.SkywarsLogo.Image = gameinfos.GameImage
	HawkHUB.SkywarsLogo.ImageColor3 = Color3.fromRGB(199, 199, 199)

	HawkHUB.UICorner_91.Parent = HawkHUB.SkywarsLogo

	HawkHUB.Container.Name = "Container"
	HawkHUB.Container.Parent = HawkHUB.Skywars
	HawkHUB.Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.Container.BackgroundTransparency = 1.000
	HawkHUB.Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HawkHUB.Container.BorderSizePixel = 0
	HawkHUB.Container.Position = UDim2.new(0.380917937, 0, 0, 0)
	HawkHUB.Container.Size = UDim2.new(0, 188, 0, 103)

	HawkHUB.UIListLayout_29.Parent = HawkHUB.Container
	HawkHUB.UIListLayout_29.SortOrder = Enum.SortOrder.LayoutOrder
	HawkHUB.UIListLayout_29.VerticalAlignment = Enum.VerticalAlignment.Center
	HawkHUB.UIListLayout_29.Padding = UDim.new(0, 4)

	HawkHUB.Title_13.Name = "Title"
	HawkHUB.Title_13.Parent = HawkHUB.Container
	HawkHUB.Title_13.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Title_13.BackgroundTransparency = 1.000
	HawkHUB.Title_13.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Title_13.Size = UDim2.new(0, 186, 0, 17)
	HawkHUB.Title_13.Font = Enum.Font.GothamBold
	HawkHUB.Title_13.Text = gameinfos.GameName
	HawkHUB.Title_13.TextColor3 = Color3.fromRGB(212, 212, 212)
	HawkHUB.Title_13.TextSize = 14.000
	HawkHUB.Title_13.TextWrapped = true
	HawkHUB.Title_13.TextXAlignment = Enum.TextXAlignment.Left
	HawkHUB.Title_13.RichText = true
	
	HawkHUB.Status.Name = "Status"
	HawkHUB.Status.Parent = HawkHUB.Container
	HawkHUB.Status.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Status.BackgroundTransparency = 1.000
	HawkHUB.Status.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Status.Position = UDim2.new(0, 0, 0.214285716, 0)
	HawkHUB.Status.Size = UDim2.new(0, 191, 0, 17)
	HawkHUB.Status.Font = Enum.Font.Gotham
	HawkHUB.Status.RichText = true
	
	if string.lower(gameinfos.Status) == "working" then
		HawkHUB.Status.Text = "Status: <font color=\"rgb(85,255,0)\">WORKING</font>"
	elseif string.lower(gameinfos.Status) == "patched" or string.lower(gameinfos.Status) == "not working" then
		HawkHUB.Status.Text = "Status: <font color=\"rgb(255,85,85)\">NOT WORKING</font>"
	elseif string.lower(gameinfos.Status) == "updating" then
		HawkHUB.Status.Text = "Status: <font color=\"rgb(135, 70, 202)\">UPDATING</font>"
	end
	
	HawkHUB.Status.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.Status.TextSize = 14.000
	HawkHUB.Status.TextXAlignment = Enum.TextXAlignment.Left

	HawkHUB.LastUpdate.Name = "LastUpdate"
	HawkHUB.LastUpdate.Parent = HawkHUB.Container
	HawkHUB.LastUpdate.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.LastUpdate.BackgroundTransparency = 1.000
	HawkHUB.LastUpdate.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.LastUpdate.Position = UDim2.new(0, 0, 0.428571433, 0)
	HawkHUB.LastUpdate.Size = UDim2.new(0, 191, 0, 17)
	HawkHUB.LastUpdate.Font = Enum.Font.Gotham
	HawkHUB.LastUpdate.Text = "Last Update: <font color='rgb(0,255,255)'>"..gameinfos.LastUpdate.."</font>"
	HawkHUB.LastUpdate.RichText = true
	HawkHUB.LastUpdate.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.LastUpdate.TextSize = 14.000
	HawkHUB.LastUpdate.TextXAlignment = Enum.TextXAlignment.Left

	HawkHUB.Devs.Name = "Devs"
	HawkHUB.Devs.Parent = HawkHUB.Container
	HawkHUB.Devs.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Devs.BackgroundTransparency = 1.000
	HawkHUB.Devs.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Devs.Position = UDim2.new(0, 0, 0.642857134, 0)
	HawkHUB.Devs.Size = UDim2.new(0, 191, 0, 17)
	HawkHUB.Devs.Font = Enum.Font.Gotham
	HawkHUB.Devs.Text = "Devs: <font color='rgb(250,250,0)'>"..gameinfos.Developers.."</font>"
	HawkHUB.Devs.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.Devs.TextSize = 14.000
	HawkHUB.Devs.TextXAlignment = Enum.TextXAlignment.Left
	HawkHUB.Devs.RichText = true
	
	TweenService:Create(
		canvaaaz.Games,
		TweenInfo.new(.2, Enum.EasingStyle.Quad),
		{CanvasSize = UDim2.new(0, 0, 0, canvaaaz.UIListLayout_28.AbsoluteContentSize.Y)}
	):Play()
end
local vidcontent;
local vid = false
local function createcredit(creditinfos)
	local HawkHUB = {
		Hanki = Instance.new("Frame"),
		UICorner_93 = Instance.new("UICorner"),
		UICorner_94 = Instance.new("UICorner"),
		Container_2 = Instance.new("Frame"),
		UIListLayout_31 = Instance.new("UIListLayout"),
		A1 = Instance.new("TextLabel"),
		A2 = Instance.new("TextLabel"),
		A4 = Instance.new("TextLabel")
	}
	
	HawkHUB.Hanki.Name = creditinfos.Name
	HawkHUB.Hanki.Parent = canvaaaz.Credits_13
	HawkHUB.Hanki.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Hanki.BackgroundTransparency = 0.400
	HawkHUB.Hanki.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Hanki.Position = UDim2.new(0.0215277169, 0, 5.96046448e-08, 0)
	HawkHUB.Hanki.Size = UDim2.new(0, 352, 0, 104)

	HawkHUB.UICorner_93.Parent = HawkHUB.Hanki

	if creditinfos.ProfilePicture:find("https") then
		PP = Instance.new("VideoFrame")
		writefile(creditinfos.Name..".mp4",game:HttpGet(creditinfos.ProfilePicture))
		PP.Video = getcustomasset(creditinfos.Name..".mp4")
		vid = PP
		PP:Play()
		vidcontent = PP.Video
		PP.Looped = true
	elseif creditinfos.ProfilePicture:find("rbxassetid") then
		PP = Instance.new("ImageLabel")
		PP.Image = creditinfos.ProfilePicture
	end
	
	PP.Name = "PP"
	PP.Parent = HawkHUB.Hanki
	PP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PP.BackgroundTransparency = 1.000
	PP.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PP.BorderSizePixel = 0
	PP.Position = UDim2.new(0.0332326293, 0, 0.115385205, 0)
	PP.Size = UDim2.new(0, 79, 0, 79)
	
	HawkHUB.UICorner_94.Parent = PP

	HawkHUB.Container_2.Name = "Container"
	HawkHUB.Container_2.Parent = HawkHUB.Hanki
	HawkHUB.Container_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Container_2.BackgroundTransparency = 1.000
	HawkHUB.Container_2.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.Container_2.BorderSizePixel = 0
	HawkHUB.Container_2.Position = UDim2.new(0.314199448, 0, 0, 0)
	HawkHUB.Container_2.Size = UDim2.new(0, 219, 0, 104)

	HawkHUB.UIListLayout_31.Parent = HawkHUB.Container_2
	HawkHUB.UIListLayout_31.SortOrder = Enum.SortOrder.LayoutOrder
	HawkHUB.UIListLayout_31.VerticalAlignment = Enum.VerticalAlignment.Center

	HawkHUB.A1.Name = "A1"
	HawkHUB.A1.Parent = HawkHUB.Container_2
	HawkHUB.A1.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.A1.BackgroundTransparency = 1.000
	HawkHUB.A1.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.A1.BorderSizePixel = 0
	HawkHUB.A1.Position = UDim2.new(0.314199388, 0, 0.115384616, 0)
	HawkHUB.A1.Size = UDim2.new(0, 200, 0, 18)
	HawkHUB.A1.Font = Enum.Font.Gotham
	HawkHUB.A1.Text = creditinfos.Name
	HawkHUB.A1.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.A1.TextSize = 14.000
	HawkHUB.A1.TextXAlignment = Enum.TextXAlignment.Left
	HawkHUB.A1.RichText = true
	
	HawkHUB.A2.Name = "A2"
	HawkHUB.A2.Parent = HawkHUB.Container_2
	HawkHUB.A2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.A2.BackgroundTransparency = 1.000
	HawkHUB.A2.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.A2.BorderSizePixel = 0
	HawkHUB.A2.Position = UDim2.new(0.314199388, 0, 0.288461536, 0)
	HawkHUB.A2.Size = UDim2.new(0, 200, 0, 18)
	HawkHUB.A2.Font = Enum.Font.Gotham
	HawkHUB.A2.Text = creditinfos.Text1
	HawkHUB.A2.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.A2.TextSize = 14.000
	HawkHUB.A2.TextXAlignment = Enum.TextXAlignment.Left
	HawkHUB.A2.RichText = true
	
	HawkHUB.A4.Name = "A4"
	HawkHUB.A4.Parent = HawkHUB.Container_2
	HawkHUB.A4.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.A4.BackgroundTransparency = 1.000
	HawkHUB.A4.BorderColor3 = Color3.fromRGB(46, 46, 46)
	HawkHUB.A4.BorderSizePixel = 0
	HawkHUB.A4.Position = UDim2.new(0.314199388, 0, 0.288461536, 0)
	HawkHUB.A4.Size = UDim2.new(0, 200, 0, 18)
	HawkHUB.A4.Font = Enum.Font.Gotham
	HawkHUB.A4.Text = creditinfos.Text2
	HawkHUB.A4.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkHUB.A4.TextSize = 14.000
	HawkHUB.A4.TextXAlignment = Enum.TextXAlignment.Left
	HawkHUB.A4.RichText = true
	
	TweenService:Create(
		canvaaaz.Credits_13,
		TweenInfo.new(.2, Enum.EasingStyle.Quad),
		{CanvasSize = UDim2.new(0, 0, 0, canvaaaz.UIListLayout_30.AbsoluteContentSize.Y)}
	):Play()
end

createcredit({
	Name = "matemahirbaz",
	ProfilePicture = "https://images-ext-1.discordapp.net/external/b9u3_rPldBhYsIs8WTWSVl4v1jXN-48ZZHhCndAIhD8/https/media.tenor.com/mXtfRfvTTa4AAAPo/lol.mp4",
	Text1 = "Contribution: <font color='rgb(194,194,194)'>Founder</font>",
	Text2 = "Discord: <font color='rgb(194,194,194)'>matemahirbaz</font>"
})

creategame({
	GameName = "Skywars [CLASSIC]",
	GameImage = "rbxassetid://2694317033",
	Status = "Working",
	Developers = "Hanki and Shadow",
	LastUpdate = " 20/06/25"
})

local guitoggle = true
HawkHUB.GuiToggle.MouseButton1Down:Connect(function()
	if animationplaying == true then return end

	animationplaying = true
	if guitoggle == false then
		TweenService:Create(
			HawkHUB.GuiToggle,
			TweenInfo.new(.4, Enum.EasingStyle.Quad),
			{Rotation = 0}
		):Play()
		open()
		repeat wait() until HawkHUB.SettingsTab.Position == UDim2.new(0, 0, 0, 0)
		guitoggle = true
		animationplaying = false
	elseif guitoggle == true then
		close()
		TweenService:Create(
			HawkHUB.GuiToggle,
			TweenInfo.new(.4, Enum.EasingStyle.Quad),
			{Rotation = 180}
		):Play()
		repeat wait() until HawkHUB.TabSystem.Position == UDim2.new(0.5, -192, 1, 10)
		guitoggle = false
		animationplaying = false
	end
end)

for i, v in pairs(HawkHUB.TabSystem:GetDescendants()) do
	if v:IsA("TextButton") then
		v.MouseButton1Click:Connect(function()
			if HawkHUB.SettingsTab.Position ~= UDim2.new(0,0,0,0) then
				return
			end
			TweenService:Create(
				v.Parent,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 25, 0, 25)}
			):Play()
			TweenService:Create(
				v.Parent,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -12,0.5, -12)}
			):Play()
			TweenService:Create(
				v,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 25, 0, 25)}
			):Play()
			if v:FindFirstChild(v.Name:gsub("Button","Icon")) then
				TweenService:Create(
					v:FindFirstChild(v.Name:gsub("Button","Icon")),
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{Size = UDim2.new(0, 14, 0, 14)}
				):Play()
			end
			task.wait(0.2)
			TweenService:Create(
				v.Parent,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 31, 0, 31)}
			):Play()
			TweenService:Create(
				v.Parent,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0, 0, 0, 0)}
			):Play()
			TweenService:Create(
				v,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 31, 0, 31)}
			):Play()
			if v:FindFirstChild(v.Name:gsub("Button","Icon")) then
				TweenService:Create(
					v:FindFirstChild(v.Name:gsub("Button","Icon")),
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{Size = UDim2.new(0, 16, 0, 16)}
				):Play()
			end
		end)
	end
end



local FriendsPage = Players:GetFriendsAsync(LocalPlayer.UserId)
local FriendsTable = {}

local AllFriends;
local OnlineFriends;
local OfflineFriends;
local FriendsInServer;
local PlayerService = game:GetService("Players")
local Player = PlayerService.LocalPlayer

local FriendPages = PlayerService:GetFriendsAsync(Player.UserId)
local Friends = {}
local friendsinserver = {}
local homeanim = false
local hometoggle = false
local scriptsanim = false
local scriptstoggle = false

function reset()
	for i, v in pairs(HawkHUB.PageHolder:GetChildren()) do
		if v.Name ~= "HomePage" then
			for _,m in next, v:GetDescendants() do
				if m:IsA("TextButton") or m:IsA("TextLabel") or m:IsA("TextBox") then
					TweenService:Create(
						m,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{TextTransparency = 1}
					):Play()
					TweenService:Create(
						m,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 1}
					):Play()
				elseif m:IsA("ImageLabel") or m:IsA("ImageButton") then
					TweenService:Create(
						m,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					TweenService:Create(
						m,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 1}
					):Play()
				elseif m:IsA("Frame") then
					TweenService:Create(
						m,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 1}
					):Play()
				elseif m:IsA("VideoFrame") then
					m:Pause()
					m.Video = ""
				end
			end
			TweenService:Create(
				v,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{BackgroundTransparency = 1}
			):Play()
		end
	end

	for i, v in pairs(HawkHUB.Tabs:GetDescendants()) do
		if v:IsA("ImageLabel") then
			if v.Name ~= "HomeIcon" then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{ImageColor3 = Color3.fromRGB(255,255,255)}
				):Play()
			end
		end
	end

	hometoggle = false
	scriptstoggle = false
end

HawkHUB.HomeButton.MouseButton1Click:Connect(function()
	if homeanim == true then return end
	homeanim = true
	if hometoggle == false then
		hometoggle = true
		game:GetService("CoreGui").ExperienceChat.Enabled = false
		game:GetService("CoreGui").PlayerList.Enabled = false
		TweenService:Create(
			HawkHUB.HomeIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(0, 0, 0)}
		):Play()
		TweenService:Create(
			HawkHUB.PageHolder,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 0.8}
		):Play()
		HawkHUB.HomePage.Visible = true
		TweenService:Create(
			HawkHUB.welkamtumacannel,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{TextTransparency = 0}
		):Play()
		wait(0.2)
		TweenService:Create(
			HawkHUB.messsaj,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{TextTransparency = 0}
		):Play()
		wait(0.2)
		TweenService:Create(
			HawkHUB.messsaj,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{TextTransparency = 0}
		):Play()
		TweenService:Create(
			HawkHUB.welkamtumacannel,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{TextTransparency = 0}
		):Play()
		for i, v in pairs(HawkHUB.HomeItemsHolder:GetDescendants()) do
			if v:IsA("ScrollingFrame") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{ScrollBarImageTransparency = 0}
				):Play()
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("Frame") then
				if v.Name ~= "First" and v.Name ~= "Second" and v.Name ~= "Third" and v.Name ~= "Infos" and v.Name ~= "FriendInfos" and v.Name ~= "FriendListHolder" then
					TweenService:Create(
						v,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 0}
					):Play()
				end
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			end
		end
		homeanim = false
	elseif hometoggle == true then
		hometoggle = false
		for i, v in pairs(HawkHUB.HomeItemsHolder:GetDescendants()) do
			if v:IsA("ScrollingFrame") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{ScrollBarImageTransparency = 1}
				):Play()
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("Frame") then
				if v.Name ~= "First" and v.Name ~= "Second" and v.Name ~= "Third" and v.Name ~= "Infos" and v.Name ~= "FriendInfos" and v.Name ~= "FriendListHolder" then
					TweenService:Create(
						v,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 1}
					):Play()
				end
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{ImageTransparency = 1}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			end
		end
		TweenService:Create(
			HawkHUB.messsaj,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{TextTransparency = 1}
		):Play()
		TweenService:Create(
			HawkHUB.welkamtumacannel,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{TextTransparency = 1}
		):Play()
		wait(0.3)
		game:GetService("CoreGui").ExperienceChat.Enabled = true
		game:GetService("CoreGui").PlayerList.Enabled = true
		TweenService:Create(
			HawkHUB.PageHolder,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 1}
		):Play()
		HawkHUB.HomePage.Visible = false
		TweenService:Create(
			HawkHUB.HomeIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()
		homeanim = false
	end
end)

HawkHUB.ScriptsButton.MouseButton1Click:Connect(function()
	if scriptsanim == true then
		return
	end
	scriptsanim = true
	if scriptstoggle == false then
		reset()
		scriptstoggle = true
		TweenService:Create(
			HawkHUB.ScripstIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(0, 0, 0)}
		):Play()

		HawkHUB.ScriptsPage.Visible = true
		if UserInputService.KeyboardEnabled then
			TweenService:Create(
				HawkHUB.ScriptsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -70)}
			):Play()
		else
			TweenService:Create(
				HawkHUB.ScriptsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5,-192,0.5,-205)}
			):Play()
		end

		TweenService:Create(
			HawkHUB.ScriptsPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 0}
		):Play()

		for i, v in pairs(HawkHUB.ScriptsPage:GetDescendants()) do
			if v:IsA("Frame") and v.Name ~= "Center" then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 0}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
			end
		end

	elseif scriptstoggle == true then
		scriptstoggle = false
		TweenService:Create(
			HawkHUB.ScripstIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()

		for i, v in pairs(HawkHUB.ScriptsPage:GetDescendants()) do
			if v:IsA("Frame") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 1}
				):Play()
			end
		end
		if UserInputService.KeyboardEnabled then
			TweenService:Create(
				HawkHUB.ScriptsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -65)}
			):Play()
		else
			TweenService:Create(
				HawkHUB.ScriptsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5,-192,0.5,-200)}
			):Play()
		end
		TweenService:Create(
			HawkHUB.ScriptsPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 1}
		):Play()
		wait(0.5)
		HawkHUB.ScriptsPage.Visible = false
	end

	scriptsanim = false
end)

local gamestoggle = false
local gamesanim = false
HawkHUB.GamesButton.MouseButton1Click:Connect(function()
	if gamesanim == true then
		return
	end
	gamesanim = true
	if gamestoggle == false then
		reset()
		gamestoggle = true
		TweenService:Create(
			HawkHUB.GamesIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(0, 0, 0)}
		):Play()

		HawkHUB.GamesPage.Visible = true
		if UserInputService.KeyboardEnabled then
			TweenService:Create(
				HawkHUB.GamesPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -70)}
			):Play()
		else
			TweenService:Create(
				HawkHUB.GamesPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -205)}
			):Play()
		end
		TweenService:Create(
			HawkHUB.GamesPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 0}
		):Play()

		for i, v in pairs(HawkHUB.GamesPage:GetDescendants()) do
			if v:IsA("Frame") and v.Name ~= "Container" then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 0}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
			end
		end

	elseif gamestoggle == true then
		gamestoggle = false
		TweenService:Create(
			HawkHUB.GamesIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()

		for i, v in pairs(HawkHUB.GamesPage:GetDescendants()) do
			if v:IsA("Frame") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 1}
				):Play()
			end
		end
		if UserInputService.KeyboardEnabled then
			TweenService:Create(
				HawkHUB.GamesPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -65)}
			):Play()
		else
			TweenService:Create(
				HawkHUB.GamesPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -200)}
			):Play()
		end
		TweenService:Create(
			HawkHUB.GamesPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 1}
		):Play()
		wait(0.5)
		HawkHUB.GamesPage.Visible = false
	end


	gamesanim = false
end)


local creditstoggle = false
local creditsanim = false
HawkHUB.CreditsButton.MouseButton1Click:Connect(function()
	if creditsanim == true then
		return
	end
	creditsanim = true
	if creditstoggle == false then
		reset()
		creditstoggle = true
		TweenService:Create(
			HawkHUB.CreditsIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(0, 0, 0)}
		):Play()
		HawkHUB.CreditsPage.Visible = true
		if UserInputService.KeyboardEnabled then
			TweenService:Create(
				HawkHUB.CreditsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -70)}
			):Play()
		else
			TweenService:Create(
				HawkHUB.CreditsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -190)}
			):Play()
		end
		TweenService:Create(
			HawkHUB.CreditsPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 0}
		):Play()
		
		for i, v in pairs(HawkHUB.CreditsPage:GetDescendants()) do
			if v:IsA("Frame") and v.Name ~= "Container" then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 0}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
			end
		end
		if vid then
			vid.Video = vidcontent
			vid:Play()
		end
	elseif creditstoggle == true then
		creditstoggle = false
		TweenService:Create(
			HawkHUB.CreditsIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()
		if vid then
			vid:Pause()
			task.wait(0.1)
			vid.Video = ""
		end
		for i, v in pairs(HawkHUB.CreditsPage:GetDescendants()) do
			if v:IsA("Frame") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 1}
				):Play()
			end
		end
		if UserInputService.KeyboardEnabled then
			TweenService:Create(
				HawkHUB.CreditsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -65)}
			):Play()
		else
			TweenService:Create(
				HawkHUB.CreditsPage,
				TweenInfo.new(.7, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.5, -192,0.5, -185)}
			):Play()
		end
		TweenService:Create(
			HawkHUB.CreditsPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 1}
		):Play()
		wait(0.5)
		HawkHUB.CreditsPage.Visible = false
	end


	creditsanim = false
end)

local localanim = false
local localtoggle = false
HawkHUB.PlayerButton.MouseButton1Click:Connect(function()
	if localanim == true then
		return
	end
	localanim = true
	if localtoggle == false then
		reset()
		localtoggle = true
		TweenService:Create(
			HawkHUB.PlayerIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(0, 0, 0)}
		):Play()

		HawkHUB.LocalPage.Visible = true

		TweenService:Create(
			HawkHUB.LocalPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 0}
		):Play()

		for i, v in pairs(HawkHUB.LocalPage:GetDescendants()) do
			if v:IsA("Frame") and v.Name ~= "Items" and v.Name ~= "Sliders" then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 0}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
			end
		end

	elseif localtoggle == true then
		localtoggle = false
		TweenService:Create(
			HawkHUB.PlayerIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()

		for i, v in pairs(HawkHUB.LocalPage:GetDescendants()) do
			if v:IsA("Frame") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 1}
				):Play()
			end
		end

		TweenService:Create(
			HawkHUB.LocalPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 1}
		):Play()
		wait(0.5)
		HawkHUB.LocalPage.Visible = false
	end


	localanim = false
end)

local settingsanim = false
local settingstoggle = false
HawkHUB.SettingsButton.MouseButton1Click:Connect(function()
	if settingsanim == true then
		return
	end
	settingsanim = true
	if settingstoggle == false then
		reset()
		settingstoggle = true
		TweenService:Create(
			HawkHUB.SettingsIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(0, 0, 0)}
		):Play()

		HawkHUB.SettingsPage.Visible = true

		TweenService:Create(
			HawkHUB.SettingsPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 0}
		):Play()

		for i, v in pairs(HawkHUB.SettingsPage:GetDescendants()) do
			if v:IsA("Frame") and v.Name ~= "Settingzz" then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 0}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
			end
		end

	elseif settingstoggle == true then
		settingstoggle = false
		TweenService:Create(
			HawkHUB.SettingsIcon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)}
		):Play()

		for i, v in pairs(HawkHUB.SettingsPage:GetDescendants()) do
			if v:IsA("Frame") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("TextBox") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()

			elseif v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.5, Enum.EasingStyle.Quad),
					{ImageTransparency = 1}
				):Play()
			end
		end

		TweenService:Create(
			HawkHUB.SettingsPage,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundTransparency = 1}
		):Play()
		wait(0.5)
		HawkHUB.SettingsPage.Visible = false
	end


	settingsanim = false
end)


local WSActivated = false
local JPActivated = false
local flyspeedz = false
local FLYActivated = false
local HIPActivated = false





--HipHeight
local hipdrag = false
local hipheightslider = HawkHUB.Action_3
local hipheightlabel = HawkHUB.Title_16
local hipheightbar = HawkHUB.Amount_3

local hipheightpadding = {}
local hipheightactive
local hipheightlimit = {1, 6}

function hipheightupdatePadding()
	hipheightpadding = {
		["Start"] = hipheightslider.AbsolutePosition.X,
		["End"] = hipheightslider.AbsolutePosition.X + hipheightslider.AbsoluteSize.X
	}
end
hipheightupdatePadding()

hipheightslider.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		hipdrag = true
	end
end)

hipheightslider.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		hipdrag = false
	end
end)

function hipheightupdateSlider()
	if OnPc then
		local posX = math.clamp(mouse.X, hipheightpadding.Start, hipheightpadding.End)
		local inverse_interpolation =
			(posX - hipheightpadding.Start) / (hipheightpadding.End - hipheightpadding.Start)
		TweenService:Create(
			hipheightbar,
			TweenInfo.new(.7, Enum.EasingStyle.Quint),
			{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
		):Play()
		local value =
			math.floor(hipheightlimit[1] + (hipheightlimit[2] - hipheightlimit[1]) * inverse_interpolation + .5)
		hipheightlabel.Text = value .. " HipHeight"
		if HIPActivated == true then
			LocalPlayer.Character:FindFirstChildOfClass("Humanoid").HipHeight = value
		else
			LocalPlayer.Character:FindFirstChildOfClass("Humanoid").HipHeight = 1
		end
	else
		if hipdrag == true then
			local posX = math.clamp(mouse.X, hipheightpadding.Start, hipheightpadding.End)
			local inverse_interpolation =
				(posX - hipheightpadding.Start) / (hipheightpadding.End - hipheightpadding.Start)
			TweenService:Create(
				hipheightbar,
				TweenInfo.new(.7, Enum.EasingStyle.Quint),
				{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
			):Play()
			local value =
				math.floor(hipheightlimit[1] + (hipheightlimit[2] - hipheightlimit[1]) * inverse_interpolation + .5)
			hipheightlabel.Text = value .. " HipHeight"
			if HIPActivated == true then
				LocalPlayer.Character:FindFirstChildOfClass("Humanoid").HipHeight = value
			else
				LocalPlayer.Character:FindFirstChildOfClass("Humanoid").HipHeight = 1
			end
		end
	end
end

hipheightslider.MouseButton1Down:Connect(
	function()
		hipheightactive = true
		hipheightupdateSlider()
	end
)





















-- Walkspeed
local speeddrag = false
local Walkslider = HawkHUB.Action
local Walklabel = HawkHUB.Title_14
local Walkbar = HawkHUB.Amount

local uis = game:GetService("UserInputService")
local Walkpadding = {}
local Walkactive
local Walklimit = {16, 150}

function WalkupdatePadding()
	Walkpadding = {
		["Start"] = Walkslider.AbsolutePosition.X,
		["End"] = Walkslider.AbsolutePosition.X + Walkslider.AbsoluteSize.X
	}
end
WalkupdatePadding()

Walkslider.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		speeddrag = true
	end
end)

Walkslider.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		speeddrag = false
	end
end)

function WalkupdateSlider()
	if OnPc then
		local posX = math.clamp(mouse.X, Walkpadding.Start, Walkpadding.End)
		local inverse_interpolation = (posX - Walkpadding.Start) / (Walkpadding.End - Walkpadding.Start)
		TweenService:Create(
			Walkbar,
			TweenInfo.new(.7, Enum.EasingStyle.Quint),
			{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
		):Play()
		local value = math.floor(Walklimit[1] + (Walklimit[2] - Walklimit[1]) * inverse_interpolation + .5)
		Walklabel.Text = value .. " walkspeed"
		if WSActivated == true then
			LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = value
		else
			LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
		end
	else
		if speeddrag == true then
			local posX = math.clamp(mouse.X, Walkpadding.Start, Walkpadding.End)
			local inverse_interpolation = (posX - Walkpadding.Start) / (Walkpadding.End - Walkpadding.Start)
			TweenService:Create(
				Walkbar,
				TweenInfo.new(.7, Enum.EasingStyle.Quint),
				{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
			):Play()
			local value = math.floor(Walklimit[1] + (Walklimit[2] - Walklimit[1]) * inverse_interpolation + .5)
			Walklabel.Text = value .. " walkspeed"
			if WSActivated == true then
				LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = value
			else
				LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
			end		
		end
	end
end

Walkslider.MouseButton1Down:Connect(function()
	Walkactive = true
	WalkupdateSlider()
end)



-- Jumppower
local jumpdrag = false
local Jumpslider = HawkHUB.Action_4
local Jumplabel = HawkHUB.Title_17
local Jumpbar = HawkHUB.Amount_4

local uis = game:GetService("UserInputService")
local Jumppadding = {}
local Jumpactive
local Jumplimit = {50, 350}

function JumpupdatePadding()
	Jumppadding = {
		["Start"] = Jumpslider.AbsolutePosition.X,
		["End"] = Jumpslider.AbsolutePosition.X + Jumpslider.AbsoluteSize.X
	}
end
JumpupdatePadding()

Jumpslider.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		jumpdrag = true
	end
end)

Jumpslider.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		jumpdrag = false
	end
end)

function JumpupdateSlider()
	if OnPc then
		local posX = math.clamp(mouse.X, Jumppadding.Start, Jumppadding.End)
		local inverse_interpolation = (posX - Jumppadding.Start) / (Jumppadding.End - Jumppadding.Start)
		TweenService:Create(
			Jumpbar,
			TweenInfo.new(.7, Enum.EasingStyle.Quint),
			{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
		):Play()
		local value = math.floor(Jumplimit[1] + (Jumplimit[2] - Jumplimit[1]) * inverse_interpolation + .5)
		Jumplabel.Text = value .. " jumppower"
		if JPActivated == true then
			if LocalPlayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
				LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = value
			else
				LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = value
			end
		elseif JPActivated == false then
			if LocalPlayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
				LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = 50
			else
				LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = 50
			end
		end
	else
		if jumpdrag == true then
			local posX = math.clamp(mouse.X, Jumppadding.Start, Jumppadding.End)
			local inverse_interpolation = (posX - Jumppadding.Start) / (Jumppadding.End - Jumppadding.Start)
			TweenService:Create(
				Jumpbar,
				TweenInfo.new(.7, Enum.EasingStyle.Quint),
				{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
			):Play()
			local value = math.floor(Jumplimit[1] + (Jumplimit[2] - Jumplimit[1]) * inverse_interpolation + .5)
			Jumplabel.Text = value .. " jumppower"
			if JPActivated == true then
				if LocalPlayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
					LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = value
				else
					LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = value
				end
			elseif JPActivated == false then
				if LocalPlayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
					LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = 50
				else
					LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = 50
				end
			end
		end
	end
end

Jumpslider.MouseButton1Down:Connect(
	function()
		Jumpactive = true
		JumpupdateSlider()
	end
)



-- FlySpeed
local flydrag = false
local flyslider = HawkHUB.Action_2
local flylabel = HawkHUB.Title_15
local flybar = HawkHUB.Amount_2

local uis = game:GetService("UserInputService")
local flypadding = {}
local flyactive
local flylimit = {1, 20}

function flyupdatePadding()
	flypadding = {
		["Start"] = flyslider.AbsolutePosition.X,
		["End"] = flyslider.AbsolutePosition.X + flyslider.AbsoluteSize.X
	}
end
flyupdatePadding()

flyslider.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		flydrag = true
	end
end)

flyslider.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
		flydrag = false
	end
end)

function flyupdateSlider()
	if OnPc then
		local posX = math.clamp(mouse.X, flypadding.Start, flypadding.End)
		local inverse_interpolation = (posX - flypadding.Start) / (flypadding.End - flypadding.Start)
		TweenService:Create(
			flybar,
			TweenInfo.new(.7, Enum.EasingStyle.Quint),
			{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
		):Play()
		local value = math.floor(flylimit[1] + (flylimit[2] - flylimit[1]) * inverse_interpolation + .5)
		flylabel.Text = value .. " flyspeed"
		iyflyspeed = value
		vehicleflyspeed = value
	else
		if flydrag == true then
			local posX = math.clamp(mouse.X, flypadding.Start, flypadding.End)
			local inverse_interpolation = (posX - flypadding.Start) / (flypadding.End - flypadding.Start)
			TweenService:Create(
				flybar,
				TweenInfo.new(.7, Enum.EasingStyle.Quint),
				{Size = UDim2.new(inverse_interpolation, 0, 1, 0)}
			):Play()
			local value = math.floor(flylimit[1] + (flylimit[2] - flylimit[1]) * inverse_interpolation + .5)
			flylabel.Text = value .. " flyspeed"
			iyflyspeed = value
			vehicleflyspeed = value
		end
	end
end

flyslider.MouseButton1Down:Connect(
	function()
		flyactive = true
		flyupdateSlider()
	end
)


uis.InputEnded:Connect(
	function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			Jumpactive = false
			Walkactive = false
			flyactive = false
			hipheightactive = false
		end
	end
)

workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(
	function()
		wait(.5)
		JumpupdatePadding()
		WalkupdatePadding()
		flyupdatePadding()
		hipheightupdatePadding()
	end
)

mouse.Move:Connect(
	function()
		if Jumpactive then
			JumpupdateSlider()
		end
		if Walkactive then
			WalkupdateSlider()
		end
		if flyactive then
			flyupdateSlider()
		end
		if hipheightactive then
			hipheightupdateSlider()
		end
	end
)


FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1
Players = game:GetService("Players")
IYMouse = Players.LocalPlayer:GetMouse()

function getRoot(char)
	local rootPart =
		char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or
		char:FindFirstChild("UpperTorso")
	return rootPart
end

function sFLY(vfly)
	repeat
		wait()
	until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat
		wait()
	until IYMouse
	if flyKeyDown or flyKeyUp then
		flyKeyDown:Disconnect()
		flyKeyUp:Disconnect()
	end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new("BodyGyro")
		local BV = Instance.new("BodyVelocity")
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(
			function()
				repeat
					wait()
					if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
						Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
					end
					if
						CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or
						CONTROL.Q + CONTROL.E ~= 0
					then
						SPEED = 50
					elseif
						not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or
							CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0
					then
						SPEED = 0
					end
					if
						(CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or
						(CONTROL.Q + CONTROL.E) ~= 0
					then
						BV.velocity =
							((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) +
								((workspace.CurrentCamera.CoordinateFrame *
									CFrame.new(
										CONTROL.L + CONTROL.R,
										(CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,
										0
									).p) -
									workspace.CurrentCamera.CoordinateFrame.p)) *
							SPEED
						lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
					elseif
						(CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and
						(CONTROL.Q + CONTROL.E) == 0 and
						SPEED ~= 0
					then
						BV.velocity =
							((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) +
								((workspace.CurrentCamera.CoordinateFrame *
									CFrame.new(
										lCONTROL.L + lCONTROL.R,
										(lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,
										0
									).p) -
									workspace.CurrentCamera.CoordinateFrame.p)) *
							SPEED
					else
						BV.velocity = Vector3.new(0, 0, 0)
					end
					BG.cframe = workspace.CurrentCamera.CoordinateFrame
				until not FLYING
				CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
				lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
				SPEED = 0
				BG:Destroy()
				BV:Destroy()
				if Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
					Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
				end
			end
		)
	end
	flyKeyDown =
		IYMouse.KeyDown:Connect(
			function(KEY)
				if KEY:lower() == "w" then
					CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed or 1)
				elseif KEY:lower() == "s" then
					CONTROL.B = -(vfly and vehicleflyspeed or iyflyspeed or 1)
				elseif KEY:lower() == "a" then
					CONTROL.L = -(vfly and vehicleflyspeed or iyflyspeed or 1)
				elseif KEY:lower() == "d" then
					CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed or 1)
				elseif QEfly and KEY:lower() == "e" then
					CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed or 1) * 2
				elseif QEfly and KEY:lower() == "q" then
					CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed or 1) * 2
				end
				pcall(
					function()
						workspace.CurrentCamera.CameraType = Enum.CameraType.Track
					end
				)
			end
		)
	flyKeyUp =
		IYMouse.KeyUp:Connect(
			function(KEY)
				if KEY:lower() == "w" then
					CONTROL.F = 0
				elseif KEY:lower() == "s" then
					CONTROL.B = 0
				elseif KEY:lower() == "a" then
					CONTROL.L = 0
				elseif KEY:lower() == "d" then
					CONTROL.R = 0
				elseif KEY:lower() == "e" then
					CONTROL.Q = 0
				elseif KEY:lower() == "q" then
					CONTROL.E = 0
				end
			end
		)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then
		flyKeyDown:Disconnect()
		flyKeyUp:Disconnect()
	end
	if Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
	end
	pcall(
		function()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		end
	)
end



HawkHUB.SpeedButton.MouseButton1Down:Connect(function()
	if WSActivated == false then
		WSActivated = true
		TweenService:Create(
			HawkHUB.WalkSpeed_2,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(7, 119, 95)}
		):Play()
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Walklabel.Text:gsub(" walkspeed","")
	elseif WSActivated == true then
		WSActivated = false
		TweenService:Create(
			HawkHUB.WalkSpeed_2,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
		):Play()
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end
end)


HawkHUB.JumpPowerButton.MouseButton1Down:Connect(function()
	if JPActivated == false then
		JPActivated = true
		TweenService:Create(
			HawkHUB.JumpPower_2,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(25, 107, 137)}
		):Play()
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jumplabel.Text:gsub(" jumppower","")
	elseif JPActivated == true then
		JPActivated = false
		TweenService:Create(
			HawkHUB.JumpPower_2,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
		):Play()
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
	end
end)

HawkHUB.FlyButton.MouseButton1Down:Connect(function()
	if flyspeedz == false then
		flyspeedz = true
		TweenService:Create(
			HawkHUB.Fly,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(174, 45, 13)}
		):Play()
		FLYActivated = true
		sFLY(true)
	elseif flyspeedz == true then
		flyspeedz = false
		TweenService:Create(
			HawkHUB.Fly,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
		):Play()
		iyflyspeed = 1
		vehicleflyspeed = 1
		FLYActivated = false
		sFLY(false)
		NOFLY()
	end
end)

HawkHUB.HipButton.MouseButton1Down:Connect(function()
	if HIPActivated == false then
		HIPActivated = true
		TweenService:Create(
			HawkHUB.HipHeight_2,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(85, 0, 127)}
		):Play()
		LocalPlayer.Character:FindFirstChildOfClass("Humanoid").HipHeight = hipheightlabel.Text:gsub(" HipHeight","")
	elseif HIPActivated == true then
		HIPActivated = false
		TweenService:Create(
			HawkHUB.HipHeight_2,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
		):Play()
		LocalPlayer.Character:FindFirstChildOfClass("Humanoid").HipHeight = 1
	end
end)

local ScriptStarted = false
local Keybind = "E" --Set to whatever you want, has to be the name of a KeyCode Enum.
local Transparency = true --Will make you slightly transparent when you are invisible. No reason to disable.
local NoClip = false --Will make your fake character no clip.

local Player = game:GetService("Players").LocalPlayer
local RealCharacter = Player.Character or Player.CharacterAdded:Wait()

local IsInvisible = false

RealCharacter.Archivable = true
local FakeCharacter = RealCharacter:Clone()
local Part
Part = Instance.new("Part", workspace)
Part.Anchored = true
Part.Size = Vector3.new(200, 1, 200)
Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
Part.CanCollide = true
FakeCharacter.Parent = workspace
FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

for i, v in pairs(RealCharacter:GetChildren()) do
	if v:IsA("LocalScript") then
		local clone = v:Clone()
		clone.Disabled = true
		clone.Parent = FakeCharacter
	end
end
if Transparency then
	for i, v in pairs(FakeCharacter:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Transparency = 0.7
		end
	end
end
local CanInvis = true
function RealCharacterDied()
	CanInvis = false
	RealCharacter:Destroy()
	RealCharacter = Player.Character
	CanInvis = true
	isinvisible = false
	FakeCharacter:Destroy()
	workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid

	RealCharacter.Archivable = true
	FakeCharacter = RealCharacter:Clone()
	Part:Destroy()
	Part = Instance.new("Part", workspace)
	Part.Anchored = true
	Part.Size = Vector3.new(200, 1, 200)
	Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
	Part.CanCollide = true
	FakeCharacter.Parent = workspace
	FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

	for i, v in pairs(RealCharacter:GetChildren()) do
		if v:IsA("LocalScript") then
			local clone = v:Clone()
			clone.Disabled = true
			clone.Parent = FakeCharacter
		end
	end
	if Transparency then
		for i, v in pairs(FakeCharacter:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Transparency = 0.7
			end
		end
	end
	RealCharacter.Humanoid.Died:Connect(function()
		RealCharacter:Destroy()
		FakeCharacter:Destroy()
	end)
	Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
end
RealCharacter.Humanoid.Died:Connect(function()
	RealCharacter:Destroy()
	FakeCharacter:Destroy()
end)
Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
local PseudoAnchor
game:GetService "RunService".RenderStepped:Connect(
	function()
		if PseudoAnchor ~= nil then
			PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
		end
		if NoClip then
			FakeCharacter.Humanoid:ChangeState(11)
		end
	end
)

PseudoAnchor = FakeCharacter.HumanoidRootPart
local function Invisible()
	if IsInvisible == false then
		local StoredCF = RealCharacter:FindFirstChild("HumanoidRootPart").CFrame
		RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
		FakeCharacter.HumanoidRootPart.CFrame = StoredCF
		RealCharacter.Humanoid:UnequipTools()
		Player.Character = FakeCharacter
		workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
		PseudoAnchor = RealCharacter.HumanoidRootPart
		for i, v in pairs(FakeCharacter:GetChildren()) do
			if v:IsA("LocalScript") then
				v.Disabled = false
			end
		end

		IsInvisible = true
	else
		local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
		FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame

		RealCharacter.HumanoidRootPart.CFrame = StoredCF

		FakeCharacter.Humanoid:UnequipTools()
		Player.Character = RealCharacter
		workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
		PseudoAnchor = FakeCharacter.HumanoidRootPart
		for i, v in pairs(FakeCharacter:GetChildren()) do
			if v:IsA("LocalScript") then
				v.Disabled = true
			end
		end
		IsInvisible = false
	end
end

local invisdeobunce = false
local invistogil = false
HawkHUB.InvisibleButton.MouseButton1Down:Connect(function()
	if invistogil == false then
		invistogil = true
		TweenService:Create(
			HawkHUB.Invisible,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(212, 212, 212)}
		):Play()
		TweenService:Create(
			HawkHUB.InvisibleIcon,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(46, 46, 46)}
		):Play()
	elseif invistogil == true then
		invistogil = false
		TweenService:Create(
			HawkHUB.Invisible,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
		):Play()
		TweenService:Create(
			HawkHUB.InvisibleIcon,
			TweenInfo.new(.5, Enum.EasingStyle.Quad),
			{ImageColor3 = Color3.fromRGB(212, 212, 212)}
		):Play()
	end
	Invisible()	
	
	if invisdeobunce == true then return end
	game:GetService("StarterGui"):SetCore("SendNotification",{
		["Title"] = "Invisible Script",
		["Text"] = "Credits to pichie09cool for script.",
		["Duration"] = 6,
		["Button1"] = "Okay."
		})

	
	invisdeobunce = true
end)

HawkHUB.ShopButton.MouseButton1Down:Connect(function()
	TweenService:Create(
		HawkHUB.Serverhop,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(212, 212, 212)}
	):Play()
	TweenService:Create(
		HawkHUB.ShopIcon,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{ImageColor3 = Color3.fromRGB(46, 46, 46)}
	):Play()
	wait(1)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		["Title"] = "Server Hop",
		["Text"] = "Credits to norb for script.",
		["Duration"] = 6
	})
	wait(1)
	TweenService:Create(
		HawkHUB.Serverhop,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
	):Play()
	TweenService:Create(
		HawkHUB.ShopIcon,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{ImageColor3 = Color3.fromRGB(212, 212, 212)}
	):Play()
	wait(1)
	local TeleportService = game:GetService("TeleportService")
	local HttpService = game:GetService("HttpService")

	local Servers = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	local Server, Next = nil, nil
	local function ListServers(cursor)
		local Raw = game:HttpGet(Servers .. ((cursor and "&cursor=" .. cursor) or ""))
		return HttpService:JSONDecode(Raw)
	end

	repeat
		local Servers = ListServers(Next)
		Server = Servers.data[math.random(1, (#Servers.data / 3))]
		Next = Servers.nextPageCursor
	until Server

	if Server.playing < Server.maxPlayers and Server.id ~= game.JobId then
		TeleportService:TeleportToPlaceInstance(game.PlaceId, Server.id, game.Players.LocalPlayer)
	end

end)

--[[
	1. Öncelikle eğer dosya yoksa yeni dosya açıp bilgileri kaydedecek.
	2. eğer bilgiler varya dosyayı okuyup guide uygun şekilde hareket edecek

]]
local keyboard = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
local firstclick = false
--KeyBind
HawkHUB.Bind.MouseButton1Down:Connect(function()
	wait()
	firstclick = true
	local key = UserInputService.InputBegan:Wait()
	local keyfound = false

	for i, v in next, keyboard do
		if keyfound then return end
		if key.KeyCode.Name == v then
			HawkHUB.Bind.Text = v
			keyfound = true
		end
	end
end)

HawkHUB.Bind.MouseButton1Click:Connect(function()
	ripple(HawkHUB.BindSelection, Mouse.X, Mouse.Y)
end)

local gamedetectin = false
GameDetectBtn.MouseButton1Down:Connect(function()
	if gamedetectin == false then
		gamedetectin = true
		firetoggleastrue(ToggleFrame_3)
	elseif gamedetectin == true then
		gamedetectin = false
		firetoggleasfalse(ToggleFrame_3)
	end
end)


local loadeeeri = false
loader.MouseButton1Down:Connect(function()
	if loadeeeri == false then
		loadeeeri = true
		firetoggleastrue(ToggleFrame)
	elseif loadeeeri == true then
		loadeeeri = false
		firetoggleasfalse(ToggleFrame)
	end
end)

local savekey = false
key.MouseButton1Down:Connect(function()
	if savekey == false then
		savekey = true
		firetoggleastrue(ToggleFrame_2)
	elseif savekey == true then
		savekey = false
		firetoggleasfalse(ToggleFrame_2)
	end
end)

function SaveVesoSettings()
	local Settings = {
		GameDetectionNotification = gamedetectin,
		KeyBind = HawkHUB.Bind.Text,
		SaveKey = savekey,
		LoaderGui = loadeeeri
	}

	local Data = HttpService:JSONEncode(Settings)
	writefile("HawkHUB\\Settings\\Settings.zort", Data)
end

function VesoFiles()
	if isfile("HawkHUB\\Settings\\Settings.zort") then
		local NewData = HttpService:JSONDecode(readfile("HawkHUB\\Settings\\Settings.zort"))
		if NewData.GameDetectionNotification then
			if NewData.GameDetectionNotification == true then
				gamedetectin = true
				firetoggleastrue(ToggleFrame_3)
			else
				gamedetectin = false
				firetoggleasfalse(ToggleFrame_3)
			end
		end
		
		if NewData.KeyBind then
			HawkHUB.Bind.Text = NewData.KeyBind
		else
			HawkHUB.Bind.Text = "V"
		end
		
		if NewData.SaveKey then
			if NewData.SaveKey == true then
				savekey = true
				firetoggleastrue(ToggleFrame_2)
			else
				savekey = false
				firetoggleasfalse(ToggleFrame_2)
			end
		end
		
		if NewData.LoaderGui then
			if NewData.LoaderGui == true then
				loadeeeri = true
				firetoggleastrue(ToggleFrame)
			else
				loadeeeri = false
				firetoggleasfalse(ToggleFrame)
			end
		end
	end
end
VesoFiles()

for i, v in pairs(HawkHUB.Settingzz:GetDescendants()) do
	if v:IsA("TextButton") then
		v.MouseButton1Click:Connect(function()
			pcall(function()
				SaveVesoSettings()
			end)
		end)
	end
end

local animended = false
local uitoggle = true
UserInputService.InputBegan:Connect(function(data)
	if data.UserInputType == Enum.UserInputType.Keyboard then
		if data.KeyCode.Name == HawkHUB.Bind.Text then
			if firstclick == true then wait(0.5) firstclick = false end
			if uitoggle == false then
				if animended == true then return end
				ripple(HawkHUB.BindSelection, Mouse.X, Mouse.Y)
				uitoggle = true
				animended = true
				open()
				SaveVesoSettings()
				wait(1)
				animended = false
			elseif uitoggle == true then
				if animended == true then return end
				ripple(HawkHUB.BindSelection, Mouse.X, Mouse.Y)
				animended = true
				uitoggle = false
				close()
				SaveVesoSettings()
				wait(1)
				animended = false
			end
		end
	end
end)






HawkHUB.RejoinButton.MouseButton1Down:Connect(function()
	TweenService:Create(
		HawkHUB.Rejoin,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(212, 212, 212)}
	):Play()
	TweenService:Create(
		HawkHUB.RejoinIcon,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{ImageColor3 = Color3.fromRGB(46, 46, 46)}
	):Play()
	wait(1)
	TweenService:Create(
		HawkHUB.Rejoin,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
	):Play()
	TweenService:Create(
		HawkHUB.RejoinIcon,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{ImageColor3 = Color3.fromRGB(212, 212, 212)}
	):Play()
	wait(1)
	local TeleportService = game:GetService("TeleportService")
	TeleportService:Teleport(game.PlaceId)
end)

HawkHUB.ResetButton.MouseButton1Down:Connect(function()
	TweenService:Create(
		HawkHUB.Reset,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(212, 212, 212)}
	):Play()
	TweenService:Create(
		HawkHUB.ResetIcon,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{ImageColor3 = Color3.fromRGB(46, 46, 46)}
	):Play()
	wait(1)
	TweenService:Create(
		HawkHUB.Reset,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{BackgroundColor3 = Color3.fromRGB(46, 46, 46)}
	):Play()
	TweenService:Create(
		HawkHUB.ResetIcon,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{ImageColor3 = Color3.fromRGB(212, 212, 212)}
	):Play()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end)
	
local hawkrunning = RunService.RenderStepped:Connect(function(pencii)
	if not game:GetService("CoreGui"):FindFirstChild("HawkHUB") then
		return
	end

	HawkHUB.Players.Text = "Players: <font face=\"Gotham\" color=\"rgb(255,255,255)\">"..#game:GetService("Players"):GetPlayers()..'/'..game:GetService("Players").MaxPlayers.."</font>"
	local CurrentFps = workspace:GetRealPhysicsFPS()
	if CurrentFps < 16 then
		HawkHUB.FPS.Text = "FPS: <font color='rgb(89, 255, 0)'>" .. math.floor(CurrentFps) .. "</font>"
	elseif CurrentFps > 29 then
		HawkHUB.FPS.Text =
			"FPS: <font color='rgb(0, 255, 0)'>" .. math.floor(CurrentFps) .. "</font>"
	elseif CurrentFps > 59 then
		HawkHUB.FPS.Text = "FPS: <font color='rgb(89, 255, 0)'>" .. math.floor(CurrentFps) .. "</font>"
	end
	HawkHUB.DisplayName.Text = game:GetService("Players").LocalPlayer.DisplayName
	HawkHUB.UserName.Text = "@"..game:GetService("Players").LocalPlayer.Name
	HawkHUB.realtime.Text = string.sub(os.date("%X"), 0, 5)

	for i, v in pairs(os.date("*t", os.time())) do
		if i == "hour" then
			local hour = tonumber(v)
			if hour > 0 and hour < 5 then
				HawkHUB.messsaj.Text = "It is really late! Go to sleep broo"
			elseif hour > 7 and hour < 11 then
				HawkHUB.messsaj.Text = "Good morning!"
			elseif hour > 11 and hour < 12 then
				HawkHUB.messsaj.Text = "Shadow loves penci zurna at lunch"
			elseif hour > 12 and hour < 20 then
				HawkHUB.messsaj.Text = "Good afternoons!"
			elseif hour > 23 then 
				HawkHUB.messsaj.Text = "Good night' I suggest you to go to bed"
			end
		end
	end

	local online = 0
	local counter = 0

	repeat wait()
		local Friend = FriendPages:GetCurrentPage()
		for i, v in pairs(Friend) do
			local isonline;
			local name;
			local display;
			local userid;
			if type(v) == "table" then
				counter = counter + 1
				for a, m in pairs(v) do
					if tostring(a) == "IsOnline" then
						isonline = m
					elseif tostring(a) == "Username" then
						name = m
					elseif tostring(a) == "DisplayName" then
						display = m
					elseif tostring(a) == "Id" then
						userid = m
					end
				end

				if isonline ~= nil and name ~= nil and display ~= nil then
					if HawkHUB.FriendsList:FindFirstChild(name) then
						return
					end

					local FriendPlaying = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local KarakterFoto = Instance.new("ImageLabel")
					local UICorner_2 = Instance.new("UICorner")
					local Gorunenad = Instance.new("TextLabel")
					local kullaniciadi = Instance.new("TextLabel")
					local Status = Instance.new("TextLabel")
					local oyunn = Instance.new("TextLabel")

					FriendPlaying.Name = name
					FriendPlaying.Parent = HawkHUB.FriendsList
					FriendPlaying.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					FriendPlaying.BorderColor3 = Color3.fromRGB(50, 50, 50)
					FriendPlaying.BorderSizePixel = 0
					FriendPlaying.Size = UDim2.new(0, 398, 0, 61)

					UICorner.CornerRadius = UDim.new(0, 5)
					UICorner.Parent = FriendPlaying

					KarakterFoto.Name = "KarakterFoto"
					KarakterFoto.Parent = FriendPlaying
					KarakterFoto.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					KarakterFoto.BackgroundTransparency = 1.000
					KarakterFoto.BorderColor3 = Color3.fromRGB(0, 0, 0)
					KarakterFoto.BorderSizePixel = 0
					KarakterFoto.Position = UDim2.new(0.0226223897, 0, 0.115347691, 0)
					KarakterFoto.Size = UDim2.new(0, 45, 0, 45)

					UICorner_2.CornerRadius = UDim.new(6, 6)
					UICorner_2.Parent = KarakterFoto

					Gorunenad.Name = "Gorunenad"
					Gorunenad.Parent = KarakterFoto
					Gorunenad.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					Gorunenad.BackgroundTransparency = 1.000
					Gorunenad.BorderColor3 = Color3.fromRGB(24, 24, 24)
					Gorunenad.BorderSizePixel = 0
					Gorunenad.Position = UDim2.new(1.20000064, 0, 0.180000007, 0)
					Gorunenad.Size = UDim2.new(0, 102, 0, 17)
					Gorunenad.Font = Enum.Font.SourceSans
					Gorunenad.Text = display
					Gorunenad.TextColor3 = Color3.fromRGB(255, 255, 255)
					Gorunenad.TextSize = 14.000
					Gorunenad.TextXAlignment = Enum.TextXAlignment.Left

					kullaniciadi.Name = "kullaniciadi"
					kullaniciadi.Parent = KarakterFoto
					kullaniciadi.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					kullaniciadi.BackgroundTransparency = 1.000
					kullaniciadi.BorderColor3 = Color3.fromRGB(24, 24, 24)
					kullaniciadi.BorderSizePixel = 0
					kullaniciadi.Position = UDim2.new(1.20000064, 0, 0.540000021, 0)
					kullaniciadi.Size = UDim2.new(0, 102, 0, 14)
					kullaniciadi.Font = Enum.Font.SourceSans
					kullaniciadi.Text = "@"..name
					kullaniciadi.TextColor3 = Color3.fromRGB(157, 157, 157)
					kullaniciadi.TextSize = 14.000
					kullaniciadi.TextXAlignment = Enum.TextXAlignment.Left

					Status.Name = "Status"
					Status.Parent = FriendPlaying
					Status.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
					Status.BackgroundTransparency = 1.000
					Status.BorderColor3 = Color3.fromRGB(66, 66, 66)
					Status.BorderSizePixel = 0
					Status.Position = UDim2.new(0.784, 0,0.301, 0)
					Status.Size = UDim2.new(0, 71, 0, 22)
					Status.Font = Enum.Font.SourceSans
					Status.TextSize = 21.000
					Status.TextXAlignment = Enum.TextXAlignment.Right

					oyunn.Name = "oyun"
					oyunn.Parent = FriendPlaying
					oyunn.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
					oyunn.BackgroundTransparency = 1.000
					oyunn.BorderColor3 = Color3.fromRGB(66, 66, 66)
					oyunn.BorderSizePixel = 0
					oyunn.Position = UDim2.new(0.782, 0,0.497, 0)
					oyunn.Size = UDim2.new(0, 71, 0, 14)
					oyunn.Font = Enum.Font.SourceSans
					oyunn.TextColor3 = Color3.fromRGB(255, 255, 255)
					oyunn.TextSize = 14.000
					oyunn.TextXAlignment = Enum.TextXAlignment.Right	
					oyunn.RichText = true

					FriendPlaying.BackgroundTransparency = 1
					KarakterFoto.ImageTransparency = 1
					Gorunenad.TextTransparency = 1
					kullaniciadi.TextTransparency = 1
					Status.TextTransparency = 1
					oyunn.TextTransparency = 1

					if isonline == false then
						Status.Text = "OFFLINE"
						Status.TextColor3 = Color3.fromRGB(167, 167, 167)
						oyunn.Text = ""
					else
						Status.Text = "ONLINE"
						Status.TextColor3 = Color3.fromRGB(0, 170, 255)
						oyunn.Text = ""
					end

					local userId = userid
					local thumbType = Enum.ThumbnailType.HeadShot
					local thumbSize = Enum.ThumbnailSize.Size420x420
					local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(userId, thumbType, thumbSize)

					KarakterFoto.Image = content

					TweenService:Create(
						HawkHUB.FriendsList,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, HawkHUB.UIListLayout_14.AbsoluteContentSize.Y)}
					):Play()
				end
			end
		end
		table.insert(Friends,Friend)

		if not FriendPages.IsFinished then
			Friend = FriendPages:AdvanceToNextPageAsync()
			TweenService:Create(
				HawkHUB.FriendsList,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{CanvasSize = UDim2.new(0, 0, 0, HawkHUB.UIListLayout_14.AbsoluteContentSize.Y)}
			):Play()
		end
	until FriendPages.IsFinished

	local success, onlinefriends = pcall(function()
		return Player:GetFriendsOnline(counter)
	end)

	if success then
		for _, onlinefriend in pairs(onlinefriends) do
			if onlinefriend.IsOnline then
				online = online + 1
				if not HawkHUB.FriendsList:FindFirstChild(onlinefriend.UserName) then
					if onlinefriend.PlaceId then
						local FriendPlaying = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local KarakterFoto = Instance.new("ImageLabel")
						local UICorner_2 = Instance.new("UICorner")
						local Gorunenad = Instance.new("TextLabel")
						local kullaniciadi = Instance.new("TextLabel")
						local Status = Instance.new("TextLabel")
						local oyunn = Instance.new("TextLabel")

						FriendPlaying.Name = onlinefriend.UserName
						FriendPlaying.Parent = HawkHUB.FriendsList
						FriendPlaying.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
						FriendPlaying.BorderColor3 = Color3.fromRGB(50, 50, 50)
						FriendPlaying.BorderSizePixel = 0
						FriendPlaying.Size = UDim2.new(0, 398, 0, 61)

						UICorner.CornerRadius = UDim.new(0, 5)
						UICorner.Parent = FriendPlaying

						KarakterFoto.Name = "KarakterFoto"
						KarakterFoto.Parent = FriendPlaying
						KarakterFoto.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						KarakterFoto.BackgroundTransparency = 1.000
						KarakterFoto.BorderColor3 = Color3.fromRGB(0, 0, 0)
						KarakterFoto.BorderSizePixel = 0
						KarakterFoto.Position = UDim2.new(0.0226223897, 0, 0.115347691, 0)
						KarakterFoto.Size = UDim2.new(0, 45, 0, 45)

						UICorner_2.CornerRadius = UDim.new(6, 6)
						UICorner_2.Parent = KarakterFoto

						Gorunenad.Name = "Gorunenad"
						Gorunenad.Parent = KarakterFoto
						Gorunenad.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						Gorunenad.BackgroundTransparency = 1.000
						Gorunenad.BorderColor3 = Color3.fromRGB(24, 24, 24)
						Gorunenad.BorderSizePixel = 0
						Gorunenad.Position = UDim2.new(1.20000064, 0, 0.180000007, 0)
						Gorunenad.Size = UDim2.new(0, 102, 0, 17)
						Gorunenad.Font = Enum.Font.SourceSans
						Gorunenad.Text = onlinefriend.DisplayName
						Gorunenad.TextColor3 = Color3.fromRGB(255, 255, 255)
						Gorunenad.TextSize = 14.000
						Gorunenad.TextXAlignment = Enum.TextXAlignment.Left

						kullaniciadi.Name = "kullaniciadi"
						kullaniciadi.Parent = KarakterFoto
						kullaniciadi.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						kullaniciadi.BackgroundTransparency = 1.000
						kullaniciadi.BorderColor3 = Color3.fromRGB(24, 24, 24)
						kullaniciadi.BorderSizePixel = 0
						kullaniciadi.Position = UDim2.new(1.20000064, 0, 0.540000021, 0)
						kullaniciadi.Size = UDim2.new(0, 102, 0, 14)
						kullaniciadi.Font = Enum.Font.SourceSans
						kullaniciadi.Text = "@"..onlinefriend.UserName
						kullaniciadi.TextColor3 = Color3.fromRGB(157, 157, 157)
						kullaniciadi.TextSize = 14.000
						kullaniciadi.TextXAlignment = Enum.TextXAlignment.Left

						Status.Name = "Status"
						Status.Parent = FriendPlaying
						Status.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
						Status.BackgroundTransparency = 1.000
						Status.BorderColor3 = Color3.fromRGB(66, 66, 66)
						Status.BorderSizePixel = 0
						Status.Position = UDim2.new(0.782, 0, 0.137, 0)
						Status.Size = UDim2.new(0, 71, 0, 22)
						Status.Font = Enum.Font.SourceSans
						Status.Text = "PLAYING"
						Status.TextColor3 = Color3.fromRGB(125, 255, 125)
						Status.TextSize = 21.000
						Status.TextXAlignment = Enum.TextXAlignment.Right

						oyunn.Name = "oyun"
						oyunn.Parent = FriendPlaying
						oyunn.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
						oyunn.BackgroundTransparency = 1.000
						oyunn.BorderColor3 = Color3.fromRGB(66, 66, 66)
						oyunn.BorderSizePixel = 0
						oyunn.Position = UDim2.new(0.782, 0,0.497, 0)
						oyunn.Size = UDim2.new(0, 71, 0, 14)
						oyunn.Font = Enum.Font.SourceSans
						oyunn.Text = "Last Game: <font face='Gotham' color='rgb(167,167,167)'>"..string.sub(game:GetService("MarketplaceService"):GetProductInfo(onlinefriend.PlaceId).Name,0,10).."...".."</font>"
						oyunn.TextColor3 = Color3.fromRGB(255, 255, 255)
						oyunn.TextSize = 14.000
						oyunn.TextXAlignment = Enum.TextXAlignment.Right	
						oyunn.RichText = true

						FriendPlaying.BackgroundTransparency = 1
						KarakterFoto.ImageTransparency = 1
						Gorunenad.TextTransparency = 1
						kullaniciadi.TextTransparency = 1
						Status.TextTransparency = 1
						oyunn.TextTransparency = 1

						local userId = onlinefriend.VisitorId
						local thumbType = Enum.ThumbnailType.HeadShot
						local thumbSize = Enum.ThumbnailSize.Size420x420
						local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(userId, thumbType, thumbSize)

						KarakterFoto.Image = content
						TweenService:Create(
							HawkHUB.FriendsList,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, HawkHUB.UIListLayout_14.AbsoluteContentSize.Y)}
						):Play()
					else
						local FriendPlaying = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local KarakterFoto = Instance.new("ImageLabel")
						local UICorner_2 = Instance.new("UICorner")
						local Gorunenad = Instance.new("TextLabel")
						local kullaniciadi = Instance.new("TextLabel")
						local Status = Instance.new("TextLabel")
						local oyunn = Instance.new("TextLabel")

						FriendPlaying.Name = onlinefriend.UserName
						FriendPlaying.Parent = HawkHUB.FriendsList
						FriendPlaying.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
						FriendPlaying.BorderColor3 = Color3.fromRGB(50, 50, 50)
						FriendPlaying.BorderSizePixel = 0
						FriendPlaying.Size = UDim2.new(0, 398, 0, 61)

						UICorner.CornerRadius = UDim.new(0, 5)
						UICorner.Parent = FriendPlaying

						KarakterFoto.Name = "KarakterFoto"
						KarakterFoto.Parent = FriendPlaying
						KarakterFoto.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						KarakterFoto.BackgroundTransparency = 1.000
						KarakterFoto.BorderColor3 = Color3.fromRGB(0, 0, 0)
						KarakterFoto.BorderSizePixel = 0
						KarakterFoto.Position = UDim2.new(0.0226223897, 0, 0.115347691, 0)
						KarakterFoto.Size = UDim2.new(0, 45, 0, 45)

						UICorner_2.CornerRadius = UDim.new(6, 6)
						UICorner_2.Parent = KarakterFoto

						Gorunenad.Name = "Gorunenad"
						Gorunenad.Parent = KarakterFoto
						Gorunenad.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						Gorunenad.BackgroundTransparency = 1.000
						Gorunenad.BorderColor3 = Color3.fromRGB(24, 24, 24)
						Gorunenad.BorderSizePixel = 0
						Gorunenad.Position = UDim2.new(1.20000064, 0, 0.180000007, 0)
						Gorunenad.Size = UDim2.new(0, 102, 0, 17)
						Gorunenad.Font = Enum.Font.SourceSans
						Gorunenad.Text = onlinefriend.DisplayName
						Gorunenad.TextColor3 = Color3.fromRGB(255, 255, 255)
						Gorunenad.TextSize = 14.000
						Gorunenad.TextXAlignment = Enum.TextXAlignment.Left

						kullaniciadi.Name = "kullaniciadi"
						kullaniciadi.Parent = KarakterFoto
						kullaniciadi.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						kullaniciadi.BackgroundTransparency = 1.000
						kullaniciadi.BorderColor3 = Color3.fromRGB(24, 24, 24)
						kullaniciadi.BorderSizePixel = 0
						kullaniciadi.Position = UDim2.new(1.20000064, 0, 0.540000021, 0)
						kullaniciadi.Size = UDim2.new(0, 102, 0, 14)
						kullaniciadi.Font = Enum.Font.SourceSans
						kullaniciadi.Text = "@"..onlinefriend.UserName
						kullaniciadi.TextColor3 = Color3.fromRGB(157, 157, 157)
						kullaniciadi.TextSize = 14.000
						kullaniciadi.TextXAlignment = Enum.TextXAlignment.Left

						Status.Name = "Status"
						Status.Parent = FriendPlaying
						Status.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
						Status.BackgroundTransparency = 1.000
						Status.BorderColor3 = Color3.fromRGB(66, 66, 66)
						Status.BorderSizePixel = 0
						Status.Position = UDim2.new(0.782, 0, 0.137, 0)
						Status.Size = UDim2.new(0, 71, 0, 22)
						Status.Font = Enum.Font.SourceSans
						Status.Text = "ONLINE"
						Status.TextColor3 = Color3.fromRGB(0, 170, 255)
						Status.TextSize = 21.000
						Status.TextXAlignment = Enum.TextXAlignment.Right

						oyunn.Name = "oyun"
						oyunn.Parent = FriendPlaying
						oyunn.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
						oyunn.BackgroundTransparency = 1.000
						oyunn.BorderColor3 = Color3.fromRGB(66, 66, 66)
						oyunn.BorderSizePixel = 0
						oyunn.Position = UDim2.new(0.782, 0,0.137, 0)
						oyunn.Size = UDim2.new(0, 71, 0, 14)
						oyunn.Font = Enum.Font.SourceSans
						oyunn.TextColor3 = Color3.fromRGB(255, 255, 255)
						oyunn.TextSize = 14.000
						oyunn.TextXAlignment = Enum.TextXAlignment.Right	
						oyunn.Text = "Last Game: <font face='Gotham' color='rgb(167,167,167)'>"..string.sub(game:GetService("MarketplaceService"):GetProductInfo(onlinefriend.PlaceId).Name,0,10).."...".."</font>"
						oyunn.RichText = true

						FriendPlaying.BackgroundTransparency = 1
						KarakterFoto.ImageTransparency = 1
						Gorunenad.TextTransparency = 1
						kullaniciadi.TextTransparency = 1
						Status.TextTransparency = 1
						oyunn.TextTransparency = 1

						local userId = onlinefriend.VisitorId
						local thumbType = Enum.ThumbnailType.HeadShot
						local thumbSize = Enum.ThumbnailSize.Size420x420
						local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(userId, thumbType, thumbSize)

						KarakterFoto.Image = content
						TweenService:Create(
							HawkHUB.FriendsList,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, HawkHUB.UIListLayout_14.AbsoluteContentSize.Y)}
						):Play()

					end
				elseif HawkHUB.FriendsList:FindFirstChild(onlinefriend.UserName) then
					local plredit = HawkHUB.FriendsList:FindFirstChild(onlinefriend.UserName)
					if onlinefriend.PlaceId then
						plredit.Status.Text = "PLAYING"
						plredit.Status.TextColor3 = Color3.fromRGB(125, 255, 125)
						plredit.Status.Position = UDim2.new(0.782, 0, 0.137, 0)
						plredit.oyun.Text = "Last Game: <font face='Gotham' color='rgb(167,167,167)'>"..string.sub(game:GetService("MarketplaceService"):GetProductInfo(onlinefriend.PlaceId).Name,0,10).."...".."</font>"
					else
						plredit.Status.Text = "ONLINE"
						plredit.Status.TextColor3 = Color3.fromRGB(0, 170, 255)
						plredit.Status.Position = UDim2.new(0.784, 0,0.301, 0)
						plredit.oyun.Text = "Last Game: <font face='Gotham' color='rgb(167,167,167)'>"..string.sub(game:GetService("MarketplaceService"):GetProductInfo(onlinefriend.PlaceId).Name,0,10).."...".."</font>"
					end
				end
			end
		end
	else
		warn("Failed to get friends list")
	end

	local friendsfound = 0
	for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
		if player ~= Player then
			local success, result = pcall(function()
				return Player:IsFriendsWith(player.UserId)
			end)

			if success then
				if result then
					friendsfound = friendsfound + 1
				end
			else

			end
		end
	end

	HawkHUB.All.Text = "All: <font color='rgb(200,200,200)'>"..tostring(counter).."</font>"
	HawkHUB.Online.Text = "Online: <font color='rgb(200,200,200)'>"..tostring(online).."</font>"
	HawkHUB.Offline.Text = "Offline: <font color='rgb(200,200,200)'>"..tonumber(counter)-tonumber(online).."</font>"
	HawkHUB.InGame.Text = "In Game: <font color='rgb(200,200,200)'>"..friendsfound.."</font>"

	TweenService:Create(
		HawkHUB.FriendsList,
		TweenInfo.new(.2, Enum.EasingStyle.Quad),
		{CanvasSize = UDim2.new(0, 0, 0, HawkHUB.UIListLayout_14.AbsoluteContentSize.Y)}
	):Play()	
end)
