class Decision::Decision < ApplicationRecord
  belongs_to :entry
  belongs_to :decision_making

  after_create { reload }
  
end
