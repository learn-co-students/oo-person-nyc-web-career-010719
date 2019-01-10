# youyour code goes hrequirere
require 'pry'

class Person

 attr_accessor :bank_account, :happiness, :hygiene
 attr_reader :name

 def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
   @name = name
   @bank_account = bank_account
   @happiness = happiness
   @hygiene = hygiene
 end

 def bank_account
   @bank_account
 end

 def happiness
   if @happiness > 10
     @happiness = 10
   elsif @happiness < 0
     @happiness = 0
   else
   @happiness
   end
 end

 def hygiene
   if @hygiene > 10
     @hygiene = 10
   elsif @hygiene < 0
     @hygiene = 0
   else
   @hygiene
 end
end

 def clean?
     if @hygiene > 7
       return true
     else
       return false
     end
   end

 def happy?
   if @happiness > 7
     return true
   else
     return false
   end
 end

 def get_paid(salary)
   @bank_account += salary
   return "all about the benjamins"
 end

 def take_bath
   # hygiene
   self.hygiene += 4
   if self.hygiene > 10
     self.hygiene = 10
   end
   return "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
   self.hygiene -= 3
   if self.hygiene < 0
     self.hygiene = 0
   end
   self.happiness += 2
   if self.happiness > 10
     self.happiness = 10
   end
   return "♪ another one bites the dust ♫"
 end

 def call_friend(friend)
   self.happiness += 3
   if self.happiness > 10
     self.happiness = 10
   end
   friend.happiness += 3
   if friend.happiness > 10
     friend.happiness = 10
   end
   return "Hi #{friend.name}! It's #{self.name}. How are you?"
 end

 def start_conversation(friend, topic)
   if topic == "politics"
     self.happiness -= 2
     if self.happiness < 0
       self.happiness = 0
     end
     friend.happiness -= 2
     if friend.happiness  < 0
       friend.happiness = 0
     end
     return "blah blah partisan blah lobbyist"
   elsif topic == "weather"
     self.happiness += 1
     if self.happiness > 10
       self.happiness = 10
     end
     friend.happiness += 1
     if friend.happiness  > 10
       friend.happiness = 10
     end
     return "blah blah sun blah rain"
   else
     return "blah blah blah blah blah"
   end
 end









end # end of class Person
