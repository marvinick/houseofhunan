class Menu < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name
	has_many :foods, dependent: :destroy
	
	mount_uploader :attachment, AttachmentUploader
	
end
