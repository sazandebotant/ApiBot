local function run(msg)
    
    local data = load_data(_config.moderation.data)
    
     if data[tostring(msg.to.id)]['settings']['ads'] == 'yes' then
      
    local chat = get_receiver(msg)
local name = user_print_name(msg.from)
    local user = "user#id"..msg.from.id
if msg.to.type == 'channel' and not is_momod(msg) then
      delete_msg(msg.id, ok_cb, true)
send_large_msg(chat, "👤کاربر :  [ @" .. msg.from.username .. "] \n💠شناسه کاربر :  [" .. msg.from.id .."] \n ❌در حال فرستادن لینک است\n 🚷پیام پاک شد" ) 
      end
   end
end

    
return {patterns = {
"[Hh]ttps://(.*)",
"[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.*)",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.*)",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.*)",
"[Hh][Tt][Tt][Pp]://",
"[Ww][Ww][Ww]:",
"@(.*)",
"telegram.me/(.*)",
"TELEGRAM.ME/(.*)",
"Telegram.me/(.*)",
"(.*)@",
"(.*) telegram.me/(.*)",
"(.*) https://(.*)",
"(.*) www.(.*)";
"https://(.*)",
"http://(.*)",
"www.(.*)",
"WWW.(.*)",
"(.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) www.(.*)",
"(.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*)www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) https://(.*)",
"(.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) @",
"(.*) (.*) @(.*)",
"(.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"%[(video)%]",
"%[(photo)%]",
  },
  run = run
}
--coded By @kiava
--designed by @mohammad_nbg
--Copy Right For kiava.ir 2015-2016
