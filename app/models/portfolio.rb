class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb

  def self.angular
    where(subtitle: "Angular ")
  end

  scope :ruby_programming, -> { where(subtitle: "Ruby Programming") }
end
