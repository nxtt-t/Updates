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
local Vv1 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\229\212\222\32\232\136\194\12\199\202\216\32", "\126\177\163\187\69\134\219\167"));
local Vv2 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\19\193\43\220\249\49\222", "\156\67\173\74\165"));
local Vv3 = Vv2.LocalPlayer;
local Vv4 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\4\165\70\14\181\43\79\32\174\121\4\179\43\86\32\132\76\4\170\47\69\49", "\38\84\215\41\118\220\70"));
local Vv5 = workspace;
local Vv6 = Vv5.CurrentCamera;
local Vv7 = nil;
pcall(function()
	Vv7 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\115\25\48\23\217\69\31", "\158\48\118\66\114"));
end);
if (not Vv7 or not pcall(function()
	return Vv7.Name;
end)) then
	Vv7 = Vv3:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\155\40\17\47\118\183\220\190\45", "\155\203\68\112\86\19\197"));
end
local Vv8 = {CFrame.new(4747.71, 70.57, -335.25),CFrame.new(3520.94, 70.73, -343.74),CFrame.new(2446.02, 70.88, -351.18),CFrame.new(1352.11, 71.02, -358.75),CFrame.new(544.49, 71.13, -364.34)};
local Vv9 = false;
local Vv10 = nil;
local Vv11 = {};
local Vv12 = {};
local function Vv13()
	local Vv14 = Vv3.Character;
	if not Vv14 then
		return;
	end
	local Vv15, Vv16 = Vv14:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\110\200\59\253\78\119\236\252", "\152\38\189\86\156\32\24\133")), Vv14:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\212\66\170\71\242\88\174\66\206\88\168\82\204\86\181\82", "\38\156\55\199"));
	if (not Vv15 or not Vv16) then
		return;
	end
	local Vv17 = Vv6.CFrame;
	local Vv18 = Vv6.CameraType;
	Vv6.CameraType = Enum.CameraType.Scriptable;
	Vv6.CFrame = Vv17;
	Vv15.BreakJointsOnDeath = false;
	for _, Vv19 in ipairs(Vv14:GetDescendants()) do
		if Vv19:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\133\114\104\39\1\34\222", "\35\200\29\28\72\115\20\154")) then
			Vv19.Enabled = true;
		end
	end
	for _, Vv20 in ipairs(Vv8) do
		Vv15.PlatformStand = true;
		Vv15.Health = 100;
		Vv16.CFrame = Vv20;
		Vv6.CFrame = Vv17;
		task.wait(0.02);
	end
	for Vv21 = 1, 15 do
		Vv15.Health = 100;
		Vv15.PlatformStand = true;
		Vv16.CFrame = Vv8[#Vv8];
		Vv6.CFrame = Vv17;
		task.wait(0.01);
	end
	Vv15.PlatformStand = false;
	Vv6.CameraType = Vv18;
end
local function Vv22(Vv23)
	if not (Vv23 and (typeof(Vv23) == LUAOBFUSACTOR_DECRYPT_STR_0("\48\177\194\203\140\34\55\28", "\84\121\223\177\191\237\76")) and Vv23:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\139\68\198\184\51\93\57\213\162\102\219\175\55\64\36", "\161\219\54\169\192\90\48\80"))) then
		return;
	end
	if Vv9 then
		if not Vv11[Vv23] then
			local Vv24 = Vv23.HoldDuration;
			local Vv25 = Vv23:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\97\77\12\33\109\87\18\36\93\75\15\43", "\69\41\34\96")):Connect(function()
				if (Vv9 and (Vv23.HoldDuration > 0)) then
					Vv11[Vv23].duration = Vv23.HoldDuration;
					Vv23.HoldDuration = 0;
				end
			end);
			Vv11[Vv23] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\184\214\197\11\22\34\179\205", "\75\220\163\183\106\98")]=Vv24,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\181\133\57\220\1\174\130\56\215", "\185\98\218\235\87")]=Vv25};
		end
		Vv23.HoldDuration = 0;
	elseif Vv11[Vv23] then
		if Vv11[Vv23].connection then
			Vv11[Vv23].connection:Disconnect();
		end
		Vv23.HoldDuration = Vv11[Vv23].duration;
		Vv11[Vv23] = nil;
	end
