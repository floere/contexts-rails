require 'faker'
class Member
  
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def self.random(amount)
    Array.new(amount) { Member.new(Faker::Name.name) }
  end
  
end