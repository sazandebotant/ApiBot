do
--Coded By @kiavaprotection
local function run(msg, matches)
    local Mohammad = 147237496
    local Kiava = 174997972
      if msg.text:find('cart') then
    if msg.from.id == tonumber(Mohammad) then
        local text = [[

🔖Name : Mohammad
🔖 Last name: ——
🔖Age: 15
🔖 Username: @Mohammad_NBG
🔖Phone number: +98939830**** 
⭐️ Team name: kiavaprotection
📊 Level: 2
📝Status: Editor & thinker

        ]]
 send_document(get_receiver(msg), "/root/antspmbot/data/sticker/Mohammad.webp", ok_cb, false)

    return text

      else  if msg.from.id == tonumber(Kiava) then

    local text = [[
 🔖Name : кเคvค
 🔖 Last name: ——
 🔖Age: 19
 🔖 Username: @Kiava
 🔖 Phone number: +98937368****
 ⭐️ Team name: kiavaprotection
 📊Level: 2
 📝Status: Programmer & Manager
        ]]
   send_document(get_receiver(msg), "/root/antspmbot/data/sticker/Kiava.webp", ok_cb, false)
        return text
    else  if not is_sudo(msg) then
          return "🔖شما جزء تیم کیاوا نیستید یا کارت شناسایی برای شما صادر نشده است"


   end
      end 
          end 
                end
                     end

return {
  patterns = {
    "^[!#/][Cc]art$",
    "^([Cc]art)$",
    },
  run = run
}
end


