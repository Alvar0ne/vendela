class Publication < ApplicationRecord
	extend FriendlyId
  friendly_id :titulo, use: :slugged

  belongs_to :user


  has_attached_file :image, styles: {large: "600x600>", medium: "300x300>" , thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

scope :most_recent, -> { order(id: :desc)}

  def should_generate_new_friendly_id?
  	titulo_changed?
  end

def display_day_published

	"Publicado el #{created_at.strftime('%-b %-d, %Y')}"

end



end
