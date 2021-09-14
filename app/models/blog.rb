class Blog < ApplicationRecord
	enum status: {draft: 0, published: 1}
	extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  has_and_belongs_to_many :tags
end
