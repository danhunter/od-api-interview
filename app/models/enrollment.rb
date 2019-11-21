class Enrollment < ApplicationRecord
  belongs_to :clinician
  belongs_to :consult_rate
end
