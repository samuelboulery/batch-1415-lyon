# require_relative "citizen"

# yanis = Citizen.new("    yAnis", "  dAhmane   ", 22)
# p yanis.can_vote?

require_relative "slot_machine"

slot = SlotMachine.new()
slot.play
