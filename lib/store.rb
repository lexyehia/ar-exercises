class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_some_apparels

  before_destroy :no_destruct_if_has_employees

  private
  def must_carry_some_apparels
    if (@mens_apparel == false && @womens_apparel == false)
      errors.add(:store_id, "must have either men's or women's apprels as true")
    end
  end

  def no_destruct_if_has_employees
    if (self.employees.size > 0)
      throw :abort
    end
  end
end
