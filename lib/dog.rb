require 'pry'
class Dog

  attr_accessor :name, :breed, :id

  def initialize(name:, breed:, id: nil)
    @name = name
    @breed = breed
    @id = id
    #binding.pry
  end

  def self.create_table

  end

  def self.drop_table
    DB[:conn].execute('drop table dogs')
  end

  def save
    #binding.pry
    DB[:conn].execute("insert into dogs(name, breed) values ('#{self.name}', '#{self.breed}')")
    self
    @id = DB[:conn].execute("select id from dogs where name='#{self.name}'").flatten.join
  end

end
