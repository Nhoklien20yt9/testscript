memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false function name(n) if lib ~= n then  lib = n    local ranges = gg.getRangesList(lib)    if #ranges == 0 then   os.exit()  else    memFrom = ranges[1].start     memTo = ranges[#ranges]["end"] end end end function hex2tbl(hex) local ret = {} hex:gsub("%S%S", function(ch)  ret[#ret + 1] = ch   return "" end )  return ret end function original(orig) local tbl = hex2tbl(orig) local len = #tbl if len == 0 then   return end local used = len if len > lim then  used = lim end local s = ""  do do   for SPK1_8_ = 1, used do
        if SPK1_8_ ~= 1 then
          s = s .. ";"
        end
        local v = tbl[SPK1_8_]
        if v == "??" or v == "**" then
          v = "0~~0"
        end
        s = s .. v .. "r"
      end
    end
  end
  s = s .. "::" .. used
  gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
  if len > used then
    do
      for SPK1_8_ = used + 1, len do
        local v = tbl[SPK1_8_]
        if v == "??" or v == "**" then
          v = 256
        else
          v = ("0x" .. v) + 0
          if v > 127 then
            v = v - 256
          end
        end
        tbl[SPK1_8_] = v
      end
    end
  end
  local found = gg.getResultCount()
  results = {}
  local count = 0
  local checked = 0
  while not (found <= checked) do
    local all = gg.getResults(8)
    local total = #all
    local start = checked
    if total < checked + used then
      break
    end
    do
      do
        for SPK1_14_, SPK1_15_ in ipairs(all) do
          SPK1_15_.address = SPK1_15_.address + myoffset
        end
      end
    end
    gg.loadResults(all)
    while total > start do
      local good = true
      local offset = all[1 + start].address - 1
      if len > used then
        local get = {}
        do
          do
            for SPK1_17_ = lim + 1, len do
              get[SPK1_17_ - lim] = {
                address = offset + SPK1_17_,
                flags = gg.TYPE_BYTE,
                value = 0
              }
            end
          end
        end
        get = gg.getValues(get)
        do
          for SPK1_17_ = lim + 1, len do   local ch = tbl[SPK1_17_]  if ch ~= 256 and get[SPK1_17_ - lim].value ~= ch then    good = false   break   end     end   end   end  if good then    count = count + 1     results[count] = offset   checked = checked + used  else     local del = {}     do       do         for SPK1_17_ = 1, used do           del[SPK1_17_] = all[SPK1_17_ + start]         end       end     end      gg.removeResults(del)   end    start = start + used  end  end end function replaced(repl) num = num + 1  local tbl = hex2tbl(repl)  if src ~= nil then    local source = hex2tbl(src)    do    do     for SPK1_6_, SPK1_7_ in ipairs(tbl) do        if SPK1_7_ ~= "??" and SPK1_7_ ~= "**" and SPK1_7_ == source[SPK1_6_] then           tbl[SPK1_6_] = "**"        end       end     end   end   src = nil  end  local cnt = #tbl  local set = {} local s = 0 do   do     for SPK1_8_, SPK1_9_ in ipairs(results) do       do         for SPK1_13_, SPK1_14_ in ipairs(tbl) do          if SPK1_14_ ~= "??" and SPK1_14_ ~= "**" then              s = s + 1              set[s] = {              address = SPK1_9_ + SPK1_13_,              value = SPK1_14_ .. "r",              flags = gg.TYPE_BYTE             }            end         end        end      end  end end if s ~= 0 then gg.setValues(set) end ok = true end
