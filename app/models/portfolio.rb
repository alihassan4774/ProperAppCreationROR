class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda {  |attrs| attrs["name"].blank? }
  include Placeholder

  validates_presence_of :title, :subtitle, :body, :main_image, :thumb

  def self.angular
    where(subtitle: "Angular ")
  end

  scope :ruby_programming, -> { where(subtitle: "Ruby Programming") }


  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator
     self.thumb ||= Placeholder.image_generator
  end
end
