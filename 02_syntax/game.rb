class Monster
  def initialize(hp, strength)
    @hp = hp
    @strength = strength
  end

  def hp
    @hp
  end

  def dead?
    !(@hp > 0)
  end

  def take_damage(damage)
    @hp = @hp - damage
  end

  def attack(other_monster)
    other_monster.take_damage(@strength)
  end
end

devilkin = Monster.new(10, 2)
troll = Monster.new(40, 7)

loop do
  break if devilkin.dead? || troll.dead?

  puts "***"
  puts "Devilkin has #{devilkin.hp} HP"
  puts "Troll has #{troll.hp} HP"

  devilkin.attack(troll)
  troll.attack(devilkin)
end
