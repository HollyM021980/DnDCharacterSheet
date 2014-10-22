module DiceRoll

  # 4d6 - discard the lowest & sum the last 3
  def self.ability_dice_roll
    res = (4.times.map { Random.rand(1..6) })
    res.sort!
    sum = 0;
    (1..3).each { |i| sum += res[i]}
    sum
  end

end
