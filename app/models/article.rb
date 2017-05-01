class Article < ActiveRecord::Base
	# Relationships
	has_one :category

	# Validations
	validates_presence_of :title, :content

	# Scope
	scope :active, where('active = ?', true)
  scope :alphabetical, order('title')

end
