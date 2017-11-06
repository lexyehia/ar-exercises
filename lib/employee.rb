class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, inclusion: 40..200

  before_create :create_password

  private
  def create_password
    self.password = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
  end
end
