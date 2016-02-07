class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2 }
  has_one :cooking

# TODO: Better experience system? Currently it takes 100 exp to level up regardless of level
  def current_exp
    self.experience % 100
  end
end
