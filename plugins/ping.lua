do
--Coded By @kiava
local function run(msg, matches)
    local kiava = 174997972
      if msg.text:find('ping') then
    if msg.from.id == tonumber(kiava) then
        local text = [[

test

        ]]
 send_document(get_receiver(msg), "/root/antspmbot/data/sticker/Mohammad.webp", ok_cb, false)

    return text


    else  if not is_sudo(msg) then
          return "🔖شما جزء تیم کیاوا نیستید یا کارت شناسایی برای شما صادر نشده است"


   end
      end 
          end 
                end
                    

return {
  patterns = {
    "^[!#/][Pp]ing$",
    "^([Pp]ing)$",
    },
  run = run
}
end


