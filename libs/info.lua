do

function INFO(msg, matches)
local learn = '💭ID :'..msg.from.id..'\n'
..'👤يوزرك :(@'..msg.from.username..')\n'
..'👤الاسم الاول :'..(msg.from.first_name or '')..'\n'
..'🔆الاسم الاخير :'..(msg.from.lastname or '')..'\n'
..'💡ايدي المجموعه :('..msg.to.id..')\n'
..'📜اسم الكروب :('..msg.to.title..')\n'
..'📞رقم الهاتف :+'..(msg.from.phone or " لايوجد رقم هاتف "..')\n'
..'✉️الرسالة النصية :('..msg.text..')\n'
..'👥انت الان في  :(' ..msg.to.type..')\n'
..'🕚الوقت : '..os.date(' %T', os.time()))..'\n'
..'📅 التاريخ: '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n'
   reply_msg(msg.id, learn, ok_cb, false)
end
return {
patterns = {
"^[!/#](معلوماتي)$"

},
run = run
}

end