end
local function Vv26(Vv27)
	if Vv27 then
		for Vv28, Vv29 in ipairs(Vv5:GetDescendants()) do
			Vv22(Vv29);
		end
		table.insert(Vv12, Vv5.DescendantAdded:Connect(function(Vv29)
			Vv22(Vv29);
		end));
		table.insert(Vv12, Vv4.PromptShown:Connect(function(Vv23)
			Vv22(Vv23);
		end));
	else
		for Vv28, Vv29 in ipairs(Vv12) do
			if Vv29 then
				Vv29:Disconnect();
			end
		end
		Vv12 = {};
		for Vv30, Vv31 in pairs(Vv11) do
			if (Vv30 and Vv30.Parent) then
				if Vv31.connection then
					Vv31.connection:Disconnect();
				end
				Vv30.HoldDuration = Vv31.duration;
			end
		end
		Vv11 = {};
	end
end
local function Vv32(Vv33, Vv34)
	local Vv35 = false;
	pcall(function()
		if setclipboard then
			setclipboard(Vv33);
			Vv35 = true;
		elseif toclipboard then
			toclipboard(Vv33);
			Vv35 = true;
		end
	end);
	if (not Vv35 and Vv34) then
		local Vv36 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242\252\165\211", "\202\171\92\71\134\190"));
		Vv36.Size = UDim2.new(1, 0, 0, 20);
		Vv36.Position = UDim2.new(0, 0, 1, 5);
		Vv36.Text = Vv33;
		Vv36.TextColor3 = Color3.fromRGB(255, 255, 255);
		Vv36.BackgroundColor3 = Color3.fromRGB(20, 20, 25);
		Vv36.BorderSizePixel = 0;
		Vv36.ClearTextOnFocus = false;
		Vv36.ZIndex = 10;
		Vv36.Parent = Vv34;
		Vv36:CaptureFocus();
		Vv36:SelectionStart(1);
		Vv36:CursorPosition(#Vv33 + 1);
		task.delay(5, function()
			if (Vv36 and Vv36.Parent) then
				Vv36:Destroy();
			end
		end);
	end
end
if Vv7:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\7\249\24\183\7\192\56\129\63\196", "\232\73\161\76")) then
	Vv7.NXT_Native:Destroy();
end
local Vv37 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\218\80\88\27\181\254\87\84", "\126\219\185\34\61"));
Vv37.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\34\246\106\77\80\118\231\238\26\203", "\135\108\174\62\18\30\23\147");
Vv37.ResetOnSpawn = false;
Vv37.Parent = Vv7;
local Vv38 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\251\43\198\29", "\167\214\137\74\171\120\206\83"));
Vv38.Size = UDim2.new(0, 238, 0, 100);
Vv38.Position = UDim2.new(0.5, -119, 0.4, -46);
Vv38.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
Vv38.BackgroundTransparency = 0.6;
Vv38.BorderSizePixel = 0;
Vv38.ZIndex = 1;
Vv38.Parent = Vv37;
local Vv39 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\190\217\17\82\234\169\142\226", "\199\235\144\82\61\152"));
Vv39.CornerRadius = UDim.new(0, 16);
Vv39.Parent = Vv38;
local Vv40 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\4\184\38\2", "\75\103\118\217"));
Vv40.Size = UDim2.new(0, 230, 0, 92);
Vv40.Position = UDim2.new(0.5, -115, 0.4, -46);
Vv40.BackgroundColor3 = Color3.fromRGB(15, 17, 23);
Vv40.BorderSizePixel = 0;
Vv40.ClipsDescendants = false;
Vv40.Active = true;
Vv40.Draggable = true;
Vv40.ZIndex = 2;
Vv40.Parent = Vv37;
local Vv41 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\125\83\27\171\16\194\70", "\126\167\52\16\116\217"));
Vv41.CornerRadius = UDim.new(0, 14);
Vv41.Parent = Vv40;
local Vv42 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\7\7\146\181\29\245\205\32\52", "\156\168\78\64\224\212\121"));
Vv42.Color = ColorSequence.new(Color3.fromRGB(24, 28, 40), Color3.fromRGB(12, 14, 20));
Vv42.Rotation = 135;
Vv42.Parent = Vv40;
local Vv43 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\199\150\218\21\225\174\203", "\174\103\142\197"));
Vv43.Color = Color3.fromRGB(90, 120, 160);
Vv43.Thickness = 1.2;
Vv43.Transparency = 0.4;
Vv43.Parent = Vv40;
local Vv44 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\1\120\42\36\90\241\83\38\75", "\152\54\72\63\88\69\62"));
Vv44.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(80, 100, 140));
Vv44.Rotation = 45;
Vv44.Parent = Vv43;
local Vv45 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\214\239\81\209", "\60\180\164\142"));
Vv45.Size = UDim2.new(0, 26, 0, 28);
Vv45.Position = UDim2.new(0, 14, 0, 12);
Vv45.BackgroundTransparency = 1;
Vv45.ClipsDescendants = true;
Vv45.ZIndex = 3;
Vv45.Parent = Vv40;
local Vv46 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\76\4\36\34", "\114\56\62\101\73\71\141"));
Vv46.Size = UDim2.new(1, 0, 0.62, 0);
Vv46.BackgroundColor3 = Color3.fromRGB(120, 180, 255);
Vv46.BorderSizePixel = 0;
Vv46.ZIndex = 3;
Vv46.Parent = Vv45;
local Vv47 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\192\248\203\170\231\222\214", "\164\216\137\187"));
Vv47.CornerRadius = UDim.new(0, 7);
Vv47.Parent = Vv46;
local Vv48 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\244\48\191\163", "\107\178\134\81\210\198\158"));
Vv48.AnchorPoint = Vector2.new(0.5, 0.5);
Vv48.Position = UDim2.new(0.5, 0, 0.75, 0);
Vv48.Size = UDim2.new(0, 16, 0, 16);
Vv48.Rotation = 45;
Vv48.BackgroundColor3 = Color3.fromRGB(120, 180, 255);
Vv48.BorderSizePixel = 0;
Vv48.ZIndex = 3;
Vv48.Parent = Vv45;
local Vv49 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\28\131\203\175", "\202\88\110\226\166"));
Vv49.AnchorPoint = Vector2.new(0.5, 0.5);
Vv49.Position = UDim2.new(0.5, 0, 0.5, 0);
Vv49.Size = UDim2.new(0, 24, 0, 3);
Vv49.Rotation = -58;
Vv49.BackgroundColor3 = Color3.fromRGB(15, 17, 23);
Vv49.BorderSizePixel = 0;
Vv49.ZIndex = 4;
Vv49.Parent = Vv45;
local Vv50 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\38\161\248\216\205\10\144", "\170\163\111\226\151"));
Vv50.CornerRadius = UDim.new(1, 0);
Vv50.Parent = Vv49;
local Vv51 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\34\179\53\75", "\73\113\80\210\88\46\87"));
Vv51.Size = UDim2.new(1, -88, 0, 30);
Vv51.Position = UDim2.new(0, 48, 0, 10);
Vv51.BackgroundTransparency = 1;
Vv51.ZIndex = 3;
Vv51.Parent = Vv40;
local Vv52 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\41\213\6\203\128\46\200\30", "\135\225\76\173\114"));
Vv52.Size = UDim2.new(1, 0, 0, 16);
Vv52.BackgroundTransparency = 1;
Vv52.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\52\213\140", "\199\122\141\216\208\204\221");
Vv52.TextColor3 = Color3.fromRGB(240, 244, 255);
Vv52.Font = Enum.Font.GothamBold;
Vv52.TextSize = 15;
Vv52.TextXAlignment = Enum.TextXAlignment.Left;
Vv52.ZIndex = 3;
Vv52.Parent = Vv51;
local Vv53 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\207\17\253\125", "\150\205\189\112\144\24"));
Vv53.Size = UDim2.new(1, 0, 0, 13);
Vv53.Position = UDim2.new(0, 16, 0, 16);
Vv53.BackgroundTransparency = 1;
Vv53.ZIndex = 3;
Vv53.Parent = Vv51;
local Vv54 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\129\167\88\40\137\19\21\41", "\112\69\228\223\44\100\232\113"));
Vv54.Size = UDim2.new(0, 90, 1, 0);
Vv54.BackgroundTransparency = 1;
Vv54.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\245\49\51\250\251\84\175\224\95\60\238\173\97\206\157", "\230\180\127\103\179\214\28");
Vv54.TextColor3 = Color3.fromRGB(140, 150, 170);
Vv54.Font = Enum.Font.GothamMedium;
Vv54.TextSize = 9;
Vv54.TextXAlignment = Enum.TextXAlignment.Left;
Vv54.ZIndex = 3;
Vv54.Parent = Vv53;
local Vv55 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\23\94\75\225", "\128\236\101\63\38\132\33"));
Vv55.Size = UDim2.new(0, 6, 0, 6);
Vv55.Position = UDim2.new(0, 92, 0.5, -3);
Vv55.BackgroundColor3 = Color3.fromRGB(230, 70, 80);
Vv55.BorderSizePixel = 0;
Vv55.ZIndex = 3;
Vv55.Parent = Vv53;
local Vv56 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\128\50\75\164\229\202\190", "\175\204\201\113\36\214\139"));
Vv56.CornerRadius = UDim.new(1, 0);
Vv56.Parent = Vv55;
local Vv57 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\193\52\219\1\101\217\33\200\11\73", "\100\39\172\85\188"));
Vv57.Size = UDim2.new(0, 24, 0, 24);
Vv57.Position = UDim2.new(1, -34, 0, 10);
Vv57.BackgroundColor3 = Color3.fromRGB(30, 35, 48);
Vv57.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\191\122\161\129\32\190\125\173\137\55\247\55\246\217\96\251\42\225\214\96\245\45\233\214\102\250\42", "\83\205\24\217\224");
Vv57.ImageColor3 = Color3.fromRGB(120, 180, 255);
Vv57.ScaleType = Enum.ScaleType.Fit;
Vv57.ZIndex = 3;
Vv57.Parent = Vv40;
local Vv58 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\236\238\50\244\203\200\47", "\93\134\165\173"));
Vv58.CornerRadius = UDim.new(0, 7);
Vv58.Parent = Vv57;
local Vv59 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\219\242\214\40\193\185\123", "\30\222\146\161\162\90\174\210"));
Vv59.Color = Color3.fromRGB(70, 90, 130);
Vv59.Thickness = 1;
Vv59.Transparency = 0.6;
Vv59.Parent = Vv57;
Vv57.MouseEnter:Connect(function()
	Vv1:Create(Vv57, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\79\115\1\226\92\127\31\235\74\83\5\233\65\98\89", "\106\133\46\16")]=Color3.fromRGB(45, 55, 75),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\41\105\249", "\32\56\64\19\156\58")]=UDim2.new(0, 26, 0, 26),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\199\246\95\78\251\143\84", "\224\58\168\133\54\58\146")]=UDim2.new(1, -35, 0, 9)}):Play();
