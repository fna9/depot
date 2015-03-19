class Product < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 200}
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :weight, presence: true, numericality: {only_integer: true, greater_than: 0}, allow_blank: true
end
