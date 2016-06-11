do

function run(msg, matches)
  if msg.to.type== 'channel' then
      send_large_msg("chat#id".. msg.to.id , "خدانگهدار😒")
      chat_del_user("chat#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false)
end
end
return {
  description = "Fun Plugin", 
  usage = "!kickme : Fun Plugin",
  patterns = {
    "^[#!/]kickme$"
    }, 
  run = run 
}

end