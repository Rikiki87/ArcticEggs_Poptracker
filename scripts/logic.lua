-- Access Functions
function can_exit_beginning()
  return has("Cigarettes") and has("Rations") and has("Sausages") and has("Bacon")
end

function can_beat_game()
local count = 0
if has("Cockroach") then count = count + 2 end
if has("Bullets") then count = count + 4 end
if has("Pizza") and has ("Bullets") then count = count + 1 end
if has("Gizzard") then count = count + 1 end
if has("Beer") then count = count + 4 end
if has("Ice") then count = count + 2 end
if has("Fish") then count = count + 2 end
if has("Pufferfish") then count = count + 3 end
if has("Stingray") then count = count + 1 end
if has("Beer") and has("Ice") then count = count + 1 end
if has("Fish") and has ("Pufferfish") then count = count + 1 end
  return count > 15
end

function has(item, amount)
	local count = Tracker:ProviderCountForCode(item)
	amount = tonumber(amount)
	if not amount then
		return count > 0
	else
		return count >= amount
	end
end