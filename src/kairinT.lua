-- TODO: inventory expanse, second job, third job
inventory = target.get_inventory()

self.ask_menu("Have you got something to say?", {
    [0] = "I would like to learn more about pirates.."
})

if target.job == 0 then
	self.say("Do you wish to become a Pirate? You'll need to meet our set of standard if you are to become one of us. I need you to be #bat least at Level 10#k. Let's see...")
	if target.level >= 10 and target.dex >= 20 then
		self.say("You seem more than qualified! Great, are you ready to become one of us?")
		self.say("Welcome to the band of Pirates! You may have to spend some time as a wanderer at first, but better days will certainly dawn upon you, sooner than you think! In the mean time, let me share some of my abilities with you.")

		target.sp = (target.level - 10) * 3 + 1
		target.job = 500
        target.max_hp = target.max_hp + 150
        target.max_mp = target.max_mp + 50
        target.hp = target.max_hp
        target.mp = target.max_mp
		target.str = 4
		target.dex = 20
		target.int = 4
		target.luk = 4
		target.ap = (target.level - 1) * 5 - 7
		inventory.add(1482014, 1) -- Scallywag Knuckler	
		inventory.add(1492014, 1) -- Pirate's Pistol
		inventory.add(2330006, 600) -- Bullet for Novice Pirates
		inventory.add(2330006, 600) -- Bullet for Novice Pirates
        --C.IncreaseSlotLimit(1, 1);
        --C.IncreaseSlotLimit(4, 1);
		
		self.say("I have just increased the number of slots for your equipment and etc. inventory. You have also gotten a bit stronger. Can you feel it? Now that you can officially call yourself a Pirate, join us in our quest for adventure and freedom!")
		self.say("I have just given you a little bit of #bSP#k. Look at the #bSkill menu#k to find some skills, and use your SP to learn the skills. Beware that not all skills can be enhanced from the get go. There are some skills that you can only acquire after mastering basic skills.")
		self.say("One more thing. Now that you have graduated from the ranks of a Beginner into a Pirate, you'll have to make sure not to die prematurely. If you do lose all your health, you'll lose valuable EXP that you have earned. Wouldn't it stink to lose hard-earned EXP by dying?")
		self.say("This is all I can teach you. I have also given you some useful weapons to work with, so it's up to you now to train with them. The world is yours for the taking, so use your resources wisely, and when you feel like you've reached the top, let me know. I'll have something better for you in store...")
		self.say("Oh, and... your stats should accurately reflect your new occupation as a Pirate. Click on #bAuto Assign#k on your stat window to make yourself into an even more formidable pirate.")
	else
		self.say("Hmm...I don't think you have trained enough, yet. See me when you get stronger.")
	end
else
	self.say("'Don't you want to feel the freedom eminating from the sea? Don't you want the power, the fame, and everything else that comes with it? Then you should join us and enjoy it yourself.")
end