Check_Expiration = os.time({year=2029, month=6, day=1}) >= os.time() or (function() gg.alert("┏━──────╯⌬╰──────━┓\n           ⚠️ KỊCH BẢN HẾT HẠN ⚠️             \n┗━──────╮⌬╭──────━┛"); while true do gg.alert("📃: Hãy Vào Kênh NamCyper Để Tải Script Mới Nhất Nhé") os.exit() end end)() 
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/reportnew.db')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/ymrtc_log.txt')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/tencent/TPush/Logs/')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/Free Fire Screenshot.png')
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove(gg.EXT_STORAGE .. "/com.garena.msdk/guest100067.dat")
os.remove(gg.EXT_STORAGE .. "/com.garena.msdk")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/ymrtc_log_bak.txt")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache")
os.remove(gg.EXT_STORAGE .. "/Download/test.pcm", gg.LOAD_APPEND)
gg.clearResults()
if ex == 2 then
gg.clearList()
gg.clearResults()
os.exit()
end
local﻿ file = gg.makeRequest('https://pastebin.com/raw/McRzJWUm')
if file.content == nil or file.content == '' then
os.exit()
end﻿
b = [[
31772
Var #82B7DB28|82b7db28|10|43898000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|43848000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|437a0000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|43610000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|43570000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|43960000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc]]
fileData = (gg.EXT_STORAGE .."/[###].dat")
io.output(fileData):write(b):close()
gg.loadList(fileData, gg.LOAD_APPEND)
gg.sleep(50)
r = gg.getListItems()
getReset = gg.getValues(r)
gg.clearList()
gg.clearResults()
os.remove(fileData)
b = [[
31772
Var #82B7DB28|82b7db28|10|43898000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|43848000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|437a0000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|43610000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
 Var #82B7DB28|82b7db28|10|43570000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc
Var #82B7DB28|82b7db28|10|43960000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|a9a2fc]]
b = [[
32236
Var #B9B69160|b9b69160|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|a0a160
Var #B9B77E50|b9b77e50|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|a18e50
Var #B9B9C45C|b9b9c45c|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|a3d45c
Var #B9BBC3D0|b9bbc3d0|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|a5d3d0
Var #B9BF1720|b9bf1720|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|a92720
Var #B9DBEDBC|b9dbedbc|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|c5fdbc
Var #B9ED8B24|b9ed8b24|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|d79b24
Var #B9EF92E4|b9ef92e4|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|d9a2e4
Var #BA15E93C|ba15e93c|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|fff93c
Var #BA7DF6A4|ba7df6a4|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|16806a4
Var #BA878B88|ba878b88|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|1719b88
Var #BA878E68|ba878e68|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|1719e68
Var #BACC2B04|bacc2b04|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|1b63b04
Var #BAEA4C54|baea4c54|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|1d45c54
Var #BB05A5D0|bb05a5d0|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|1efb5d0
Var #BB236564|bb236564|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|20d7564
Var #BB5AFF48|bb5aff48|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2450f48
Var #BB5E4504|bb5e4504|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2485504
Var #BB5F95C8|bb5f95c8|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|249a5c8
Var #BB60D118|bb60d118|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|24ae118
Var #BB7B2F00|bb7b2f00|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2653f00
Var #BB7D4A24|bb7d4a24|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2675a24
Var #BB7D607C|bb7d607c|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|267707c
Var #BB8BCE28|bb8bce28|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|275de28
Var #BBBC48E4|bbbc48e4|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2a658e4
Var #BBC68C30|bbc68c30|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2b09c30
Var #BBCF4DE0|bbcf4de0|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2b95de0
Var #BBFAB784|bbfab784|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2e4c784
Var #BC13CE20|bc13ce20|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2fdde20
Var #BC13CFC0|bc13cfc0|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2fddfc0
Var #BC13D19C|bc13d19c|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2fde19c
Var #BC13D564|bc13d564|10|0|0|0|0|0|r-xp|/data/data/com.dts.freefireth.activityufogamingplaywithvxp/virtual/data/app/com.dts.freefireth/lib/libil2cpp.so|2fde564]]
fileData = (gg.EXT_STORAGE .."/[###].dat")
io.output(fileData):write(b):close()
gg.loadList(fileData, gg.LOAD_APPEND)
gg.sleep(50)
r = gg.getListItems()
getReset = gg.getValues(r)
gg.clearList()
gg.clearResults()
os.remove(fileData)
gg.setVisible(true)
os.remove(gg.EXT_STORAGE .."/com.garena.msdk/guest100067.dat")
os.remove(gg.EXT_STORAGE .."/com.garena.msdk")
os.remove(gg.EXT_STORAGE .."/Download/test.pcm", gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .."/Android/data/com.dts.freefireth/files/reportnew.db", gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .."/Android/data/com.dts.freefireth/files/ymrtc_log.txt", gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/reportnew.db')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/ymrtc_log.txt')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/tencent/TPush/Logs/')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/Free Fire Screenshot.png')
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove(gg.EXT_STORAGE .. "/com.garena.msdk/guest100067.dat")
os.remove(gg.EXT_STORAGE .. "/com.garena.msdk")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
    b= [[
    5882
SPK&SRHACK #894792FC|894792fc|10|43898000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|43848000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|437a0000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|43610000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|43570000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|43960000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
]]
fileData = gg.EXT_STORAGE .. '/[###].dat'
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(50)
  r = gg.getListItems()
  getReset = gg.getValues(r)
  gg.clearList()
  os.remove(fileData) 
  b= [[
    31772
  SPK&SRHACK #82B7DB28|82b7db28|10|43898000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|43848000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|437a0000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
SPK&SRHACK #82B7DB28|82b7db28|10|43610000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
 SPK&SRHACK #82B7DB28|82b7db28|10|43570000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
  SPK&SRHACK #82B7DB28|82b7db28|10|43960000|0|0|0|0|r-xp|/data/app/com.dts.freefireth/lib/libil2cpp.so|b8eb28
]]
fileData = gg.EXT_STORAGE .. '/[###].dat'
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(50)
  r = gg.getListItems()
  getReset = gg.getValues(r)
  gg.clearList()
  os.remove(fileData) 
gg.setVisible(true)
gg.setVisible(true)
HOME=-1
function HOME()
gg.sleep(1500)
gg.toast("🇻🇳ɢᴀʀᴇɴᴀ ғʀᴇᴇ ғɪʀᴇ ᴄʜᴇᴀᴛ")
    X = gg.multiChoice({
    "❲🛡️❳ ᴍᴇɴᴜ ʙʏᴘᴀss ❲ʟᴀᴛᴇsᴛ❳",
    "❲🗼❳ ᴍᴇɴᴜ ᴀɴᴛᴇɴᴀ ❲ʟᴀᴛᴇsᴛ❳",
    "❲🎎❳ ᴍᴇɴᴜ ɴʜâɴ ᴠậᴛ ❲ʟᴀᴛᴇsᴛ❳",
    "❲🔫❳ ᴍᴇɴᴜ súɴɢ ❲ʟᴀᴛᴇsᴛ❳",
    "❲🌏❳ ᴍᴇɴᴜ ᴍᴀᴘ ❲ʟᴀᴛᴇsᴛ❳",
    "❲🎨❳ ᴍᴇɴᴜ ᴍàᴜ ❲ʟᴀᴛᴇsᴛ❳",
    "❲📸❳ ᴍᴇɴᴜ ᴛầᴍ ɴʜìɴ ❲ʟᴀᴛᴇsᴛ❳",
    "❲🎑❳ ᴍᴇɴᴜ ᴅịᴄʜ ᴄʜᴜʏểɴ ❲ʟᴀᴛᴇsᴛ❳",
    "❲🔑❳ ᴍᴇɴᴜ ᴋʜáᴄ ❲ʟᴀᴛᴇsᴛ❳",
    "🚫ᴇxɪᴛ sᴄʀɪᴘᴛ🚫"
}, nil, "●▬▬▬▬▬▬▬๑۩۩๑▬▬▬▬▬▬▬●\n⛔ Script Free Fire Vip V6\n⛔ Creator : Huỳnh Văn Liềm 😜\n⛔ Free Fire 1.62.X\n●▬▬▬▬▬▬▬๑۩۩๑▬▬▬▬▬▬▬●")
if X == nil then 
else
if X[1] == true then a1() end
if X[2] == true then a2() end
if X[3] == true then a3() end
if X[4] == true then a4() end
if X[5] == true then a5() end
if X[6] == true then a6() end
if X[7] == true then a7() end
if X[8] == true then a8() end
if X[9] == true then a9() end
if X[10] == true then EXIT() end
end
HOMEDM=-1
end

function a1()
  menu1 = gg.multiChoice({
    Eliminar .. "ғɪx ᴛự ᴄʜếᴛ ᴛʀᴏɴɢ ᴛʀậɴ🛡️",
    Cheat .. "ғɪx ʟỗɪ ᴛìᴍ ᴛʀậɴ🔎",
    Account .. "xᴏá ᴛàɪ ᴋʜᴏảɴ🗑️",
    Logs .. "xᴏá ʟᴏɢs📛",
    Ms .. "ᴘɪɴɢ 𝟶 ᴍs📶",
    Signal .. "ғɪx ʟᴀɢ 📡",
    Imei .. "ᴍở ᴋʜᴏá ɪᴍᴇɪ🌀",
    Report .. "ᴄʜốɴɢ ʙáᴏ ᴄáᴏ👨‍💻",
    Cleario .. "xᴏá ʙáᴏ ᴄáᴏ🔰",
  }, nil, "🛡️ᴍᴇɴᴜ ʙʏᴘᴀss🛡️")
  if menu1 == nil then
    HOME()
  else
    if menu1[1] == true then
      Elite()
    end
    if menu1[2] == true then
      D1()
    end
    if menu1[3] == true then
      D2()
    end
    if menu1[4] == true then
      D3()
    end
    if menu1[5] == true then
      D4()
    end
    if menu1[6] == true then
      D5()
    end
    if menu1[7] == true then
      D6()
    end
    if menu1[8] == true then
      D7()
    end
    if menu1[9] == true then
      D8()
    end
  end
end

Eliminar = "《🔴》"
function Elite()
  if Eliminar == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 13636084
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.alert([[TẮT CHỨC NĂNG KHI HOÀN THÀNH TRẬN ĐẤU]])
    gg.toast("🛡️FIX TỰ CHẾT BẬT🛡️")
    Eliminar = "《🔵》"
  elseif Eliminar == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 13636084
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("🛡️FIX TỰ CHẾT TẮT🛡️")
    Eliminar = "《🔴》"
  end
end


Cheat = "《🔴》"
function D1()
  if Cheat == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 16091148
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,80,52,36,71,8,236,220,255,192,164,152,183,120,94,94,111,47,29,9})", 1, false, 536870912, 0, -1)
    gg.refineNumber("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,79,61,37})", 1, false, 536870912, 0, -1)
    gg.getResults(10000)
    gg.editAll("R_R({83,65,103,40,11,249,31,224,199,185,215,152,127,108,143})", 1)
    gg.clearResults()
    gg.toast("🔎FIX LỖI TÌM TRẬN BẬT🔍")
    Cheat = "《🔵》"
  elseif Cheat == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 16091148
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,80,52,36,71,8,236,220,255,192,164,152,183,120,94,94,111,47,29,9})", 1, false, 536870912, 0, -1)
    gg.refineNumber("R_R({83,65,103,40,11,249,31,224,199,185,215,152,127,108,143})", 1, false, 536870912, 0, -1)
    gg.getResults(10000)
    gg.editAll("R_R({83,65,103,40,11,249,31,224,203,177,215,152,126,127,143,79,61,37})", 1)
    gg.clearResults()
    gg.toast("🔎FIX LỖI TÌM TRẬN TẮT🔍")
    Cheat = "《🔴》"
  end
end

Account = "《🔴》"
function D2()
  if Account == "《🔴》" then
    os.remove("/com.garena.msdk/guest100067.dat")
    os.remove("/com.garena.msdk")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
    os.remove("/com.garena.msdk/guest100067.dat")
    os.remove("/com.garena.msdk")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
    gg.toast("🗑️XOÁ ACCOUNT BẬT🗑️")
    Account = "《🔵》"
  elseif Account == "《🔵》" then
    os.remove("/com.garena.msdk/guest100067.dat")
    os.remove("/com.garena.msdk")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
    os.remove("/com.garena.msdk/guest100067.dat")
    os.remove("/com.garena.msdk")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/reportnew.db")
    os.remove("/Android/data/com.dts.libil2cpp.soth/files/ymrtc_log.txt")
    gg.toast("🗑️XOÁ ACCOUNT TẮT🗑️")
    Account = "《🔴》"
  end
end

Logs = "《🔴》"
function D3()
  if Logs == "《🔴》" then
    io.output("/storage/emulated/0/[###].dat")
    gg.loadList("/storage/emulated/0/[###].dat", 10)
    gg.clearList()
    gg.clearResults()
    gg.toast("📛XOÁ LOGS BẬT📛")
    Logs = "《🔵》"
  elseif Logs == "《🔵》" then
    io.output("/storage/emulated/0/[###].dat")
    gg.loadList("/storage/emulated/0/[###].dat", 0)
    gg.clearList()
    gg.clearResults()
    gg.toast("📛XOÁ LOGS TẮT📛")
    Logs = "《🔴》"
  end
end

Ms = "《🔴》"
function D4()
  if Ms == "《🔴》" then
    gg.setRanges(32)
    gg.searchNumber("1.3984959e-42;0.0;1.4012985e-45;7.0064923e-45;1.4012985e-42:17", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("-131842", 16)
    gg.clearResults()
    gg.toast("📶PING 0 MS BẬT📶")
    Ms = "《🔵》"
  elseif Ms == "《🔵》" then
    gg.setRanges(32)
    gg.searchNumber("-131842:17", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("1.3984959e-42;0.0;1.4012985e-45;7.0064923e-45;1.4012985e-42", 16)
    gg.clearResults()
    gg.toast("📶PING 0 MS TẮT📶")
    Ms = "《🔴》"
  end
end

Signal = "《🔴》"
function D5()
  if Signal == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 19681224
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("📡FIX LAG BẬT📡")
    Signal = "《🔵》"
  elseif Signal == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 19681224
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("📡FIX LAG TẮT📡")
    Signal = "《🔴》"
  end
end

Imei = "《🔴》"
function D6()
  if Imei == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22547300
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🌀 MỞ KHÓA IMEI BẬT🌀")
    Imei = "《🔵》"
  elseif Imei == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22547300
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("🌀MỞ KHOÁ IMEI TẮT🌀")
    Imei = "《🔴》"
  end
end

Report = "《🔴》"
function D7()
  if Report == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 21950752
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("👨‍💻CHỐNG BÁO CÁO BẬT👨‍💻")
    Report = "《🔵》"
  elseif Report == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 21950752
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("👨‍💻CHỐNG BÁO CÁO TẮT👨‍💻")
    Report = "《🔴》"
  end
end

Cleario = "《🔴》"
function D8()
  if Cleario == "《🔴》" then
    gg.setRanges(16392)
    gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", 1, false, 536870912, 2195501056, 2238693376)
    gg.getResultsCount()
    gg.clearResults()
    gg.toast("🔰XOÁ BÁO CÁO BẬT🔰")
    Cleario = "《🔵》"
  elseif Cleario == "《🔵》" then
    gg.setRanges(16392)
    gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", 1, false, 536870912, 2195501056, 2238693376)
    gg.getResultsCount()
    gg.clearResults()
    gg.toast("🔰XOÁ BÁO CÁO TẮT🔰")
    Cleario = "《🔴》"
  end
end

function a2()
  menu2= gg.multiChoice({
    Head .. "ᴀɴᴛᴇɴɴᴀ đầᴜ🗼",
    Hand .. "ᴀɴᴛᴇɴɴᴀ ᴛᴀʏ🗼",
  }, nil, "🗼ᴍᴇɴᴜ ᴀɴᴛᴇɴᴀ🗼")
  if menu2 == nil then
    HOME()
  else
    if menu2[1] == true then
      H1()
    end
    if menu2[2] == true then
      H2()
    end
  end
end

Head = "《🔴》"
function H1()
  if Head == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("73r;6Cr;20r;35r;00r;00r;80r;3Fr::8", 1)
    gg.getResults(1000)
    gg.editAll("73r;6Cr;20r;35r;9Ar;19r;34r;43r", 1)
    gg.clearResults()
    gg.searchNumber("E9r;C5r;4Ar;35r;00r;00r;80r;3Fr::8", 1)
    gg.getResults(1000)
    gg.editAll("E9r;C5r;4Ar;35r;9Ar;19r;34r;43r", 1)
    gg.clearResults()
    gg.toast("🗼ANTENA ĐẦU BẬT🗼")
    Head = "《🔵》"
  elseif Head == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("73r;6Cr;20r;35r;9Ar;19r;34r;43r::8", 1)
    gg.getResults(1000)
    gg.editAll("73r;6Cr;20r;35r;00r;00r;80r;3Fr", 1)
    gg.clearResults()
    gg.searchNumber("E9r;C5r;4Ar;35r;9Ar;19r;34r;43r::8", 1)
    gg.getResults(1000)
    gg.editAll("E9r;C5r;4Ar;35r;00r;00r;80r;3Fr", 1)
    gg.clearResults()
    gg.toast("🗼ANTENA ĐẦU TẮT🗼")
    Head = "《🔴》"
  end
end

Hand = "《🔴》"
function H2()
  if Hand == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;13h;13h;17h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("00h;00h;80h;3Fh::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("116", gg.TYPE_BYTE)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;85h;7Bh;F6h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("00h;00h;80h;3Fh::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("116", gg.TYPE_BYTE)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;13h;13h;17h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("00h;00h;80h;3Fh::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("116", gg.TYPE_BYTE)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;85h;7Bh;F6h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("00h;00h;80h;3Fh::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("116", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🗼ANTENA TAY BẬT🗼")
    Hand = "《🔵》"
  elseif Hand == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;13h;13h;17h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("116::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("00h;00h;80h;3Fh", gg.TYPE_BYTE)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;85h;7Bh;F6h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("116::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("00h;00h;80h;3Fh", gg.TYPE_BYTE)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;13h;13h;17h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("116::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("00h;00h;80h;3Fh", gg.TYPE_BYTE)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00h;00h;80h;3Fh;85h;7Bh;F6h;3Eh::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("116::4", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10000)
    gg.editAll("00h;00h;80h;3Fh", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🗼ANTENA TAY TẮT🗼")
    Hand = "《🔴》"
  end
end

function a3()
  menu3 = gg.multiChoice({
    Ghost .. "ᴛàɴ ʜìɴʜ👻",
    Spider .. "ʟᴇᴏ ᴛườɴɢ🏨",
    Second .. "ʙơᴍ ᴍáᴜ 𝟹 ɢɪâʏ💼",
    Giant .. "ɴɢườɪ ᴋʜổɴɢ ʟồ👹",
    Small .. "ɴɢườɪ ᴛí ʜᴏɴ👶",
    Parachute .. "ᴛʜả ᴅù ɴʜᴀɴʜ☔",
    Water .. "ᴄʜạʏ ᴅướɪ ɴướᴄ🌊",
    Lompat .. "ᴛé ᴋʜôɴɢ ᴍấᴛ ᴍáᴜ🤸",
    Falling .. "ɴʜảʏ ᴅù ɴʜᴀɴʜ☂️",
  }, nil, "🎎ᴍᴇɴᴜ ɴʜâɴ ᴠậᴛ🎎")
  if menu3 == nil then
    HOME()
  else
    if menu3[1] == true then
      E1()
    end
    if menu3[2] == true then
      E2()
    end
    if menu3[3] == true then
      E3()
    end
    if menu3[4] == true then
      E4()
    end
    if menu3[5] == true then
      E5()
    end
    if menu3[6] == true then
      E6()
    end
    if menu3[7] == true then
      E7()
      end
    if menu3[8] == true then
      E8()
      end
    if menu3[9] == true then
      E9()
    end
  end
end

Ghost = "《🔴》"
function E1()
  if Ghost == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 13778740
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("👻TÀN HÌNH BẬT👻")
    Ghost = "《🔵》"
  elseif Ghost == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 13778740
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("👻TÀN HÌNH TẮT👻")
    Ghost = "《🔴》"
  end
end

Spider = "《🔴》"
function E2()
  if Spider == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("999", 16)
    gg.getResults(9999)
    gg.editAll("998", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.70710676908;0.07999999821;0.30000001192", 16)
    gg.searchNumber("0.3", 16)
    gg.getResults(7)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🏨LEO TƯỜNG BẬT🏨")
    Spider = "《🔵》"
  elseif Spider == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("999", 16)
    gg.getResults(9999)
    gg.editAll("0.3", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🏨LEO TƯỜNG TẮT🏨")
    Spider = "《🔴》"
  end
end

Second = "《🔴》"
function E3()
  if Second == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("75D;5F;4F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("3", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("💼BƠM MÁU 3 GIÂY BẬT💼")
    Second = "《🔵》"
  elseif Second == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("75D;5F;3F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("4", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("💼BƠM MÁU 3 GIÂY TẮT💼")
    Second = "《🔴》"
  end
end

Giant = "《🔴》"
function E4()
  if Giant == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;00h;00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;40h;00h;00h;00h;00h;00h;00h;00h;00h::32", 1)
    gg.getResults(100000)
    gg.editAll("00r;00r;40r;40r;00r;00r;00r;C0r;00r;00r;00r;00r;00r;00r;00r;40r;00r;00r;00r;C0r;00r;00r;00r;40r;00r;00r;00r;00r;00r;00r;00r;00r", 1)
    gg.clearResults()
    gg.toast("👹NGƯỜI KHỔNG LỒ BẬT👹")
    Giant = "《🔵》"
  elseif Giant == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("00r;00r;40r;40r;00r;00r;00r;C0r;00r;00r;00r;00r;00r;00r;00r;40r;00r;00r;00r;C0r;00r;00r;00r;40r;00r;00r;00r;00r;00r;00r;00r;00r::32", 1)
    gg.getResults(100000)
    gg.editAll("00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;00h;00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;40h;00h;00h;00h;00h;00h;00h;00h;00h", 1)
    gg.clearResults()
    gg.toast("👹NGƯỜI KHỔNG LỒ TẮT👹")
    Giant = "《🔴》"
  end
end

Small = "《🔴》"
function E5()
  if Small == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;00h;00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;40h;00h;00h;00h;00h;00h;00h;00h;00h::32", 1)
    gg.getResults(60)
    gg.editAll("00r;00r;80r;3Fr;00r;00r;00r;C0r;00r;00r;00r;00r;00r;00r;00r;40r;00r;00r;00r;C0r;00r;00r;00r;40r;00r;00r;00r;00r;00r;00r;00r;00r", 1)
    gg.clearResults()
    gg.toast("👶NGƯỜI TÍ HON BẬT👶")
    Small = "《🔵》"
  elseif Small == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("00r;00r;80r;3Fr;00r;00r;00r;C0r;00r;00r;00r;00r;00r;00r;00r;40r;00r;00r;00r;C0r;00r;00r;00r;40r;00r;00r;00r;00r;00r;00r;00r;00r::32", 1)
    gg.getResults(60)
    gg.editAll("00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;00h;00h;00h;00h;40h;00h;00h;00h;C0h;00h;00h;00h;40h;00h;00h;00h;00h;00h;00h;00h;00h", 1)
    gg.clearResults()
    gg.toast("👶NGƯỜI TÍ HON TẮT👶")
    Small = "《🔴》"
  end
end

Parachute = "《🔴》"
function E6()
  if Parachute == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.80;-6", gg.TYPE_FLOAT, nil, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-6", gg.TYPE_FLOAT, nil, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("-3009.51", gg.TYPE_FLOAT, nil, 536870912, 0, -1)
    gg.clearResults()
    gg.toast("☔THẢ DÙ NHANH BẬT☔")
    Parachute = "《🔵》"
  elseif Parachute == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.80;-3009.51", gg.TYPE_FLOAT, nil, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-3009.51", gg.TYPE_FLOAT, nil, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("-6", gg.TYPE_FLOAT, nil, 536870912, 0, -1)
    gg.clearResults()
    gg.toast("☔THẢ DÙ NHANH TẮT☔")
    Parachute = "《🔴》"
  end
end

Water = "《🔴》"
function E7()
  if Water == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99999)
    gg.editAll("50", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌊CHẠY DƯỚI NƯỚC BẬT🌊")
    Water = "《🔵》"
  elseif Water == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99999)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌊CHẠY DƯỚI NƯỚC TẮT🌊")
    Water = "《🔴》"
  end
end

Lompat = "《🔴》"
function E8()
  if Lompat == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("100.0;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(52000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-26", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
    gg.toast("🤸TÉ KHÔNG MẤT MÁU BẬT🤸")
    Lompat = "《🔵》"
  elseif Lompat == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-26;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("-26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(52000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
    gg.toast("🤸TÉ KHÔNG MẤT MÁU TẮT🤸")
    Lompat = "《🔴》"
  end
end

Falling = "《🔴》"
function E9()
  if Falling == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 8499904
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("☂️NHẢY DÙ NHANH BẬT☂️")
    Falling = "《🔵》"
  elseif Falling == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    name("libil2cpp.so")
    myoffset = 8499904
    original("7F 45 4C 46 01 01 01 00")
    replaced("10 4C 2D E9 08 B0 8D E2")
    gg.clearResults()
    gg.toast("☂️NHẢY DÙ NHANH TẮT☂️")
    Falling = "《🔴》"
  end
end

function a4()
  menu4 = gg.multiChoice({
    Pro .. "ᴛăɴɢ độ ɴʜạʏ ᴘʀᴏ🕹️",
    Headshot .. "ᴀᴜᴛᴏ ʜᴇᴀᴅsʜᴏᴛ💀",
    Aim .. "ᴋʜᴏá ᴛâᴍ🔐",
    Recoil .. "ᴋʜôɴɢ ɢɪậᴛ🎭",
    Awm .. "ᴋʜᴏá ᴛâᴍ ᴀᴡᴍ🎯",
    Golpes .. "đấᴍ ɴʜᴀɴʜ👊",
    Delay .. "ʙắɴ đạɴ ɴʜᴀɴʜ🔥",
    Shoot .. "ʜɪệᴜ ứɴɢ ɴổ💥",
    Damage .. "ᴛăɴɢ ᴅᴀᴍᴀɢᴇ++🤺",
    "《🔴》đạɴ ᴄʜùᴍ🚿",
    Magazine .. "ʙăɴɢ đạɴ ᴠô ʜạɴ📚",
    Crosshair .. "ᴛâᴍ ʀõ🎯",
    Ammo .. "ᴠô ʜạɴ đạɴ🥌",
    Running .. "ᴛự độɴɢ ʙắɴ🌬️",
    Island .. "ɢɪếᴛ ɴɢườɪ ᴛʀᴏɴɢ sảɴʜ⛳",
    Weapon .. "ᴛʜᴀʏ đổɪ ᴠũ ᴋʜí ɴʜᴀɴʜ⏪",
    Fast .. "súɴɢ đôɪ🎋",
    Fixing .. "ғɪx ʟᴀɢ súɴɢ🛠️",
    Namun .. "ᴋʜôɴɢ sᴄᴏᴘᴇ🎇",
    Rumah .. "ᴄʜạʏ ʙắɴ🚶",
    Reload .. "ɴạᴘ đạɴ ɴʜᴀɴʜ♻️",
    Aimbot .. "ᴅí ᴛâᴍ🏹",
    Air .. "ʙắɴ ᴅướɪ ɴướᴄ🤽‍♂️",
    Tembak .. "ᴛắᴛ ᴛɪếɴɢ súɴɢ🔇",
    Waleka .. "đạɴ ᴍᴀ ᴛʜᴜậᴛ🎪",
  }, nil, "🔫ᴍᴇɴᴜ súɴɢ🔫")
  if menu4 == nil then
    HOME()
  else
    if menu4[1] == true then
      F1()
    end
    if menu4[2] == true then
      F2()
    end
    if menu4[3] == true then
      F3()
    end
    if menu4[4] == true then
      F4()
    end
    if menu4[5] == true then
      F5()
    end
    if menu4[6] == true then
      F6()
    end
    if menu4[7] == true then
      F7()
    end
    if menu4[8] == true then
      F8()
    end
    if menu4[9] == true then
      F9()
    end
    if menu4[10] == true then
      F10()
    end
    if menu4[11] == true then
      F11()
    end
    if menu4[12] == true then
      F12()
    end
    if menu4[13] == true then
      F13()
    end
    if menu4[14] == true then
      F14()
    end
    if menu4[15] == true then
      F15()
    end
    if menu4[16] == true then
      F16()
    end
    if menu4[17] == true then
      F17()
    end
    if menu4[18] == true then
      F18()
    end
    if menu4[19] == true then
      F19()
    end
    if menu4[20] == true then
      F20()
    end
    if menu4[21] == true then
      F21()
    end
    if menu4[22] == true then
      F22()
      end
    if menu4[23] == true then
      F23()
      end
    if menu4[24] == true then
      F24()
      end
    if menu4[25] == true then
      F25()
    end
  end
end

Pro = "《🔴》"
function F1()
  if Pro == "《🔴》" then
    gg.setRanges(16384)
    gg.searchNumber("300", 16, false, 536870912, 0, -5)
    gg.getResults(3)
    gg.editAll("150", 16)
    gg.clearResults()
    gg.toast("🕹️TĂNG ĐỘ NHẠY PRO BẬT🕹️")
    Pro = "《🔵》"
  elseif Pro == "《🔵》" then
    gg.setRanges(16384)
    gg.searchNumber("150", 16, false, 536870912, 0, -5)
    gg.getResults(3)
    gg.editAll("300", 16)
    gg.clearResults()
    gg.toast("🕹️TĂNG ĐỘ NHẠY PRO TẮT🕹️")
    Pro = "《🔴》"
  end
end

Headshot = "《🔴》"
function F2()
  if Headshot == "《🔴》" then
    gg.setRanges(16384)
    gg.searchNumber("75;40::5", 16, false, 536870912, 0, -1)
    gg.searchNumber("40", 16, false, 536870912, 0, -1)
    gg.getResults(20)
    gg.editAll("-2.2958874e-41", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("5.5;1.0;0.75::9", 16)
    gg.refineNumber("1", 16)
    gg.getResults(1)
    gg.editAll("-999", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("5.5;0.75::9", 16)
    gg.refineNumber("0.75", 16)
    gg.getResults(1)
    gg.editAll("-999", 16)
    gg.clearResults()
    gg.toast("💀AUTO HEADSHOT BẬT💀")
    Headshot = "《🔵》"
  elseif Headshot == "《🔵》" then
    gg.setRanges(16384)
    gg.searchNumber("75;40::5", 16, false, 536870912, 0, -1)
    gg.searchNumber("-2.2958874e-41", 16, false, 536870912, 0, -1)
    gg.getResults(20)
    gg.editAll("40", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("5.5;1.0;0.75::9", 16)
    gg.refineNumber("-999", 16)
    gg.getResults(1)
    gg.editAll("1", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("5.5;0.75::9", 16)
    gg.refineNumber("-999", 16)
    gg.getResults(1)
    gg.editAll("0.75", 16)
    gg.clearResults()
    gg.toast("💀AUTO HEADSHOT TẮT💀")
    Headshot = "《🔴》"
  end
end

Aim = "《🔴》"
function F3()
  if Aim == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1057048494", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(205, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-2000000", gg.TYPE_DWORD)
gg.clearResults()
    gg.toast("🔐KHOÁ TÂM BẬT🔐")
    Aim = "《🔵》"
  elseif Aim == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1057048494", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(205, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-2000000", gg.TYPE_DWORD)
gg.clearResults()
    gg.toast("🔐KHOÁ TÂM TẮT🔐")
    Aim = "《🔴》"
  end
end

Recoil = "《🔴》"
function F4()
  if Recoil == "《🔴》" then
    gg.setRanges(32)
    gg.searchNumber("0.01748251915", 16, false, 536870912, 0, -1)
    gg.getResults(999)
    gg.editAll("-2.2958874e-41", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1016018816", 4, false, 536870912, 0, -5)
    gg.getResults(500)
    gg.editAll("0006018816", 4)
    gg.clearResults()
    gg.toast("🎭KHÔNG GIẬT BẬT🎭")
    Recoil = "《🔵》"
  elseif Recoil == "《🔵》" then
    gg.setRanges(32)
    gg.searchNumber("0.01748251915", 16, false, 536870912, 0, -1)
    gg.getResults(999)
    gg.editAll("-2.2958874e-41", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1016018816", 4, false, 536870912, 0, -5)
    gg.getResults(500)
    gg.editAll("0006018816", 4)
    gg.clearResults()
    gg.toast("🎭KHÔNG GIẬT TẮT🎭")
    Recoil = "《🔴》"
  end
end

Awm = "《🔴》"
function F5()
  if Awm == "《🔴》" then
gg.clearResults()
io.output(fileData):write([[
19905
ZNXXX #C75F5B94|c75f5b94|10|e3a00000|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|df4354
ZNXXX #C75F5B94|c75f5b94|10|e12fff1e|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|df4358
ZNXXX #C75F5B94|c75f5b94|10|e3a00000|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|840304
ZNXXX #C75F5B98|c75f5b98|10|e12fff1e|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|840308
ZNXXX #C86D35E8|c86d35e8|10|e3a00001|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|1604820
ZNXXX #C86D35EC|c86d35ec|10|e12fff1e|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|1604824
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("KHOÁ TÂM AWM BẬT🎯")
Awm = "《🔵》"
elseif Awm == "《🔵》" then
gg.clearResults()
io.output(fileData):write([[
18005
ZNXXX #BD0965E8|bd0965e8|10|e92d4c10|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|1604820
ZNXXX #BD0965EC|bd0965ec|10|e28db008|0|0|0|0|r-xp|/data/app/com.dts.freefireth-nYEoV7Hsn71gUXZEQRLJ3Q==/lib/arm/libil2cpp.so|1604824
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("KHOÁ TÂM AWM TẮT🎯")
Awm = "《🔴》"
end
end

Golpes = "《🔴》"
function F6()
  if Golpes == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22993660
    original("7F 45 4C 46 01 01 01 00")
    replaced("8A 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("👊ĐẤM NHANH BẬT👊")
    gg.sleep(350)
    Golpes = "《🔵》"
  elseif Shoot == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22993660
    original("7F 45 4C 46 01 01 01 00")
    replaced("30 48 2D E9 08 B0 8D E2")
    gg.clearResults()
    gg.toast("👊ĐẤM NHANH TẮT👊")
    gg.sleep(350)
    Golpes = "《🔴》"
  end
end

Delay = "《🔴》"
function F7()
  if Delay == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0,3", 16)
    gg.getResults(1000)
    gg.editAll("108", 16)
    gg.clearResults()
    gg.toast("🔥RA ĐẠN NHANH BẬT🔥")
    Delay = "《🔵》"
  elseif Delay == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("108", 16)
    gg.getResults(1000)
    gg.editAll("0,3", 16)
    gg.clearResults()
    gg.toast("🔥RA ĐẠN NHANH TẮT🔥")
    Delay = "《🔴》"
  end
end

Shoot = "《🔴》"
function F8()
  if Shoot == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0AD7233CrA;0AD7233CrA;0AD7233CrA;0AD7233CrA;4C082E78rA", gg.TYPE_DWORD)
    gg.getResults(20)
    gg.editAll("1,092,608,176", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("💥HIỆU ỨNG NỔ BẬT💥")
    Shoot = "《🔵》"
  elseif Shoot == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1,092,608,176", gg.TYPE_DWORD)
    gg.getResults(20)
    gg.editAll("0AD7233CrA;0AD7233CrA;0AD7233CrA;0AD7233CrA;4C082E78rA", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("💥HIỆU ỨNG NỔ TẮT💥")
    Shoot = "《🔴》"
  end
end

Damage = "《🔴》"
function F9()
  if Damage == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00r;00r;B0r;40r;00r;00r;80r;3Fr;00r::9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9)
    gg.editAll("116", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🤺TĂNG DAMAGE++ BẬT🤺")
    Damage = "《🔵》"
  elseif Damage == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("116::9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9)
    gg.editAll("00r;00r;B0r;40r;00r;00r;80r;3Fr;00r", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🤺TĂNG DAMAGE++ TẮT🤺")
    Damage = "《🔴》"
  end
end

function F10()
gg.alert("🚿ĐẠN CHÙM🚿")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22994992
    original("7F454C4601010100")
    gg.clearResults()
    n = gg.prompt({
      "🚿ĐẠN CHÙM🚿[1;225]"
    }, {2}, {
      "number"
    })
    if n == nil then
      gg.clearResults()
      gg.setVisible(false)
    else
      Hex = string.format("%X", n[1])
      if string.len(Hex) == 1 then
        Hex = "0" .. Hex
      end
      replaced(Hex .. "00A0E31EFF2FE1")
      gg.clearResults()
      gg.setVisible(false)
    end
  end


Magazine = "《🔴》"
function F11()
  if Magazine == "《🔴》" then
    gg.alert("⛔M60\n⛔AN94\n⛔DESERT EAGLE\n⛔G18\n⛔MP5\n⛔MP40\n⛔SCAR\n⛔THOMPSON\n⛔SPAS12\n⛔M1887")
    gg.setRanges(32)
    gg.searchNumber("60D;0.18000000715F;0.18000000715F;0.18000000715F;220.0F;41.0F;71.0F", 4)
    gg.getResults(6)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("30D;0.16599999368F;0.16599999368F;220.0F;33.0F;61.0F;2.1019477e-44F", 4)
    gg.refineNumber("30", 4)
    gg.getResults(1)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("7D;0.55000001192F::5", 4)
    gg.getResults(100)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("15D;0.12999999523F::5", 4)
    gg.getResults(5)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("30D;0.08799999952F;0.08799999952F;0.08799999952F;220.0F;20.0F;39.0F;1.4012985e-44F", 4)
    gg.refineNumber("30", 4)
    gg.getResults(3)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("20D;0.0700000003;0.0700000003;220~225;11;25::65", 16, false, 536870912, 0, -1)
    gg.getResults(8)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("30D;.15;.15;220~225;30;70::65", 16)
    gg.getResults(100)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("42D;0.08299999684F::5", 16)
    gg.getResults(100)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("5D;.33;.33;25;4;20::65", 16)
    gg.getResults(100)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("2D; 0.34000000358::5", 16)
    gg.getResults(100)
    gg.editAll("99999", 4)
    gg.clearResults()
    gg.toast("📚BĂNG ĐẠN VÔ HẠN BẬT📚")
    Magazine = "《🔵》"
  elseif Magazine == "《🔵》" then
    gg.setRanges(32)
    gg.searchNumber("99999D;0.18000000715F;0.18000000715F;0.18000000715F;220.0F;41.0F;71.0F", 4)
    gg.getResults(6)
    gg.editAll("60", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("30D;0.16599999368F;0.16599999368F;220.0F;33.0F;61.0F;2.1019477e-44F", 4)
    gg.refineNumber("99999", 4)
    gg.getResults(1)
    gg.editAll("30", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("99999D;0.55000001192F::5", 4)
    gg.getResults(100)
    gg.editAll("7", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("99999D;0.12999999523F::5", 4)
    gg.getResults(5)
    gg.editAll("15", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("30D;0.08799999952F;0.08799999952F;0.08799999952F;220.0F;20.0F;39.0F;1.4012985e-44F", 4)
    gg.refineNumber("99999", 4)
    gg.getResults(3)
    gg.editAll("30", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("99999D;0.0700000003;0.0700000003;220~225;11;25::65", 16, false, 536870912, 0, -1)
    gg.getResults(8)
    gg.editAll("20", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("99999D;.15;.15;220~225;30;70::65", 16)
    gg.getResults(100)
    gg.editAll("30", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("99999D;0.08299999684F::5", 16)
    gg.getResults(100)
    gg.editAll("42", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("99999D;.33;.33;25;4;20::65", 16)
    gg.getResults(100)
    gg.editAll("5", 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("99999D; 0.34000000358::5", 16)
    gg.getResults(100)
    gg.editAll("2", 4)
    gg.clearResults()
    gg.toast("📚BĂNG ĐẠN VÔ HẠN TẮT📚")
    Magazine = "《🔴》"
  end
end

Crosshair = "《🔴》"
function F12()
  if Crosshair == "《🔴》" then
    gg.setRanges(32)
    gg.searchNumber("00r;00r;00r;3Fr;00r;00r;80r;3Fr;00r;00r;00r;00r;00r;00r;00r;00r;00r;00r;00r;3Fr::20", 1)
    gg.getResults(20)
    gg.editAll("7Fr;45r;4Cr;46r;01r;01r;01r;00r", 1)
    gg.clearResults()
    gg.toast("🎯TÂM RÕ BẬT🎯")
    Crosshair = "《🔵》"
  elseif Crosshair == "《🔵》" then
    gg.setRanges(32)
    gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::20", 1)
    gg.getResults(20)
    gg.editAll("00r;00r;00r;3Fr;00r;00r;80r;3Fr;00r;00r;00r;00r;00r;00r;00r;00r;00r;00r;00r;3Fr", 1)
    gg.clearResults()
    gg.toast("🎯TÂM RÕ TẮT🎯")
    Crosshair = "《🔴》"
  end
end

Ammo = "《🔴》"
function F13()
  if Ammo == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 12775716
    original("7F 45 4C 46 01 01 01 00")
    replaced("03 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🥌VÔ HẠN ĐẠN BẬT🥌")
    Ammo = "《🔵》"
  elseif Ammo == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 12775716
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 00 D0 E5 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🥌VÔ HẠN ĐẠN TẮT🥌")
    Ammo = "《🔴》"
  end
end

Running = "《🔴》"
function F14()
  if Running == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22992140
    original("7F 45 4C 46 01 01 01 00")
    replaced("02 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🌬️TỰ ĐỘNG BẮN BẬT🌬️")
    Running = "《🔵》"
  elseif Running == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22992140
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 10 A0 E1 38 20 91 E5")
    gg.clearResults()
    gg.toast("🌬️TỰ ĐỘNG BẮN TẮT🌬️")
    Running = "《🔴》"
  end
end

Island = "《🔴》"
function F15()
  if Island == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 13609368
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("⛳GIẾT NGƯỜI TRONG SẢNH BẬT⛳")
    Island = "《🔵》"
  elseif Island == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 13609368
    original("7F 45 4C 46 01 01 01 00")
    replaced("01 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("⛳GIẾT NGƯỜI TRONG SẢNH TẮT⛳")
    Island = "《🔴》"
  end
end

Weapon = "《🔴》"
function F16()
  if Weapon == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8734064
    original("7F 45 4C 46 01 01 01 00")
    replaced("01 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("⏪THAY ĐỔI VŨ KHÍ NHANH BẬT⏩")
    Weapon = "《🔵》"
  elseif Weapon == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8734064
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("⏪THAY ĐỔI VŨ KHÍ NHANH TẮT⏩")
    Weapon = "《🔴》"
  end
end

Fast = "《🔴》"
function F17()
  if Fast == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22991524
    original("7F 45 4C 46 01 01 01 00")
    replaced("0F 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 23004912
    original("7F 45 4C 46 01 01 01 00")
    replaced("02 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🎋SÚNG ĐÔI BẬT🎋")
    Fast = "《🔵》"
  elseif Fast == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22991524
    original("7F 45 4C 46 01 01 01 00")
    replaced("F8 00 90 E5 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 23004912
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 08 B0 8D E2")
    gg.clearResults()
    gg.toast("🎋SÚNG ĐÔI TẮT🎋")
    Fast = "《🔴》"
  end
end

Fixing = "《🔴》"
function F18()
  if Fixing == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 23059412
    original("7F 45 4C 46 01 01 01 00")
    replaced("12 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🛠️FIX LAG SÚNG BẬT🛠️")
    Fixing = "《🔵》"
  elseif Fixing == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 23059412
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("🛠️FIX LAG SÚNG TẮT🛠️")
    Fixing = "《🔴》"
  end
end

Namun = "《🔴》"
function F19()
  if Namun == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8697776
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🎇KHÔNG SCOPE BẬT🎇")
    Namun = "《🔵》"
  elseif Namun == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8697776
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("🎇KHÔNG SCOPE TẮT🎇")
    Namun = "《🔴》"
  end
end

Rumah = "《🔴》"
function F20()
  if Rumah == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8661412
    original("7F 45 4C 46 01 01 01 00")
    replaced("01 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🚶CHẠY BẮN BẬT🚶")
    Rumah = "《🔵》"
  elseif Rumah == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8661412
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("🚶CHẠY BẮN TẮT🚶")
    Rumah = "《🔴》"
  end
end

Reload = "《🔴》"
function F21()
  if Reload == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22995668
    original("7F 45 4C 46 01 01 01 00")
    replaced("12 03 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("♻️NẠP ĐẠN NHANH BẬT♻️")
    Reload = "《🔵》"
  elseif Reload == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22995668
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("♻️NẠP ĐẠN NHANH TẮT♻️")
    Reload = "《🔴》"
  end
end

Aimbot = "《🔴》"
function F22()
  if Aimbot == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22991568
    original("7F 45 4C 46 01 01 01 00")
    replaced("79 04 44 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🏹DÍ TÂM BẬT🏹")
    Aimbot = "《🔵》"
  elseif Aimbot == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 22991568
    original("7F 45 4C 46 01 01 01 00")
    replaced("60 00 90 E5 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🏹DÍ TÂM TẮT🏹")
    Aimbot = "《🔴》"
  end
end

Air = "《🔴》"
function F23()
  if Air == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8963880
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🤽‍♂️BẮN DƯỚI NƯỚC BẬT🤽‍♂️")
    Air = "《🔵》"
  elseif Air == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8963880
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("🤽‍♂️BẮN DƯỚI NƯỚC TẮT🤽‍♂️")
    Air = "《🔴》"
  end
end

Tembak = "《🔴》"
function F24()
  if Tembak == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 23046080
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🔇TẮT TIẾNG SÚNG BẬT🔇")
    Tembak = "《🔵》"
  elseif Tembak == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 23046080
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("🔇TẮT TIẾNG SÚNG TẮT🔇")
    Tembak = "《🔴》"
  end
end

Waleka = "《🔴》"
function F25()
  if Waleka == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1.30928164e25;-3.69511377e20;1.25206298e-38;0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.processResume()
    gg.toast("🎪ĐẠN MA THUẬT BẬT🎪")
    Waleka = "《🔵》"
  elseif Waleka == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1", gg.TYPE_FLOAT)
    gg.refineNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("-1.30928164e25;-3.69511377e20;1.25206298e-38;0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.clearResults()
    gg.processResume()
    gg.toast("🎪ĐẠN MA THUẬT TẮT🎪")
    Waleka = "《🔴》"
  end
end

function a5()
  menu5 = gg.multiChoice({
    Mode .. "ᴛʀờɪ ᴛốɪ🌃",
    Tree .. "xᴏá ᴄâʏ🌲",
    Land .. "xᴏá đấᴛ⛱️",
    Clouds .. "ᴍàᴜ đáᴍ ᴍâʏ☁️",
    Grass .. "xᴏá ᴄỏ🌿",
    Colour .. "ᴍàᴜ ᴍᴀɢɪᴄ🌈",
    Fences .. "xᴏá ʜàɴɢ ʀàᴏ🏪",
    Map .. "ᴛʜᴀʏ đổɪ ᴍᴀᴘ📍"
  }, nil, "🌏ᴍᴇɴᴜ ᴍᴀᴘ🌏")
  if menu5 == nil then
    HOME()
  else
    if menu5[1] == true then
      G1()
    end
    if menu5[2] == true then
      G2()
    end
    if menu5[3] == true then
      G3()
    end
    if menu5[4] == true then
      G4()
    end
    if menu5[5] == true then
      G5()
    end
    if menu5[6] == true then
      G6()
    end
    if menu5[7] == true then
      G7()
    end
    if menu5[8] == true then
      G8()
    end
  end
end

Mode = "《🔴》"
function G1()
  if Mode == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(".57735025883;.01;1.0e-6::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.0e-6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌃TRỜI TỐI BẬT🌃")
    Mode = "《🔵》"
  elseif Mode == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(".57735025883;.01;1.0e-6::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1.0e-6", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌃TRỜI TỐI TẮT🌃")
    Mode = "《🔴》"
  end
end

Tree = "《🔴》"
function G2()
  if Tree == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("60", gg.TYPE_FLOAT)
    gg.getResults(40)
    gg.editAll("-50", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌲XOÁ CÂY BẬT🌲")
    Tree = "《🔵》"
  elseif Tree == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-50", gg.TYPE_FLOAT)
    gg.getResults(40)
    gg.editAll("60", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌲XOÁ CÂY TẮT🌲")
    Tree = "《🔴》"
  end
end

Land = "《🔴》"
function G3()
  if Land == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("98.0;1.0;100.0::9", 16, false, 536870912, 0, -1)
    gg.refineNumber("1.0", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("50", 16)
    gg.clearResults()
    gg.toast("⛱️XOÁ ĐẤT BẬT⛱️")
    Land = "《🔵》"
  elseif Land == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("98.0;-1;100.0::9", 16, false, 536870912, 0, -1)
    gg.refineNumber("50", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("1.0", 16)
    gg.clearResults()
    gg.toast("⛱️XOÁ ĐẤT TẮT⛱️")
    Land = "《🔴》"
  end
end

Clouds = "《🔴》"
function G4()
  if Clouds == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("2.5", gg.TYPE_FLOAT, nil, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1500)
    gg.editAll("-2.2958874e-41", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("☁️MÀU ĐÁM MÂY BẬT☁️")
    Clouds = "《🔵》"
  elseif Clouds == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("-2.2958874e-41", gg.TYPE_FLOAT, nil, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1500)
    gg.editAll("2.5", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("☁️MÀU ĐÁM MÂY TẮT☁️")
    Clouds = "《🔴》"
  end
end

Grass = "《🔴》"
function G5()
  if Grass == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("8.4077908e-45;100;300::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("-1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌿XOÁ CỎ BẬT🌿")
    Grass = "《🔵》"
  elseif Grass == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("8.4077908e-45;-1;300::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("100", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🌿XOÁ XỎ TẮT🌿")
    Grass = "《🔴》"
  end
end

Colour = "《🔴》"
function G6()
  if Colour == "《🔴》" then
    gg.setRanges(4)
    gg.searchNumber("CEr;CDr;4Dr;3Fr;DBr;DAr;5Ar;3Fr;E4r;E3r;63r;3Fr;00r;00r;80r;3Fr;00r;00r;C0r;3Fr::20", 1)
    gg.refineNumber("CEr;CDr;4Dr;3Fr;DBr;DAr;5Ar;3Fr;E4r;E3r;63r;3Fr::12", 1)
    gg.getResults(1000)
    gg.editAll("CEr;CDr;4Dr;3Fr;00r;C0r;79r;44r;E4r;E3r;63r;3Fr", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("00r;00r;80r;3Fr;00r;00r;00r;00r;00r;00r;00r;00r;9Ar;99r;19r;3Fr;00r;00r;00r;40r;9Ar;99r;99r;3Er;00r;00r;80r;3Fr;00r;00r;80r;3Fr::32", 1)
    gg.refineNumber("00r;00r;00r;40r::4", 1)
    gg.getResults(1000)
    gg.editAll("00r;00r;20r;41r", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;66r;66r;A6r;3Fr::20", 1)
    gg.getResults(80)
    gg.editAll("00r;00r;80r;3Fr;00r;C0r;79r;44r;00r;00r;C6r;C2r;00r;00r;80r;3Fr;66r;66r;A6r;3Fr", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;66r;66r;26r;3Fr::20", 1)
    gg.getResults(80)
    gg.editAll("00r;00r;C6r;42r;00r;00r;80r;3Fr;00r;00r;C6r;42r;00r;00r;80r;3Fr;66r;66r;26r;3Fr", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("DEr;DDr;5Dr;3Fr;CBr;CAr;4Ar;3Fr;ABr;AAr;2Ar;3Fr;00r;00r;80r;3Fr;66r;66r;E6r;3Fr::20", 1)
    gg.getResults(80)
    gg.editAll("DEr;DDr;5Dr;3Fr;00r;00r;C6r;C2r;00r;00r;C6r;42r;00r;00r;80r;3Fr;66r;66r;E6r;3F", 1)
    gg.clearResults()
    gg.toast("🌈MÀU MAGIC BẬT🌈")
    Colour = "《🔵》"
  elseif Colour == "《🔵》" then
    gg.setRanges(4)
    gg.searchNumber("CEr;CDr;4Dr;3Fr;DBr;DAr;5Ar;3Fr;E4r;E3r;63r;3Fr;00r;00r;80r;3Fr;00r;00r;C0r;3Fr::20", 1)
    gg.refineNumber("CEr;CDr;4Dr;3Fr;00r;C0r;79r;44r;E4r;E3r;63r;3Fr::12", 1)
    gg.getResults(1000)
    gg.editAll("CEr;CDr;4Dr;3Fr;DBr;DAr;5Ar;3Fr;E4r;E3r;63r;3Fr", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("00r;00r;80r;3Fr;00r;00r;00r;00r;00r;00r;00r;00r;9Ar;99r;19r;3Fr;00r;00r;00r;40r;9Ar;99r;99r;3Er;00r;00r;80r;3Fr;00r;00r;80r;3Fr::32", 1)
    gg.refineNumber("00r;00r;20r;41r::4", 1)
    gg.getResults(1000)
    gg.editAll("00r;00r;00r;40r", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("00r;00r;80r;3Fr;00r;C0r;79r;44r;00r;00r;C6r;C2r;00r;00r;80r;3Fr;66r;66r;A6r;3Fr::20", 1)
    gg.getResults(80)
    gg.editAll("00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;66r;66r;A6r;3Fr", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("00r;00r;C6r;42r;00r;00r;80r;3Fr;00r;00r;C6r;42r;00r;00r;80r;3Fr;66r;66r;26r;3Fr::20", 1)
    gg.getResults(80)
    gg.editAll("00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;66r;66r;26r;3Fr", 1)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("DEr;DDr;5Dr;3Fr;00r;00r;C6r;C2r;00r;00r;C6r;42r;00r;00r;80r;3Fr;66r;66r;E6r;3F::20", 1)
    gg.getResults(80)
    gg.editAll("DEr;DDr;5Dr;3Fr;CBr;CAr;4Ar;3Fr;ABr;AAr;2Ar;3Fr;00r;00r;80r;3Fr;66r;66r;E6r;3Fr", 1)
    gg.clearResults()
    gg.toast("🌈MÀU MAGIC TẮT🌈")
    Colour = "《🔴》"
  end
end

Fences = "《🔴》"
function G7()
  if Fences == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 20765868
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🏪XOÁ HÀNG RÀO BẬT🏪")
    Fences = "《🔵》"
  elseif Fences == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 20765868
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C BO 8D E2")
    gg.clearResults()
    gg.toast("🏪XOÁ HÀNG RÀO TẮT🏪")
    Fences = "《🔴》"
  end
end

Map = "《🔴》"
function G8()
  if Map == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 41905308
    original("7F 45 4C 46 01 01 01 00")
    replaced("01 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("📍THAY ĐỔI MAP BẬT📍")
    Map = "《🔵》"
  elseif Map == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 41905308
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("📍THAY ĐỔI MAP TẮT📍")
    Map = "《🔴》"
  end
end

function a6()
  menu6 = gg.multiChoice({
    Red .. "ᴍᴀᴘ ᴍàᴜ đỏ🔴",
    Blue .. "ᴍᴀᴘ ᴍàᴜ xᴀɴʜ ɴướᴄ ʙɪểɴ🔵",
    Green .. "ᴍᴀᴘ ᴍàᴜ xᴀɴʜ ʟá📗",
    Blacktree .. "ᴍᴀᴘ ᴍàᴜ xᴀɴʜ ʟá ᴄâʏ🌳",
    House .. "ɴʜà ᴍàᴜ đᴇɴ🖤",
    Body .. "ɴɢườɪ ᴛʀắɴɢ ʜᴅ🐇",
  }, nil, "🎨ᴍᴇɴᴜ ᴍàᴜ🎨")
  if menu6 == nil then
    HOME()
  else
    if menu6[1] == true then
      I1()
    end
    if menu6[2] == true then
      I2()
    end
    if menu6[3] == true then
      I3()
    end
    if menu6[4] == true then
      I4()
    end
    if menu6[5] == true then
      I5()
    end
    if menu6[6] == true then
      I6()
    end
  end
end

Red = "《🔴》"
function I1()
  if Red == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("67r;66r;4Er;3Fr;10r;4Cr;4Ar;3Fr;27r;27r;39r;3Fr;9Ar;99r;59r;3Fr;00r;00r;20r;41r::20", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(4)
    gg.editAll("100", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🔴MAP MÀU ĐỎ BẬT🔴")
    Red = "《🔵》"
  elseif Red == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("100::20", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(4)
    gg.editAll("67r;66r;4Er;3Fr;10r;4Cr;4Ar;3Fr;27r;27r;39r;3Fr;9Ar;99r;59r;3Fr;00r;00r;20r;41r", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🔴MAP MÀU ĐỎ TẮT🔴")
    Red = "《🔴》"
  end
end

Blue = "《🔴》"
function I2()
  if Blue == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.80625003576;0.79022312164;0.72325366735;0.85000002384;10.0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("0.7232536673", gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("50", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🔵MAP MÀU XANH NƯỚC BIỂN BẬT🔵")
    Blue = "《🔵》"
  elseif Blue == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.80625003576;0.79022312164;0.72325366735;0.85000002384;10.0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("50", gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("0.7232536673", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🔵MAP MÀU XANH NƯỚC BIỂN TẮT🔵")
    Blue = "《🔴》"
  end
end

Green = "《🔴》"
function I3()
  if Green == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.80625003576F;0.79022312164F;0.72325366735F;0.85000002384F;10.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("0.79022312164", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("999999999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("📗MAP MÀU XANH LÁ BẬT📗")
    Green = "《🔵》"
  elseif Green == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("999999999", gg.TYPE_FLOAT)
    gg.refineNumber("0.79022312164", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("0.80625003576F;0.79022312164F;0.72325366735F;0.85000002384F;10.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.clearResults()
    gg.toast("📗MAP MÀU XANH LÁ TẮT📗")
    Green = "《🔴》"
  end
end

Blacktree = "《🔴》"
function I4()
  if Blacktree == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("67r;66r;4Er;3Fr;10r;4Cr;4Ar;3Fr;27r;27r;39r;3Fr;9Ar;99r;59r;3Fr;00r;00r;20r;41r::20", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(12)
    gg.editAll("50", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🌳MAP MÀU XANH LÁ CÂY BẬT🌳")
    Blacktree = "《🔵》"
  elseif Blacktree == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("50::20", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(12)
    gg.editAll("67r;66r;4Er;3Fr;10r;4Cr;4Ar;3Fr;27r;27r;39r;3Fr;9Ar;99r;59r;3Fr;00r;00r;20r;41r", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🌳MAP MÀU XANH LÁ CÂY TẮT🌳")
    Blacktree = "《🔴》"
  end
end

House = "《🔴》"
function I5()
  if House == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 43073264
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🖤NHÀ MÀU ĐEN BẬT🖤")
    House = "《🔵》"
  elseif House == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 43073264
    original("7F 45 4C 46 01 01 01 00")
    replaced("08 10 80 E5 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🖤NHÀ MÀU ĐEN TẮT🖤")
    House = "《🔴》"
  end
end

Body = "《🔴》"
function I6()
  if Body == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8498280
    original("7F 45 4C 46 01 01 01 00")
    replaced("01 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 29674268
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 BB E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🐇NGƯỜI TRẮNG HD BẬT🐇")
    Body = "《🔵》"
  elseif Body == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 8498280
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 29674268
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("🐇NGƯỜI TRẮNG HD TẮT🐇")
    Body = "《🔴》"
  end
end

function a7()
  menu7 = gg.multiChoice({
    Camera .. "ᴛầᴍ ɴʜìɴ ɪᴘᴀᴅ📸",
    Wide .. "ᴛầᴍ ɴʜìɴ ʀộɴɢ📸",
  }, nil, "📸ᴍᴇɴᴜ ᴛầᴍ ɴʜìɴ📸")
  if menu7 == nil then
    HOME()
  else
    if menu7[1] == true then
      L1()
    end
    if menu7[2] == true then
      L2()
    end
  end
end

Camera = "《🔴》"
function L1()
  if Camera == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 14208544
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("📸TẦM NHÌN IPAD BẬT📸")
    Camera = "《🔵》"
  elseif Camera == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 14208544
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("📸TẦM NHÌN IPAD TẮT📸")
    Camera = "《🔴》"
  end
end

Wide = "《🔴》"
function L2()
  if Wide == "《🔴》" then
    gg.clearResults()
io.output(fileData):write([[
32021
Trẩu Mr la Mr Hà ăn cắp mã|d3b6fdd0|10|437a0000|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|209dd0
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
    gg.toast("📸TẦM NHÌN RỘNG BẬT📸")
    Wide = "《🔵》"
  elseif Wide == "《🔵》" then
    gg.clearResults()
io.output(fileData):write([[
32021
Trẩu Mr la Mr Hà ăn cắp mã|d3b6fdd0|10|437a0000|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|209dd0
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
    gg.toast("📸TẦM NHÌN RỘNG TẮT📸")
    Wide = "《🔴》"
  end
end

function a8()
  menu8 = gg.multiChoice({
    Telekill1 .. "ᴅịᴄʜ ᴄʜᴜʏểɴ ᴄʜạʏ🎃",
    Telekill2 .. "ᴅịᴄʜ ᴄʜᴜʏểɴ ɴʜᴀɴʜ🎃",
    Telekill3 .. "ᴅịᴄʜ ᴄʜᴜʏểɴ ᴄʜậᴍ🎃",
    Telekill4 .. "ᴅịᴄʜ ᴄʜᴜʏểɴ ʟɪᴛᴇ🎃",
    Telekill5 .. "ᴅịᴄʜ ᴄʜᴜʏểɴ xᴇ🎃"
  }, nil, "🎑ᴍᴇɴᴜ ᴅịᴄʜ ᴄʜᴜʏểɴ🎑")
  if menu8 == nil then
    HOME()
  else
    if menu8[1] == true then
      O1()
    end
    if menu8[2] == true then
      O2()
    end
    if menu8[3] == true then
      O3()
    end
    if menu8[4] == true then
      O4()
    end
    if menu8[5] == true then
      O5()
    end
  end
end

Telekill1 = "《🔴》"
function O1()
  if Telekill1 == "《🔴》" then
    gg.setRanges(16384)
    gg.searchNumber("100", 16)
    gg.getResults(10000)
    gg.editAll("99999", 16)
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN CHẠY BẬT🎃")
    Telekill1 = "《🔵》"
  elseif Telekill1 == "《??》" then
    gg.setRanges(16384)
    gg.searchNumber("99999", 16)
    gg.getResults(10000)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN CHẠY TẮT🎃")
    Telekill1 = "《🔴》"
  end
end

Telekill2 = "《🔴》"
function O2()
  if Telekill2 == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("100", 16)
    gg.getResults(10000)
    gg.editAll("1500", 16)
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN NHANH BẬT🎃")
    Telekill2 = "《🔵》"
  elseif Telekill2 == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1500", 16)
    gg.getResults(10000)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN NHANH TẮT🎃")
    Telekill2 = "《🔴》"
  end
end

Telekill3 = "《🔴》"
function O3()
  if Telekill3 == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("100", 16)
    gg.getResults(10000)
    gg.editAll("300", 16)
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN CHẬM BẬT🎃")
    Telekill3 = "《🔵》"
  elseif Telekill3 == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("300", 16)
    gg.getResults(10000)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN CHẬM TẮT🎃")
    Telekill3 = "《🔴》"
  end
end

Telekill4 = "《🔴》"
function O4()
  if Telekill4 == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 33626492
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 FA 43")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 33627492
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 FA 43")
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN LITE BẬT🎃")
    Telekill4 = "《🔵》"
  elseif Telekill4 == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 33626492
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 33627492
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN LITE TẮT🎃")
    Telekill4 = "《🔴》"
  end
end

Telekill5 = "《🔴》"
function O5()
  if Telekill5 == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 33627644
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN XE BẬT🎃")
    Telekill5 = "《🔵》"
  elseif Telekill5 == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 33627644
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 48 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("🎃DỊCH CHUYỂN XE TẮT🎃")
    Telekill5 = "《🔴》"
  end
end

function a9()
  menu9 = gg.multiChoice({
    Speed .. "ᴄʜạʏ ɴʜᴀɴʜ🏃",
    Stone .. "xᴜʏêɴ đá🗿",
    Speed5 .. "ᴄʜạʏ ɴʜᴀɴʜ 𝟻x🏃",
    Jump5 .. "ɴʜảʏ ᴄᴀᴏ 𝟻x🤾",
    Untuk .. "độɴ ᴛʜổ ɴɢườɪ🧜‍♂️",
    Eagle .. "ᴍắᴛ đạɪ ʙàɴɢ🦅",
    Undero .. "xᴇ độɴ ᴛʜổ🚖",
    Lite .. "xᴜʏêɴ ɴʜà (ᴀᴜᴛᴏ ʙᴀɴᴅ)🏚️",
    Walcar .. "xᴇ xᴜʏêɴ ɴʜà🏘️",
    Cariao .. "xᴇ ᴄʜạʏ ɴʜᴀɴʜ🚙",
    Zipline .. "đᴜ ᴄáᴘ ɴʜᴀɴʜ🎢",
  }, nil, "🔑ᴍᴇɴᴜ ᴋʜáᴄ🔑")
  if menu9 == nil then
    HOME()
  else
    if menu9[1] == true then
      N1()
    end
    if menu9[2] == true then
      N2()
    end
    if menu9[3] == true then
      N3()
    end
    if menu9[4] == true then
      N4()
    end
    if menu9[5] == true then
      N5()
    end
    if menu9[6] == true then
      N6()
    end
    if menu9[7] == true then
      N7()
    end
    if menu9[8] == true then
      N8()
      end
    if menu9[9] == true then
      N9()
      end
     if menu9[10] == true then
      N10()
    end
     if menu9[11] == true then
      N11()
      end
      if menu9[12] == true then
      N12()
    end
  end
end

Speed = "《🔴》"
function N1()
if Speed == "《🔴》"  then
gg.clearResults()
io.output(fileData):write([[
5153
ZNXXX #D2D4E074|d2d4e074|10|3e3126e9|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|33d074
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("🏃CHẠY NHANH BẬT🏃")
Speed = "《🔵》"
elseif Speed == "《🔵》"  then
gg.clearResults()
io.output(fileData):write([[
5153
ZNXXX #D2D4E074|d2d4e074|10|3e112e0b|0|0|0|0|r-xp|/data/app/com.dts.freefireth-1/lib/arm/libunity.so|33d074
]]):close()
gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
os.remove(fileData)
gg.sleep(50)
gg.clearList()
gg.clearResults()
gg.toast("🚶CHẠY NHANH TẮT🚶")
Speed = "《🔴》"
end
end

Stone = "《🔴》"
function N2()
  if Stone == "《🔴》" then
    io.output(fileData):write([[
5678
Var #C6B594A8|c6b594a8|10|0|0|0|0|0|r-xp|/data/app/com.dts.freefireth-SABci2ODPO3AQOkvz0jeAw==/lib/arm/libunity.so|ad74a8
Var #C6B594B8|c6b594b8|10|0|0|0|0|0|r-xp|/data/app/com.dts.freefireth-SABci2ODPO3AQOkvz0jeAw==/lib/arm/libunity.so|ad74b8
]]):close()
    gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
    gg.sleep(50)
    gg.clearList()
    gg.clearResults()
    gg.toast("🗿XUYÊN ĐÁ BẬT🗿")
    Stone = "《🔵》"
  elseif Stone == "《🔵》" then
    io.output(fileData):write([[
5678
Var #C6B594A8|c6b594a8|10|cafffe57|0|0|0|0|r-xp|/data/app/com.dts.freefireth-SABci2ODPO3AQOkvz0jeAw==/lib/arm/libunity.so|ad74a8
Var #C6B594B8|c6b594b8|10|cafffe53|0|0|0|0|r-xp|/data/app/com.dts.freefireth-SABci2ODPO3AQOkvz0jeAw==/lib/arm/libunity.so|ad74b8
]]):close()
    gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
    gg.sleep(50)
    gg.clearList()
    gg.clearResults()
    gg.toast("🗿XUYÊN ĐÁ TẮT🗿")
    Stone = "《🔴》"
  end
end

Speed5 = "《🔴》"
function N3()
  if Speed5 == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("3.25F;1.39999997616F;1.89999997616F;0.80000001192F;0.5F;12.0F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("3.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(240, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("4.77", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🏃CHẠY NHANH 5X BẬT🏃")
    Speed5 = "《🔵》"
  elseif Speed5 == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("4.77;F;1.39999997616F;1.89999997616F;0.80000001192F;0.5F;12.0F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("4.77", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(240, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("3.25", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("🏃CHẠY NHANH 5X TẮT🏃")
    Speed5 = "《🔴》"
  end
end

Jump5 = "《🔴》"
function N4()
  if Jump5 == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("CDr;CCr;CCr;BDr;33r;33r;33r;3Fr;00r;00r;40r;40r::12", gg.TYPE_BYTE)
    gg.getResults(12)
    gg.editAll("55r;77r;C8r;C9r;A4r;90r;DDr;3Fr;99r;88r;A0r;57r", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🤾NHẢY CAO 5X BẬT🤾")
    Jump5 = "《🔵》"
  elseif Jump5 == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("55r;77r;C8r;C9r;A4r;90r;DDr;3Fr;99r;88r;A0r;57r::12", gg.TYPE_BYTE)
    gg.getResults(12)
    gg.editAll("CDr;CCr;CCr;BDr;33r;33r;33r;3Fr;00r;00r;40r;40r", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🤾NHẢY CAO 5X TẮT🤾")
    Jump5 = "《🔴》"
  end
end

Untuk = "《??》"
function N5()
  if Untuk == "《🔴》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5000)
    gg.editAll("5.2111", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.toast("🧜‍♂️ĐỘN THỔ NGƯỜI BẬT🧜‍♂️")
    Untuk = "《🔵》"
  elseif Untuk == "《🔵》" then
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("5.2111", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5000)
    gg.editAll("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.toast("🧜‍♂️ĐỘN THỔ NGƯỜI TẮT🧜‍♂️")
    Untuk = "《🔴》"
  end
end

Eagle = "《🔴》"
function N6()
  if Eagle == "《??》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1Fr;85r;ABr;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;CDr;CCr;CCr;3Fr::16", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(16)
    gg.editAll("1Fr;85r;ABr;3Fr;00r;00r;90r;41r;00r;00r;90r;41r;CDr;CCr;CCr;3Fr", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🦅MẮT ĐẠI BÀNG BẬT🦅")
    Eagle = "《🔵》"
  elseif Eagle == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1Fr;85r;ABr;3Fr;00r;00r;90r;41r;00r;00r;90r;41r;CDr;CCr;CCr;3Fr::16", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(16)
    gg.editAll("1Fr;85r;ABr;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr;CDr;CCr;CCr;3Fr", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🦅MẮT ĐẠI BÀNG TẮT🦅")
    Eagle = "《🔴》"
  end
end

Undero = "《🔴》"
function N7()
  if Undero == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1000", 16)
    gg.getResults(150)
    gg.editAll("2500", 16)
    gg.clearResults()
    gg.toast("🚖XE ĐỘN THỔ BẬT🚖")
    Undero = "《🔵》"
  elseif Undero == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("2500", 16)
    gg.getResults(150)
    gg.editAll("1000", 16)
    gg.clearResults()
    gg.toast("🚖XE ĐỘN THỔ TẮT🚖")
    Undero = "《🔴》"
  end
end

Lite = "《🔴》"
function N8()
  if Lite == "《🔴》" then
    io.output(fileData):write([[
25268
Var #8DD3EA64|8dd3ea64|10|bf800000|0|0|0|0|r-xp|/data/data/com.chaozhuo.gameassistant/virtual/data/app/com.dts.freefireth/lib/libunity.so|ae0a64
]]):close()
    gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
    os.remove(fileData)
    gg.clearList()
    gg.clearResults()
    gg.toast("🏚️XUYÊN NHÀ BẬT🏚️")
    Lite = "《🔵》"
  elseif Lite == "《🔵》" then
    io.output(fileData):write([[
25268
Var #B5DFDA64|b5dfda64|10|358637bd|0|0|0|0|r-xp|/data/app/com.dts.freefireth-30z2tARwl4duJKKyHnw_AQ==/lib/arm/libunity.so|ae0a64
]]):close()
    gg.loadList(fileData, gg.LOAD_APPEND | gg.LOAD_VALUES)
    os.remove(fileData)
    gg.clearList()
    gg.clearResults()
    gg.toast("🏚️XUYÊN NHÀ TẮT🏚️")
    Lite = "《🔴》"
  end
end

Walcar = "《🔴》"
function N9()
  if Walcar == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 24604880
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 17173204
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
    gg.toast("🏘️XE XUYÊN NHÀ BẬT🏘️")
    Walcar = "《🔵》"
  elseif Walcar == "《🔵》" then
   gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 24604880
original("7F 45 4C 46 01 01 01 00")
replaced("F0 48 2D E9 10 B0 8D E2")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 17173204
original("7F 45 4C 46 01 01 01 00")
replaced("F0 48 2D E9 10 B0 8D E2")
gg.clearResults()
    gg.toast("🏘️XE XUYÊN NHÀ TẮT🏘️")
    Walcar = "《🔴》"
  end
end

Cariao = "《🔴》"
function N10()
  if Cariao == "《🔴》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 12775108
    original("7F 45 4C 46 01 01 01 00")
    replaced("96 0F 43 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🚙XE CHẠY NHANH BẬT🚙")
    Cariao = "《🔵》"
  elseif Cariao == "《🔵》" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 12775108
    original("7F 45 4C 46 01 01 01 00")
    replaced("18 00 90 E5 1E FF 2F E1")
    gg.clearResults()
    gg.toast("🚙XE CHẠY NHANH TẮT🚙")
    Cariao = "《🔴》"
  end
end

Zipline = "《🔴》"
function N12()
  if Zipline == "《🔴》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00r;00r;40r;41r;00r;00r;5Cr;42r;00r;00r;80r;3Fr::12", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(12)
    gg.editAll("00r;00r;A0r;42r;00r;00r;5Cr;42r;00r;00r;80r;3Fr", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🎢ĐU CÁP NHANH BẬT🎢")
    Zipline = "《🔵》"
  elseif Zipline == "《🔵》" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("00r;00r;A0r;42r;00r;00r;5Cr;42r;00r;00r;80r;3Fr::12", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(12)
    gg.editAll("00r;00r;40r;41r;00r;00r;5Cr;42r;00r;00r;80r;3Fr", gg.TYPE_BYTE)
    gg.clearResults()
    gg.toast("🎢ĐU CÁP NHANH TẮT🎢")
    Zipline = "《🔴》"
  end
end

function EXIT()
print("dat")
os.exit()
end
  
while true do 

if gg.isVisible(true) then

HOMEDM=1

gg.setVisible(false)

end

if HOMEDM==1 then HOME()end
end
    
    


