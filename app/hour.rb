class Hour < ActiveRecord::Base
	belongs_to :user
	validates  :hours, numericality: { less_than: 18 }
	validates  :hours, numericality: { only_integer: true }
	validates  :done, length: { maximum: 50 }
	validates  :post_date, uniqueness: true
	validates  :user_id, presence: true

    scope :a_week, -> {
    now = Date.today
    mae = now - 7
    where("post_date <= ? AND ? <= post_date", now, mae ) }

    scope :a_month, -> {
    now = Date.today
    mae = now.months_ago(1)
    where("post_date <= ? AND ? <= post_date", now, mae ) }


end
