do

function run(msg, matches)

local mods = [[ 
راهنما فارسی مدیران :
@Kiavaprotection


💢 !info
تمامی اطلاعات راجبع سوپر گروه را نشان میدهد

💢 !admins
لیست ادمین های سوپر گروه

💢!owner
نام صاحب سوپر گروه

💢 !modlist
لیست مدیر های سوپر گروه

💢!bots
لیست بات های سوپر گروه

!who
لیست تمامی افراد عضو سوپر گروه

💢 !block
اخراج کردن و بن کردن یک یوزر از سوپر گروه (بصورت رسمی از سوی تلگرام)

💢 !ban
بن کردن یک نفر از سوپرگروه (بصورت غیر رسمی از سمت بات)

💢 !unban
آن بن کردن یک نفر از سوپر گروه

💢 !id
نشان دادن آیدی سوپر گروه / آیدی شخص
- برای ایدی یوزر ها: !id @UserName

💢 !id from
دریافت آیدی از پیامی که فوروارد شده

💢 !kickme
اخراج کردن یک نفر از سوپر گروه

💢 !setowner
تعویض صاحب سوپر گروه

💢 !promote [username|id]
ترفیع درجه یک فرد به مدیر

💢 !demote [username|id]
تنزیل درجه یک فرد به عضو معمولی

💢 !setname
تعویض نام سوپر گروه

💢 !setphoto
تعویض عکس سوپر گروه

💢 !setrules
نوشتن قوانین سوپر گروه

💢!setabout
نوشتن "درباره" سوپر گروه (بالای لیست ممبر ها می آید)

💢 !newlink
ساخت لینک جدید

💢 !setlink لینک
قراردادن لینک شما در دستور !link

💢 !link
دریافت لینک گروه

💢 !rules
مشاهده قوانین گروه

💢 !lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict|tag|username|contact|video|audio|fwd|reply|ads|emoji|english|number|fosh]
قفل کردن ستینگ گروه
*RTL = راست چین (پیام های از راست به چپ)*
*strict: enable strict settings enforcement (violating user will be kicked)*

💢 !unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict|tag|username|contact|video|audio|fwd|reply|ads|emoji|english|number|fosh]
باز کردن ستینگ گروه
*RTL = راست چین (پیام های از راست به چپ)*
*strict: disable strict settings enforcement (violating user will not be kicked)*


💢 !lock [normal|etehad|family|all]
سوییچ تنظیم خودکار ستینگ گروه به صورت پیشرفته 
💢 !mute [all|audio|gifs|photo|video|service|text]
میوت (خفه) کردن
- پیام های میوت شده درجا پاک میشوند

💢 !unmute [all|audio|gifs|photo|video|service]
آن میوت کردن
💢 !setflood [value]
ست کردن تعداد پیام های پشت سر هم تا یوزر کیک شود
- مثلا اگر 10 باشد, فردی 10 پیام پشت هم بفرستد, کیک میشود.
ست کردن از 1 تا 200 می باشد

💢 !settings
دریافت ستینگ سوپر گروه

💢 !muteslist
نشان دادن میوت های سوپر گروه

💢 !silent [username]
خفه کردن یک کاربر در سوپر گروه
- اگر کاربر خفه شده پیامی بفرستد, درجا پیام حذف میگردد

💢 !silentliat
لیست افراد میوت شده

💢 !banlist
لیست افراد بن شده

💢 !clean [rules|about|modlist|mutelist]
پاک کردن یکی از متغیر های بالا

💢 !del
پاک کردن یک مسیج (ریپلای کنید)

💢 !public [yes|no]
ویزیبیلیتی پیام ها

💢 !res [username]
دریافت نام و آیدی یک یوزر با یوزرنیم (مثلا @UserName)

💢 !addword [word]
سانسور کردن یک کلمه

💢 !remword [word]
پاک کردن یک کلمه از لیست سانسورها

💢 !badwords 
لیست کلمات سانسور شده. 

💢 !log
دریافت لاگ گروه

 ]]

 
 local admin = [[ 
 
 راهنمای فارسی ادمین ها :
 @KiavaProtection
 
 !banall [Reply | ID | Username]
 
 !unbanall [ID]
 
 !add 
 
 !rem
 
 !leave
 
 !setowner [ID | Reply]
 
 !promote [ID | REPLY]

!demote [ID | Reply]
 
 
 ]]
 
 local owner = [[
 
 راهنمای فارسی صاحبان گروه :
 @KiavaProtection
 
 
 💢 !info
تمامی اطلاعات راجبع سوپر گروه را نشان میدهد

💢 !admins
لیست ادمین های سوپر گروه

💢!owner
نام صاحب سوپر گروه

💢 !modlist
لیست مدیر های سوپر گروه

💢!bots
لیست بات های سوپر گروه

!who
لیست تمامی افراد عضو سوپر گروه

💢 !block
اخراج کردن و بن کردن یک یوزر از سوپر گروه (بصورت رسمی از سوی تلگرام)

💢 !ban
بن کردن یک نفر از سوپرگروه (بصورت غیر رسمی از سمت بات)

💢 !unban
آن بن کردن یک نفر از سوپر گروه

💢 !id
نشان دادن آیدی سوپر گروه / آیدی شخص
- برای ایدی یوزر ها: !id @UserName

💢 !id from
دریافت آیدی از پیامی که فوروارد شده

💢 !kickme
اخراج کردن یک نفر از سوپر گروه

💢 !setowner
تعویض صاحب سوپر گروه

💢 !promote [username|id]
ترفیع درجه یک فرد به مدیر

💢 !demote [username|id]
تنزیل درجه یک فرد به عضو معمولی

💢 !setname
تعویض نام سوپر گروه

💢 !setphoto
تعویض عکس سوپر گروه

💢 !setrules
نوشتن قوانین سوپر گروه

💢!setabout
نوشتن "درباره" سوپر گروه (بالای لیست ممبر ها می آید)

💢 !newlink
ساخت لینک جدید

💢 !setlink لینک
قراردادن لینک شما در دستور !link

💢 !link
دریافت لینک گروه

💢 !rules
مشاهده قوانین گروه

💢 !lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict|tag|username|contact|video|audio|fwd|reply|ads|emoji|english|number|fosh]
قفل کردن ستینگ گروه
*RTL = راست چین (پیام های از راست به چپ)*
*strict: enable strict settings enforcement (violating user will be kicked)*

💢 !unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict|tag|username|contact|video|audio|fwd|reply|ads|emoji|english|number|fosh]
باز کردن ستینگ گروه
*RTL = راست چین (پیام های از راست به چپ)*
*strict: disable strict settings enforcement (violating user will not be kicked)*


