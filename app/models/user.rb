class User < ActiveRecord::Base

	attr_accessor :password

	has_many :photos
	# include Mongoid::Document
 #  include Mongoid::Paperclip

 #  has_mongoid_attached_file :photo

	validates_confirmation_of :password
	validates :email, presence: true
	before_save :encrypt_password
	validates_uniqueness_of :email, on: :create
	validates :password, presence: true, on: :create
  validates :password_confirmation, presence: true, on: :create
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  validates :photo, :attachment_presence => true
  validates_with AttachmentPresenceValidator, :attributes => :photo
  validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 2.megabytes
	
	def encrypt_password
	  self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	end

	def self.authenticate(email, password)
	  user = User.where(email: email).first
	  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
	     user
	  else
      nil
	  end
  end
end


 #User model does not actually have a password column in the database. 
 #In order to persist one in memory long enough to generate a password hash, 
 #we need to allow password as an attribute on User temporarily.