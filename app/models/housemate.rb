class Housemate < ApplicationRecord
	enum pref_gender: [:male , :female, :gender_doesnt_matter]
	enum pref_occupation: [:professional , :student, :occupation_doesnt_matter]

	belongs_to :room, required: false
end
