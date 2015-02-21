class Pic < ActiveRecord::Base
  valiates :name, :date, :description, presence: true
  vaidates :name, uniqueness: true
  
end
