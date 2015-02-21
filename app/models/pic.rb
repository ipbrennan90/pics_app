class Pic < ActiveRecord::Base
  validates :title, :date, :description, presence: true
  validates :title, uniqueness: true

end
