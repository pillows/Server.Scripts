inventory = target.get_inventory()
quest = target.get_quest(29906)

if inventory.item_count(1142066) < 1 and target.job > 1000 and target.job / 100 > 0 and target.job < 2000 then
	inventory.add(1142066, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Official Knight> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Official Knight> has been rewarded.');
end