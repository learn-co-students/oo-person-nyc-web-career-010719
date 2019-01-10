require 'pry'
# your code goes here
class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    # binding.pry
  end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def clean?
    hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
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
    [friend,self].each { |person| person.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
    if topic == 'politics'
      [friend,self].each { |person| person.happiness -= 2 }
      word_pool = ['partisan', 'lobbyist']
    elsif topic == 'weather'
      [friend,self].each { |person| person.happiness += 1 }
      word_pool = ['sun', 'rain']
    else
      word_pool = ['blah', 'blah']
    end
    "blah blah #{word_pool[0]} blah #{word_pool[1]}"
  end
end
