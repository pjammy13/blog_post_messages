class Post < ActiveRecord::Base
	has_many :messages, :dependent => :delete_all
  	belongs_to :blog
  	validates :title, :content, presence: true
  	validates :title, length: {minimum: 7}

end
