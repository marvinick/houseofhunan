class Menu < ActiveRecord::Base
	validates_presence_of :name
	mount_uploader :attachment, AttachmentUploader
end
