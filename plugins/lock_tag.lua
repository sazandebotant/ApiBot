local function run(msg)
    
    local data = load_data(_config.moderation.data)
    
     if data[tostring(msg.to.id)]['settings']['tag'] == 'yes' then
      
    local chat = get_receiver(msg)
local name = user_print_name(msg.from)
    local user = "user#id"..msg.from.id
if msg.to.type == 'channel' and not is_momod(msg) then
  kick_user(msg.from.id, msg.to.id)
 delete_msg(msg.id, ok_cb, true)
send_large_msg(chat, "👤کاربر :  [ @" .. msg.from.username .. "] \n💠شناسه کاربر :  [" .. msg.from.id .."] \n 👁‍🗨دلیل : ارسال هشتگ در گروه\n 🚷اخراج شد  " )
  
      end
   end
end
    
return {
patterns = {
  "#",
  "#(.*)"
  },
  run = run
}


