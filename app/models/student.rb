class Student < ActiveRecord::Base
  def to_s
    if self.first_name == nil
      "name is not passing through"
    else
    self.first_name + " " + self.last_name
    end
  end
end