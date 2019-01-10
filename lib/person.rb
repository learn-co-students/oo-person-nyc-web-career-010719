

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = range(happiness)
  end

  def hygiene=(hygiene)
    @hygiene = range(hygiene)
  end

  #test

  def clean?
    if @hygiene > 7
      return true
    end
      return false
  end

  def happy?
    if @happiness > 7
      return true
    end
      return false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def range(num)
    if num > 10
      return 10
     end
   if num < 0
      return 0
     end
    return num
  end

  def take_bath
    self.hygiene= @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene= @hygiene - 3
    self.happiness= @happiness + 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness= @happiness + 3
    friend.happiness= friend.happiness + 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness= @happiness - 2
      person.happiness= person.happiness - 2
      return  "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1
      return "blah blah sun blah rain"
    end
      return "blah blah blah blah blah"
  end
end #end of class

# joe = Person.new("Joe")
# brian = Person.new("Brian")
# puts joe
# puts joe.clean?
# puts joe.happy?
# # puts joe.get_paid(100)
# # puts joe.bank_account
# # puts joe.take_bath
# # puts joe.work_out
# puts joe.call_friend(brian)
# puts brian.call_friend(joe)
# puts "joe happiness: " + joe.happiness.to_s
# puts "brian happiness: " + brian.happiness.to_s
#
# puts joe.start_conversation(brian, "politics")
