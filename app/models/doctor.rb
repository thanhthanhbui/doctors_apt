class Doctor < ApplicationRecord
  has_many :apts, dependent: :destroy
  has_many :patients, through: :apts

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
