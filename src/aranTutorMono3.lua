mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("mo4") == "" then
	quest.update("mo4", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("legendBalloon6"))
end