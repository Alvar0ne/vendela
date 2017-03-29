class Region < ApplicationRecord
    has_many :comunas
    has_many :publications
end
