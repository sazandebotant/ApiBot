local function run(msg)
    
    local data = load_data(_config.moderation.data)
    
     if data[tostring(msg.to.id)]['settings']['fosh'] == 'yes' then
      
    local chat = get_receiver(msg)
local name = user_print_name(msg.from)
    local user = "user#id"..msg.from.id
if msg.to.type == 'channel' and not is_momod(msg) then

 delete_msg(msg.id, ok_cb, true)
send_large_msg(chat, "👤کاربر : [ @" .. msg.from.username .. "] \n💠شناسه کاربر : [" .. msg.from.id .."] \n ❌در حال فرستادن فحش است\n 🚷پیام پاک شد" )      end
   end
end
    
return {
patterns = {
    "کس(.*)",
    "کس (.*)",
    "کون (.*)",
    "کون(.*)",
    "کیر(.*)",
    "کیر (.*)",
    "کون (.*)",
    "کیر (.*)",
    "کون (.*)",
    "سیکتیر (.*)",
    "ممه (.*)",
    "سکس (.*)",
    "سیکتیر (.*)",
    "قهبه (.*)",
    "دیوث",
    "دیوث (.*)",
    "اشغال (.*)",
    "اشغال (.*)",
    "بسیک (.*)",
    "بیناموس (.*)",
    "اوبی (.*)",
    "کونی (.*)",
    "بیشرف (.*)",
    "کس ننه(.*)",
    "ساک (.*)",
    "کیری (.*)",
    "خار کوسه (.*)",
    "ننه (.*)",
    "خواهرتو (.*)",
    "سکسی (.*)",
    "کسکش (.*)",
    "سیک تیر (.*)",
    "گاییدم (.*)",
    "میگام (.*)",
    "میگامت (.*)",
    "بسیک (.*)",
    "خواهرت (.*)",
    "خارتو (.*)",
    "کونت (.*)",
    "کوست (.*)",
    "شورت (.*)",
    "سگ (.*)",
    "کیری (.*)",
    "دزد (.*)",
    "ننت (.*)",
    "ابمو (.*)",
    "جق (.*)",
    "دیوث (.*)",
    "سیکتیر",
    "کس",
    "کون",
    "عوضی",
    "اشغال",
    "نفهم",
    "سکسی",
    "ممه",
    "گاییدم",
    "نگاییدم",
    "گای(.*)",
    "نگا(.*)",
    "Gayid(.*)",
    "gayid(.*)",
    "kir",
    "kir (.*)",
    "Kir (.*)",
    "kos (.*)",
    "kon (.*)",
    "Kos (.*)",
    "Kon (.*)",
    "Kir(.*)",
    "kir(.*)",
    "Kos(.*)",
    "kos(.*)",
    "bk",
    "Bk",
    "bk(.*)",
    "Bk(.*)",
    "madareto (.*)",
    "madareto",
    "mame",
    "kir",
    "kos",
    "kon",
    "Kir",
    "Kos",
    "Kon",
    "اشغال",
    "اشغال (.*)",
    "عوضی (.*)",
    "کیر",
    "کیر (.*)",
    "کوس (.*)",
    "دیوث",
    "کیر(.*)",
    "وات د فاک",
    "فاک",
    "فاک (.*)",
    "خفه",
    "خفه (.*)",
    "تخم حروم",
    "حروم (.*)",
    "حروم(.*)",
    "خایه (.*)",
    "چس (.*)",
    "ننه (.*)",
    "بی خایه (.*)",
  },
  run = run
}
