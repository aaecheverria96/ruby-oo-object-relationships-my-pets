
require 'pry'
class Owner
 attr_reader :name, :species 

 @@all = []

 def initialize(name)
  @name = name 
  @species = "human"
  @@all << self 
 end  

 def say_species
 "I am a human."
end   

def self.all 
  @@all
end 

def self.count 
@@all.count 
end  

def self.reset_all 
  @@all.clear 
end  

def cats 
 Cat.all.select {|cat| cat.owner == self} 
  
end 
 
def dogs 
Dog.all.select {|dog| dog.owner == self}
end  

def buy_cat(name_cat) 
   Cat.new(name_cat, self)

end  

def buy_dog(name_dog) 
  Dog.new(name_dog, self)
  

end 

def walk_dogs 
  dogs.each do |dog| 
    dog.mood = "happy"
  end 
end  

def feed_cats 
cats.each do |cat| 
  cat.mood = "happy" 
  end 
end 

def sell_pets 
cats.each do |cat| 
cat.mood = "nervous"  

cats.each do |cat| 
  cat.owner = nil 

dogs.each do |dog| 
dog.mood = "nervous"  

dogs.each do |dog| 
  dog.owner = nil 
end 
end 
end 
end 
end  

def list_pets 
 return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)." 
end 

end