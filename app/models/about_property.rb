class AboutProperty < ApplicationRecord

	enum property_type: [:house , :flat, :studio]

	belongs_to :room, required: false
end
