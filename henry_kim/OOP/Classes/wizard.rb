require_relative 'Human'

class Wizard < Human
  # your code here
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    @health +=10
  end

  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
    else
      puts "Cannot attack this unknown object"
    end
    self
  end


  def display_stats
    puts "#{@health}, #{@intelligence}, #{@stealth}, #{@strength}"
  end

end

class Ninja < Human
  # your code here
  def initialize
    super
    @stealth = 175
  end

  def steal(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      @health +=10
    else
      puts "Cannot attack this unknown object"
    end
    self
  end

  def get_away_method
    @health -=15
    self
  end

  def display_stats
    puts "#{@health}, #{@intelligence}, #{@stealth}, #{@strength}"
  end

end

class Samurai < Human
@@total = 0

  def initialize
    super
    @health = 200
    @@total +=1

  end

  def death_blow(obj)
    if obj.class.ancestors.include?(Human)
      obj.health = 0
    else
      puts "Cannot attack this unknown object"
    end
    self
  end

  def meditate
    @health = 200
    self
  end

  def how_many
    puts @@samurai_count
    self
  end

  def display_stats
    puts "#{@health}, #{@intelligence}, #{@stealth}, #{@strength}"
  end

end

ninja1 = Ninja.new
samurai1=Samurai.new
wizard1=Wizard.new
#
ninja1.steal(samurai1).steal(samurai1).display_stats
# samurai1.display_health
#
samurai1.death_blow(ninja1).display_stats
# ninja1.display_health
#
wizard1.fireball(samurai1).display_stats
# samurai1.display_health

puts ninja1.class.ancestors.include?(Human)
