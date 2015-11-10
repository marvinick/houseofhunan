class Menu < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
end
