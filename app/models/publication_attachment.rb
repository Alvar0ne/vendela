class PublicationAttachment < ApplicationRecord

  mount_uploader :avatar, AvatarUploader
  belongs_to :publication
end
