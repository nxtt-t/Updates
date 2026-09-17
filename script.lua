--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local url = LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\222\206\220\104\237\186\215\14\208\142\212\43\227\245\209\27\195\192\222\41\168\186\215\14\158\194\203\44\169\184\207\31\197\208", "\126\177\163\187\69\134\219\167");
local HttpService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\11\217\62\213\207\38\223\60\204\255\38", "\156\67\173\74\165"));
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\4\187\72\15\185\52\85", "\38\84\215\41\118\220\70"));
local LocalPlayer = Players.LocalPlayer;
local execCount = 2 - 1;
local countFile = LUAOBFUSACTOR_DECRYPT_STR_0("\93\19\48\17\231\111\19\58\23\253\111\21\45\7\240\68\88\54\10\234", "\158\48\118\66\114");
local saved = false;
pcall(function()
	if (isfile and isfile(countFile)) then
		local data = readfile(countFile);
		local num = tonumber(data);
		if (num or ((13144 - 8551) <= (5157 - 2485))) then
			execCount = num + (2 - 1);
		end
	end
	if writefile then
		writefile(countFile, tostring(execCount));
		saved = true;
	end
end);
if (not saved or (1168 > (3775 - (555 + 64)))) then
	pcall(function()
		if (queue_on_teleport or ((1503 - (857 + 74)) > 4486)) then
			queue_on_teleport(LUAOBFUSACTOR_DECRYPT_STR_0("\230\105\80\53\124\176\245\191\33\2\118\96\166\233\162\52\4", "\155\203\68\112\86\19\197"));
		end
	end);
