class Section < ApplicationRecord
  belongs_to :sectype
  belongs_to :user
end
