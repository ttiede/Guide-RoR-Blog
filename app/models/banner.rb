class Banner < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :attachment, presence: true # Make sure the owner's name is present

end
