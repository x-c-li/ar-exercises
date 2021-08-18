class MyValidator < ActiveModel::Validator
  def validate(record)
    unless record.mens_apparel || record.womens_apparel
      record.errors.add :mens_apparel, "Has to sell either mens or womens apparel!"
    end
  end
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validates_with MyValidator
  # Stores must carry at least one of the men's or women's apparel 
end

