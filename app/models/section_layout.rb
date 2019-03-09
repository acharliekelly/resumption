class SectionLayout < ApplicationRecord
  belongs_to :section, dependent: :destroy
  belongs_to :layout, dependent: :destroy
end