end);
Vv57.MouseLeave:Connect(function()
	Vv1:Create(Vv57, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {[LUAOBFUSACTOR_DECRYPT_STR_0("\123\87\72\246\114\148\136\30\87\82\104\242\121\137\149\88", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(30, 35, 48),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\130\11\240", "\175\187\235\113\149\217\188")]=UDim2.new(0, 24, 0, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\160\146\69\247\112\119\50", "\24\92\207\225\44\131\25")]=UDim2.new(1, -34, 0, 10)}):Play();
end);
Vv57.MouseButton1Click:Connect(function()
	Vv32(LUAOBFUSACTOR_DECRYPT_STR_0("\67\199\172\92\8\39\4\156\188\69\8\126\68\193\188\2\28\122\4\221\160\88\74", "\29\43\179\216\44\123"), Vv40);
end);
local Vv60 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\56\88\159\204\52\88\178\215", "\44\221\185\64"));
Vv60.Size = UDim2.new(1, -28, 0, 28);
Vv60.Position = UDim2.new(0, 14, 1, -38);
Vv60.BackgroundColor3 = Color3.fromRGB(40, 25, 30);
Vv60.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\46\193\110", "\19\97\135\40\63");
Vv60.TextColor3 = Color3.fromRGB(230, 120, 120);
Vv60.Font = Enum.Font.GothamBold;
Vv60.TextSize = 12;
Vv60.AutoButtonColor = false;
Vv60.ZIndex = 3;
Vv60.Parent = Vv40;
local Vv61 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\117\16\52\61\63\171\78", "\81\206\60\83\91\79"));
Vv61.CornerRadius = UDim.new(0, 8);
Vv61.Parent = Vv60;
local Vv62 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\130\227\102\61\204\70\161", "\196\46\203\176\18\79\163\45"));
Vv62.Color = Color3.fromRGB(120, 50, 60);
Vv62.Thickness = 1;
Vv62.Transparency = 0.4;
Vv62.Parent = Vv60;
local function Vv63(Vv64)
	if Vv64 then
		Vv1:Create(Vv60, TweenInfo.new(0.25, Enum.EasingStyle.Cubic), {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\35\125\21\35\233\224\173\44\122\61\43\247\224\170\113", "\143\216\66\30\126\68\155")]=Color3.fromRGB(20, 45, 35),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\205\21\223\230\172\219\238\184\155", "\129\202\168\109\171\165\195\183")]=Color3.fromRGB(100, 230, 160)}):Play();
		Vv1:Create(Vv62, TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\1\87\59\215\204", "\134\66\56\87\184\190\116")]=Color3.fromRGB(50, 150, 100)}):Play();
		Vv1:Create(Vv55, TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\48\10\176\30\249\46\32\50\53\42\180\21\228\51\102", "\85\92\81\105\219\121\139\65")]=Color3.fromRGB(50, 220, 130)}):Play();
	else
		Vv1:Create(Vv60, TweenInfo.new(0.25, Enum.EasingStyle.Cubic), {[LUAOBFUSACTOR_DECRYPT_STR_0("\223\178\83\78\123\205\242\166\94\65\95\208\241\188\66\22", "\191\157\211\48\37\28")]=Color3.fromRGB(40, 25, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\25\208\19\251\14\105", "\90\191\127\148\124")]=Color3.fromRGB(230, 120, 120)}):Play();
		Vv1:Create(Vv62, TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\91\136\34\24\106", "\119\24\231\78")]=Color3.fromRGB(120, 50, 60)}):Play();
		Vv1:Create(Vv55, TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\160\44\166\65\219\82\30\151\35\161\105\211\76\30\144\126", "\113\226\77\197\42\188\32")]=Color3.fromRGB(230, 70, 80)}):Play();
	end
end
Vv60.MouseButton1Click:Connect(function()
	Vv9 = not Vv9;
	Vv60.Text = (Vv9 and LUAOBFUSACTOR_DECRYPT_STR_0("\21\56", "\213\90\118\148")) or LUAOBFUSACTOR_DECRYPT_STR_0("\116\8\146", "\45\59\78\212\54");
	Vv63(Vv9);
	Vv26(Vv9);
	if Vv9 then
		if not Vv10 then
			Vv10 = Vv4.PromptTriggered:Connect(function(Vv65, Vv66)
				if (Vv66 ~= Vv3) then
				else
					Vv13();
				end
			end);
		end
	elseif Vv10 then
		Vv10:Disconnect();
		Vv10 = nil;
	end
end);
Vv60.MouseEnter:Connect(function()
	Vv1:Create(Vv60, TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\95\153\142", "\144\112\54\227\235\230\78\205")]=UDim2.new(1, -24, 0, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\39\28\245\196\82\188\38", "\59\211\72\111\156\176")]=UDim2.new(0, 12, 1, -39)}):Play();
end);
Vv60.MouseLeave:Connect(function()
	Vv1:Create(Vv60, TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\125\142\249\40", "\77\46\231\131")]=UDim2.new(1, -28, 0, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\91\165\73\174\93\185\78", "\32\218\52\214")]=UDim2.new(0, 14, 1, -38)}):Play();
end);
