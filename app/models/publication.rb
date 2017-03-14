class Publication < ApplicationRecord
	extend FriendlyId
include AASM

  friendly_id :titulo, use: :slugged



  belongs_to :user


  has_attached_file :image, styles: {large: "600x600>", medium: "200x200>" , thumb: "100x100"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

scope :most_recent, -> { order(id: :desc)}

  def should_generate_new_friendly_id?
  	titulo_changed?
  end

def display_day_published

	"Publicado el #{created_at.strftime('%-b %-d, %Y')}"

end




aasm column: "state" do

	state :in_draft, initial: true
	state :published

	event :publish do
		transitions from: :in_draft, to: :published
	end

	event :unpublish do

		transitions from: :published, to: :in_draft
	end

	
end






end
