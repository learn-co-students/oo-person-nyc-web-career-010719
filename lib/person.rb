require 'pry'
class Person

  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_points = 8
    @hygiene_points = 8
  end

  def happiness
    @happiness_points
  end


  def happiness=(number)
    # binding.pry
    @happiness_points = number
    if @happiness_points > 10
      @happiness_points = 10
    elsif @happiness_points < 0
      @happiness_points = 0
    end
    return @happiness_points
  end


  def hygiene
    @hygiene_points
  end


  def hygiene=(number)
    # binding.pry
    @hygiene_points = number
    if @hygiene_points > 10
      @hygiene_points = 10
    elsif @hygiene_points < 0
      @hygiene_points = 0
    end
    return @hygiene_points
  end


  #   if number > 10
  #     @hygiene_points = 10
  #   elsif number < 0
  #     @hygiene_points = 0
  #   else
  #     @hygiene_points = number
  #     # binding.pry
  #   end
  #   #binding.pry
  # end


  def clean?
   self.hygiene > 7 ? true : false
  end

  def happy?
    self.happiness > 7 ? true : false
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
    self.hygiene -= 3
    self.happiness += 2
     "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end






end
