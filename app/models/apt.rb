class Apt < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
end