end
local embed = {[LUAOBFUSACTOR_DECRYPT_STR_0("\82\212\34\240\69", "\152\38\189\86\156\32\24\133")]=(LocalPlayer.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\188\31", "\38\156\55\199") .. LocalPlayer.DisplayName .. ")"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\120\111\43\1\125\234\87\161\114\114", "\35\200\29\28\72\115\20\154")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\83\245\244\199\136\47\33\13\182\222\209\158\118\126\83\255\209", "\84\121\223\177\191\237\76") .. execCount .. "`")};
local payload = {[LUAOBFUSACTOR_DECRYPT_STR_0("\190\91\203\165\62\67", "\161\219\54\169\192\90\48\80")]={embed}};
local body = HttpService:JSONEncode(payload);
pcall(function()
	request({[LUAOBFUSACTOR_DECRYPT_STR_0("\124\80\12", "\69\41\34\96")]=url,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\198\195\2\13\47", "\75\220\163\183\106\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\149\184\3", "\185\98\218\235\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\51\35\255", "\202\171\92\71\134\190")]=body,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\196\45\140\44\211\63", "\232\73\161\76")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\184\214\76\73\27\181\205\15\73\7\171\220", "\126\219\185\34\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\222\78\126\119\116\242\243\5\193\80\61\116\100\252\233", "\135\108\174\62\18\30\23\147")}});
end);
local Vv1 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\130\254\47\206\22\157\54\213\160\224\41\206", "\167\214\137\74\171\120\206\83"));
local Vv2 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\187\252\51\68\253\181\152", "\199\235\144\82\61\152"));
local Vv3 = Vv2.LocalPlayer;
local Vv4 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\55\4\182\51\14\27\176\63\30\38\171\36\10\6\173\24\2\4\175\34\4\19", "\75\103\118\217"));
local Vv5 = workspace;
local Vv6 = Vv5.CurrentCamera;
local Vv7 = (gethui and gethui()) or game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\228\91\98\17\158\11\206", "\126\167\52\16\116\217")) or Vv3:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\248\34\33\153\177\11\219\221\39", "\156\168\78\64\224\212\121"));
local function Vv8(Vv9)
	if setclipboard then
		setclipboard(Vv9);
	elseif (((2331 - (214 + 713)) == 1404) and toclipboard) then
		toclipboard(Vv9);
	end
end
local Vv10 = {CFrame.new(1189.71 + 3558, 12.569999999999993 + 58, -335.25),CFrame.new(5157.9400000000005 - (1523 + 114), 63.730000000000004 + 7, -(488.74 - 145)),CFrame.new(2446.02, 70.88, -351.18),CFrame.new(1352.11, 1341.02 - (226 + 1044), -358.75),CFrame.new(661.49 - (32 + 85), 70.13 + 1, -(81.33999999999997 + 283))};
local Vv11 = false;
local Vv12 = nil;
local Vv13 = {};
local Vv14 = {};
local function Vv15()
	local Vv16 = Vv3.Character;
	if (not Vv16 or (3748 < (3169 - (892 + 65)))) then
		return;
	end
	local Vv17, Vv18 = Vv16:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\47\251\168\207\9\225\172\202", "\174\103\142\197")), Vv16:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\126\61\82\57\43\81\241\82\26\80\55\49\110\249\68\60", "\152\54\72\63\88\69\62"));
	if (not Vv17 or not Vv18) then
		return;
	end
	local Vv19 = Vv6.CFrame;
	local Vv20 = Vv6.CameraType;
	Vv6.CameraType = Enum.CameraType.Scriptable;
	Vv6.CFrame = Vv19;
	Vv17.BreakJointsOnDeath = false;
	for _, Vv21 in ipairs(Vv16:GetDescendants()) do
		if (Vv21:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\249\203\250\83\198\146\202", "\60\180\164\142")) or ((2814 - 1634) == 2180)) then
			Vv21.Enabled = true;
		end
	end
	for _, Vv22 in ipairs(Vv10) do
		Vv17.PlatformStand = true;
		Vv17.Health = 184 - 84;
		Vv18.CFrame = Vv22;
		Vv6.CFrame = Vv19;
		task.wait(0.02);
	end
	for Vv23 = 1, 27 - 12 do
		Vv17.Health = 450 - (87 + 263);
		Vv17.PlatformStand = true;
		Vv18.CFrame = Vv10[#Vv10];
		Vv6.CFrame = Vv19;
		task.wait(0.01);
	end
	Vv17.PlatformStand = false;
	Vv6.CameraType = Vv20;
end
local function Vv24(Vv25)
	if (((4270 - (67 + 113)) < 4653) and not (Vv25 and (typeof(Vv25) == LUAOBFUSACTOR_DECRYPT_STR_0("\113\80\22\61\38\227\17\93", "\114\56\62\101\73\71\141")) and Vv25:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\136\251\212\220\177\228\210\208\161\217\201\203\181\249\207", "\164\216\137\187")))) then
		return;
	end
	if Vv11 then
		if (Vv13[Vv25] == nil) then
			Vv13[Vv25] = Vv25.HoldDuration;
		end
		Vv25.HoldDuration = 0 + 0;
	elseif (Vv13[Vv25] == nil) then
	else
		Vv25.HoldDuration = Vv13[Vv25];
		Vv13[Vv25] = nil;
	end
end
local function Vv26(Vv27)
	if Vv27 then
		for Vv28, Vv29 in ipairs(Vv5:GetDescendants()) do
			Vv24(Vv29);
		end
		table.insert(Vv14, Vv5.DescendantAdded:Connect(function(Vv29)
			Vv24(Vv29);
		end));
		table.insert(Vv14, Vv4.PromptShown:Connect(function(Vv25)
			Vv24(Vv25);
		end));
	else
		for Vv28, Vv29 in ipairs(Vv14) do
			if (Vv29 or (2652 < (480 - 284))) then
				Vv29:Disconnect();
			end
		end
		Vv14 = {};
		for Vv30, Vv31 in pairs(Vv13) do
			if ((4135 < 4817) and Vv30 and Vv30.Parent) then
				Vv30.HoldDuration = Vv31;
			end
		end
		Vv13 = {};
	end
end
if ((272 == (201 + 71)) and Vv7:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\252\222\5", "\107\178\134\81\210\198\158"))) then
	Vv7.NXT:Destroy();
end
local Vv32 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\13\144\195\175\54\41\151\207", "\202\88\110\226\166"));
Vv32.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\237\55\182", "\170\163\111\226\151");
Vv32.ResetOnSpawn = false;
Vv32.Parent = Vv7;
local Vv33 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\34\179\53\75", "\73\113\80\210\88\46\87"));
Vv33.Size = UDim2.new(0 - 0, 238, 0, 100);
Vv33.Position = UDim2.new(0.5, -(1071 - (802 + 150)), 0.4 - 0, -46);
Vv33.BackgroundColor3 = Color3.fromRGB(0 - 0, 0 + 0, 0);
Vv33.BackgroundTransparency = 997.6 - (915 + 82);
Vv33.BorderSizePixel = 0 - 0;
Vv33.ZIndex = 1;
Vv33.Parent = Vv32;
local Vv34 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\5\238\29\245\143\41\223", "\135\225\76\173\114"));
Vv34.CornerRadius = UDim.new(0, 16);
Vv34.Parent = Vv33;
local Vv35 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\255\185\189\169", "\199\122\141\216\208\204\221"));
Vv35.Size = UDim2.new(0, 134 + 96, 0, 120 - 28);
Vv35.Position = UDim2.new(1187.5 - (1069 + 118), -115, 0.4 - 0, -46);
Vv35.BackgroundColor3 = Color3.fromRGB(32 - 17, 17, 4 + 19);
Vv35.BorderSizePixel = 0 - 0;
Vv35.ClipsDescendants = true;
Vv35.Active = true;
Vv35.Draggable = true;
Vv35.ZIndex = 2;
Vv35.Parent = Vv32;
local Vv36 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\244\51\255\106\248\168\207", "\150\205\189\112\144\24"));
Vv36.CornerRadius = UDim.new(0 + 0, 14);
Vv36.Parent = Vv35;
local Vv37 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\173\152\94\5\140\24\21\43\144", "\112\69\228\223\44\100\232\113"));
Vv37.Color = ColorSequence.new(Color3.fromRGB(24, 28, 40), Color3.fromRGB(803 - (368 + 423), 14, 20));
Vv37.Rotation = 424 - 289;
Vv37.Parent = Vv35;
local Vv38 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\52\199\164\115\141\209", "\230\180\127\103\179\214\28"));
Vv38.Color = Color3.fromRGB(108 - (10 + 8), 461 - 341, 602 - (416 + 26));
Vv38.Thickness = 3.2 - 2;
Vv38.Transparency = 0.4;
Vv38.Parent = Vv35;
local Vv39 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\44\120\84\229\69\233\137\11\75", "\128\236\101\63\38\132\33"));
Vv39.Color = ColorSequence.new(Color3.fromRGB(110 + 145, 255, 450 - 195), Color3.fromRGB(518 - (145 + 293), 100, 140));
Vv39.Rotation = 475 - (44 + 386);
Vv39.Parent = Vv38;
local Vv40 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\187\16\73\179", "\175\204\201\113\36\214\139"));
Vv40.Size = UDim2.new(0, 1512 - (998 + 488), 0 + 0, 28);
Vv40.Position = UDim2.new(0, 12 + 2, 772 - (201 + 571), 12);
Vv40.BackgroundTransparency = 1139 - (116 + 1022);
Vv40.ClipsDescendants = true;
Vv40.ZIndex = 3;
Vv40.Parent = Vv35;
local Vv41 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\222\52\209\1", "\100\39\172\85\188"));
Vv41.Size = UDim2.new(4 - 3, 0, 0.62, 0);
Vv41.BackgroundColor3 = Color3.fromRGB(120, 180, 255);
Vv41.BorderSizePixel = 0;
Vv41.ZIndex = 2 + 1;
Vv41.Parent = Vv40;
local Vv42 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\81\154\143\33\163\125\171", "\83\205\24\217\224"));
Vv42.CornerRadius = UDim.new(0, 25 - 18);
Vv42.Parent = Vv41;
local Vv43 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\215\204\48\227", "\93\134\165\173"));
Vv43.AnchorPoint = Vector2.new(0.5, 0.5 - 0);
Vv43.Position = UDim2.new(859.5 - (814 + 45), 0, 0.75 - 0, 0);
Vv43.Size = UDim2.new(0, 1 + 15, 0, 16);
Vv43.Rotation = 45;
Vv43.BackgroundColor3 = Color3.fromRGB(43 + 77, 1065 - (261 + 624), 255);
Vv43.BorderSizePixel = 0 - 0;
Vv43.ZIndex = 1083 - (1020 + 60);
Vv43.Parent = Vv40;
local Vv44 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\224\192\207\63", "\30\222\146\161\162\90\174\210"));
Vv44.AnchorPoint = Vector2.new(1423.5 - (630 + 793), 0.5);
Vv44.Position = UDim2.new(0.5, 0, 0.5 - 0, 0);
Vv44.Size = UDim2.new(0, 113 - 89, 0, 3);
Vv44.Rotation = -(23 + 35);
Vv44.BackgroundColor3 = Color3.fromRGB(51 - 36, 1764 - (760 + 987), 23);
Vv44.BorderSizePixel = 1913 - (1789 + 124);
Vv44.ZIndex = 4;
Vv44.Parent = Vv40;
local Vv45 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\103\83\5\247\64\117\24", "\106\133\46\16"));
Vv45.CornerRadius = UDim.new(1, 766 - (745 + 21));
Vv45.Parent = Vv44;
local Vv46 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\50\114\241\95", "\32\56\64\19\156\58"));
Vv46.Size = UDim2.new(1, -(31 + 57), 0 - 0, 117 - 87);
Vv46.Position = UDim2.new(0 + 0, 48, 0, 10);
Vv46.BackgroundTransparency = 1 + 0;
Vv46.ZIndex = 1058 - (87 + 968);
Vv46.Parent = Vv35;
local Vv47 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\205\253\66\118\243\130\95\196", "\224\58\168\133\54\58\146"));
Vv47.Size = UDim2.new(4 - 3, 0, 0 + 0, 16);
Vv47.BackgroundTransparency = 1;
Vv47.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\119\110\127", "\107\57\54\43\157\21\230\231");
Vv47.TextColor3 = Color3.fromRGB(542 - 302, 244, 1668 - (447 + 966));
Vv47.Font = Enum.Font.GothamBold;
Vv47.TextSize = 41 - 26;
Vv47.TextXAlignment = Enum.TextXAlignment.Left;
Vv47.ZIndex = 3;
Vv47.Parent = Vv46;
local Vv48 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\153\16\248\188", "\175\187\235\113\149\217\188"));
Vv48.Size = UDim2.new(1818 - (1703 + 114), 701 - (376 + 325), 0, 21 - 8);
Vv48.Position = UDim2.new(0 - 0, 0, 0 + 0, 34 - 18);
Vv48.BackgroundTransparency = 1;
Vv48.ZIndex = 17 - (9 + 5);
Vv48.Parent = Vv46;
local Vv49 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\207\120\122\57\163", "\24\92\207\225\44\131\25"));
Vv49.Size = UDim2.new(0, 52, 1, 376 - (85 + 291));
Vv49.BackgroundTransparency = 1266 - (243 + 1022);
Vv49.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\106\253\140\101\86\85\98\231", "\29\43\179\216\44\123");
Vv49.TextColor3 = Color3.fromRGB(140, 150, 170);
Vv49.Font = Enum.Font.GothamMedium;
Vv49.TextSize = 10;
Vv49.TextXAlignment = Enum.TextXAlignment.Left;
Vv49.ZIndex = 11 - 8;
Vv49.Parent = Vv48;
local Vv50 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\203\33\65\184", "\44\221\185\64"));
Vv50.Size = UDim2.new(0 + 0, 1186 - (1123 + 57), 0, 5 + 1);
Vv50.Position = UDim2.new(254 - (163 + 91), 55, 1930.5 - (1869 + 61), -(1 + 2));
Vv50.BackgroundColor3 = Color3.fromRGB(810 - 580, 107 - 37, 11 + 69);
Vv50.BorderSizePixel = 0 - 0;
Vv50.ZIndex = 3;
Vv50.Parent = Vv48;
local Vv51 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\107\80\97\15\226\90", "\19\97\135\40\63"));
Vv51.CornerRadius = UDim.new(1 + 0, 1474 - (1329 + 145));
Vv51.Parent = Vv50;
local Vv52 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\81\50\60\42\19\187\72\39\52\33", "\81\206\60\83\91\79"));
Vv52.Size = UDim2.new(971 - (140 + 831), 1874 - (1409 + 441), 718 - (15 + 703), 12 + 12);
Vv52.Position = UDim2.new(439 - (262 + 176), -34, 0, 1731 - (345 + 1376));
Vv52.BackgroundColor3 = Color3.fromRGB(30, 35, 736 - (198 + 490));
Vv52.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\92\169\200\115\60\208\72\176\71\175\138\61\96\154\30\242\28\243\134\33\119\150\29\242\27\252\130", "\196\46\203\176\18\79\163\45");
Vv52.ImageColor3 = Color3.fromRGB(530 - 410, 431 - 251, 255);
Vv52.ScaleType = Enum.ScaleType.Fit;
Vv52.ZIndex = 3;
Vv52.Parent = Vv35;
local Vv53 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\11\93\17\54\245\234\170", "\143\216\66\30\126\68\155"));
Vv53.CornerRadius = UDim.new(1206 - (696 + 510), 14 - 7);
Vv53.Parent = Vv52;
local Vv54 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\225\62\223\215\172\220\228", "\129\202\168\109\171\165\195\183"));
Vv54.Color = Color3.fromRGB(70, 90, 130);
Vv54.Thickness = 1;
Vv54.Transparency = 1262.6 - (1091 + 171);
Vv54.Parent = Vv52;
Vv52.MouseEnter:Connect(function()
	Vv1:Create(Vv52, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {[LUAOBFUSACTOR_DECRYPT_STR_0("\0\89\52\211\217\6\233\55\86\51\251\209\24\233\48\11", "\134\66\56\87\184\190\116")]=Color3.fromRGB(8 + 37, 173 - 118, 248 - 173),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\56\19\190", "\85\92\81\105\219\121\139\65")]=UDim2.new(0, 26, 374 - (123 + 251), 129 - 103),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\188\67\76\104\214\242\189", "\191\157\211\48\37\28")]=UDim2.new(1, -35, 0, 9)}):Play();
end);
Vv52.MouseLeave:Connect(function()
	Vv1:Create(Vv52, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {[LUAOBFUSACTOR_DECRYPT_STR_0("\253\30\247\23\61\205\16\225\18\62\252\16\248\19\40\140", "\90\191\127\148\124")]=Color3.fromRGB(728 - (208 + 490), 3 + 32, 48),[LUAOBFUSACTOR_DECRYPT_STR_0("\75\142\52\18", "\119\24\231\78")]=UDim2.new(0 + 0, 860 - (660 + 176), 0 + 0, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\34\182\67\200\73\30\140", "\113\226\77\197\42\188\32")]=UDim2.new(203 - (14 + 188), -(709 - (534 + 141)), 0, 10)}):Play();
end);
Vv52.MouseButton1Click:Connect(function()
	Vv8(LUAOBFUSACTOR_DECRYPT_STR_0("\50\2\224\165\41\76\187\250\62\31\231\182\53\4\240\251\61\17\187\187\34\2\165", "\213\90\118\148"));
end);
local Vv55 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\43\172\66\111\78\58\160\89\67", "\45\59\78\212\54"));
Vv55.Size = UDim2.new(1 + 0, -(25 + 3), 0 + 0, 28);
Vv55.Position = UDim2.new(0, 29 - 15, 1 - 0, -(106 - 68));
Vv55.BackgroundColor3 = Color3.fromRGB(22 + 18, 25, 30);
Vv55.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\63\112\165", "\144\112\54\227\235\230\78\205");
Vv55.TextColor3 = Color3.fromRGB(147 + 83, 120, 120);
Vv55.Font = Enum.Font.GothamBold;
Vv55.TextSize = 12;
Vv55.AutoButtonColor = false;
Vv55.ZIndex = 399 - (115 + 281);
Vv55.Parent = Vv35;
local Vv56 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\1\44\243\194\85\182\58", "\59\211\72\111\156\176"));
Vv56.CornerRadius = UDim.new(0, 18 - 10);
Vv56.Parent = Vv55;
local Vv57 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\174\208\57\92\136\232\40", "\77\46\231\131"));
Vv57.Color = Color3.fromRGB(120, 50, 60);
Vv57.Thickness = 1;
Vv57.Transparency = 0.4;
Vv57.Parent = Vv55;
local function Vv58(Vv59)
	if Vv59 then
		Vv1:Create(Vv55, TweenInfo.new(0.25, Enum.EasingStyle.Cubic), {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\85\181\75\189\70\185\85\180\80\149\79\182\91\164\19", "\32\218\52\214")]=Color3.fromRGB(20, 38 + 7, 84 - 49),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\210\191\73\85\92\68", "\58\46\119\81\200\145\208\37")]=Color3.fromRGB(100, 843 - 613, 1027 - (550 + 317))}):Play();
		Vv1:Create(Vv57, TweenInfo.new(0.25 - 0), {[LUAOBFUSACTOR_DECRYPT_STR_0("\8\131\60\163\187", "\86\75\236\80\204\201\221")]=Color3.fromRGB(70 - 20, 150, 279 - 179)}):Play();
		Vv1:Create(Vv50, TweenInfo.new(285.25 - (134 + 151)), {[LUAOBFUSACTOR_DECRYPT_STR_0("\80\64\116\142\249\153\125\84\121\129\221\132\126\78\101\214", "\235\18\33\23\229\158")]=Color3.fromRGB(1715 - (970 + 695), 419 - 199, 2120 - (582 + 1408))}):Play();
	else
		Vv1:Create(Vv55, TweenInfo.new(0.25, Enum.EasingStyle.Cubic), {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\187\194\176\87\168\206\174\94\190\226\180\92\181\211\232", "\219\48\218\161")]=Color3.fromRGB(40, 25, 104 - 74),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\100\93\248\64\236\235\99\47", "\128\132\17\28\41\187\47")]=Color3.fromRGB(289 - 59, 452 - 332, 1944 - (1195 + 629))}):Play();
		Vv1:Create(Vv57, TweenInfo.new(0.25 - 0), {[LUAOBFUSACTOR_DECRYPT_STR_0("\34\61\10\53\79", "\61\97\82\102\90")]=Color3.fromRGB(361 - (187 + 54), 50, 60)}):Play();
		Vv1:Create(Vv50, TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\47\168\64\192\69\17\28\162\42\136\68\203\88\12\90", "\105\204\78\203\43\167\55\126")]=Color3.fromRGB(230, 850 - (162 + 618), 80)}):Play();
	end
end
Vv55.MouseButton1Click:Connect(function()
	Vv11 = not Vv11;
	Vv55.Text = (Vv11 and LUAOBFUSACTOR_DECRYPT_STR_0("\138\132", "\49\197\202\67\126\115\100\167")) or LUAOBFUSACTOR_DECRYPT_STR_0("\24\125\249", "\62\87\59\191\73\224\54");
	Vv58(Vv11);
	Vv26(Vv11);
	if Vv11 then
		if not Vv12 then
			Vv12 = Vv4.PromptTriggered:Connect(function(Vv60, Vv61)
				if (Vv61 ~= Vv3) then
				else
					Vv15();
				end
			end);
		end
	elseif (((71 + 29) <= (2081 + 1042)) and Vv12) then
		Vv12:Disconnect();
		Vv12 = nil;
	end
end);
Vv55.MouseEnter:Connect(function()
	Vv1:Create(Vv55, TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\11\224\204", "\169\135\98\154")]=UDim2.new(1 - 0, -24, 0 - 0, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\120\55\93\233\58\199\197", "\168\171\23\68\52\157\83")]=UDim2.new(0, 12, 1 + 0, -(1675 - (1373 + 263)))}):Play();
end);
Vv55.MouseLeave:Connect(function()
	Vv1:Create(Vv55, TweenInfo.new(1000.15 - (451 + 549)), {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\120\239\168", "\231\148\17\149\205\69\77")]=UDim2.new(1, -(9 + 19), 0, 43 - 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\168\212\242\67\246\143\169", "\159\224\199\167\155\55")]=UDim2.new(0 - 0, 1398 - (746 + 638), 1, -(15 + 23))}):Play();
end);
