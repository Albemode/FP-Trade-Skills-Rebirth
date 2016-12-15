class Log < ApplicationRecord
  belongs_to :master_id
  belongs_to :apprentice_id
end
