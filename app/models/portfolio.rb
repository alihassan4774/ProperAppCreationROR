class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb

  def self.angular
    where(subtitle: "Angular ")
  end

  scope :ruby_programming, -> { where(subtitle: "Ruby Programming") }


  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Rejw1o-O-KUg6obEIt3jEkabeMY8ldoAmg&s"
     self.thumb ||= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Rejw1o-O-KUg6obEIt3jEkabeMY8ldoAmg&s"
  end
end