💢 !lock [normal|etehad|family|all]
سوییچ تنظیم خودکار ستینگ گروه به صورت پیشرفته 
💢 !mute [all|audio|gifs|photo|video|service|text]
میوت (خفه) کردن
- پیام های میوت شده درجا پاک میشوند

💢 !unmute [all|audio|gifs|photo|video|service]
آن میوت کردن
💢 !setflood [value]
ست کردن تعداد پیام های پشت سر هم تا یوزر کیک شود
- مثلا اگر 10 باشد, فردی 10 پیام پشت هم بفرستد, کیک میشود.
ست کردن از 1 تا 200 می باشد

💢 !settings
دریافت ستینگ سوپر گروه

💢 !muteslist
نشان دادن میوت های سوپر گروه

💢 !silent [username]
خفه کردن یک کاربر در سوپر گروه
- اگر کاربر خفه شده پیامی بفرستد, درجا پیام حذف میگردد

💢 !silentliat
لیست افراد میوت شده

💢 !banlist
لیست افراد بن شده

💢 !clean [rules|about|modlist|mutelist]
پاک کردن یکی از متغیر های بالا

💢 !del
پاک کردن یک مسیج (ریپلای کنید)

💢 !public [yes|no]
ویزیبیلیتی پیام ها

💢 !res [username]
دریافت نام و آیدی یک یوزر با یوزرنیم (مثلا @UserName)

💢 !addword [word]
سانسور کردن یک کلمه

💢 !remword [word]
پاک کردن یک کلمه از لیست سانسورها

💢 !badwords 
لیست کلمات سانسور شده. 

💢 !log
دریافت لاگ گروه
 ]]
 
 local member = [[
 
 راهنمای فارسی عضو ها :
@KiavaProtection
 

 
 !calc عدد
انجام ماشین حساب

 !id
دریافت آیدی خود و گروه

 !me
دریافت اطلاعات خود
 
 !voice متن
تبدیل متن به وویس
 
 !time
دریافت ساعت و تاریخ
 
 !tex
تبدیل متن به عکس
 
 !feedback
ارسال نظر به تیم کیاوا
 
 !arz
دریافت قیمت سکه،ارز،طلا

!aparat متن
سرچ کردن در آپارات

!azan شهر
دریافت اذان و قبله شهر 

!write متن
طراحی کلمه با 100 فونت

!weather شهر
دریافت اطلاعات کامل هواشناسی شهر خود

!short لینک
کوتاه کننده لینک شما با 6 سایت

!dogify متن
نوشتن متن شما روی عکس سگ

!tr کلمه
ترجمه کلمه با پشتیبانی 70 زبان دنیا

!tosticker
تبدیل عکس به استیکر

!tophoto
تبدیل استیکر به عکس

!gif
دریافت یک گیف شانسی

!hackernews
دریافت اخبار هکران 

!mean کلمه
فرهنگ فارسی معین/واژه یاب

!sticker متن سایز رنگ
مثال
!sticker kiava normal red
ساخت استیکر پیشرفته

 ]]
 
 local sudo = [[
 
 راهنما فارسی سودو ها :
 @KiavaProtection

برای شما تمام دستورات باز است
 ]]
 
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2] == nil then 
     
    if is_sudo(msg) then 
        return sudo
    elseif is_admin(msg) then 
        return admin 
    elseif is_owner(msg) then 
        return owner
    elseif is_momod(msg) then 
         return mods
    else 
        return member
        end
end
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'owner' then 
     if is_owner(msg) then 
         return owner
    else return 'Only Admins or higher can See this !'
    end 
end

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return mods
    else return 'only Owners Or higher Can See this !'
    end 
end 

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'member' then
         return member
    end 
end

    
return {
 
  patterns = {
    "^!(help)$",
	"^([Hh]elp)$",
	"^/(help)$",
	
	"^!(help) (mod)$",
	"^!(help) (owner)$",
	"^!(help) (member)$",
  }, 
  run = run 
}

end


