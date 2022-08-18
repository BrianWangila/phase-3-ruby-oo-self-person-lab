# your code goes here
require "pry"

class Person

  attr_reader :name 
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, hygiene = 8, happiness = 8)
    @name = name
    @bank_account  = bank_account
    @happiness = happiness
    @hygiene =hygiene
  end

  def happiness
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    else
      @happiness = @happiness
    end
  end

  def hygiene
    @hygiene.clamp(0, 10)         #allows range of 0 to 10 only
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

 

  def call_friend(friend)
    # binding.pry
    puts self.happiness += 3
    puts friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
  
end

person = Person.new("Brian")

puts person.name
person.happiness = 20       #returns 10 as the max
puts person.happiness
person.hygiene = 30       #returns 10 as max
puts person.hygiene

puts person.get_paid(1000)
puts person.bank_account

puts person.take_bath
puts person.hygiene

puts person.work_out
puts person.happiness


# puts person.call_friend("Judy")

# puts person.start_conversation("Brian", "weather")



