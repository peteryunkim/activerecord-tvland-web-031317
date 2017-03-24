require 'pry'
class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name1 = self.first_name
    name2 = self.last_name
    name1 + " " + name2
  end

  def list_roles
    self.characters.map do |char|
      "#{char.name} - #{char.show.name}"
    end
  end

end
