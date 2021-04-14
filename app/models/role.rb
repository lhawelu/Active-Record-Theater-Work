class Role < ActiveRecord::Base
  has_many :auditions

  # def auditions
  #   self.auditions.all
  # end

  def actors
    self.auditions.pluck(:actor)
  end

  def locations
    self.auditions.pluck(:location)
  end

  def lead
    self.auditions.find_all{|a| a.hired = true}.first
  end

  def understudy
    self.auditions.find_all{|a| a.hired = true}.second
  end

end


