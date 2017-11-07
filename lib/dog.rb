require 'pry'
class Dog

  attr_accessor :name, :breed, :id

  def initialize(name:, breed:)
    @name = name
    @breed = breed
    binding.pry
  end
end
