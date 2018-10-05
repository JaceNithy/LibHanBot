local Libs = { }

local LoLVer = "8.19"
local ScrVer = 6

function Libs.PrintChat(desg)
    return print(desg)
end

function Libs.Lib_Update(data)
    if tonumber(data) > ScrVer then
        Libs.PrintChat("<font color=\"#1E90FF\"><b>[Shulepin]</b></font><font color=\"#8B0000\"><b>[HanLib]</b></font><font color=\"#E8E8E8\"> New version found!</font> " .. data)
        Libs.PrintChat("<font color=\"#1E90FF\"><b>[Shulepin]</b></font><font color=\"#8B0000\"><b>[HanLib]</b></font><font color=\"#E8E8E8\"> Downloading update, please wait...</font>")
        network.download_file("https://raw.githubusercontent.com/BluePrinceEB/GoS/master/HanLib.lua" .. "HanLib.lua")  
    else
        Libs.PrintChat("<font color=\"#1E90FF\"><b>[Shulepin]</b></font><font color=\"#8B0000\"><b>[HanLib]</b></font><font color=\"#E8E8E8\"> No updates found!</font>")
    end
end

network.send("https://raw.githubusercontent.com/JaceNithy/LibHanBot/master/LibUp.version", Libs.Lib_Update)

return Libs