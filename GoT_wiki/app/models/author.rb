class Author < ActiveRecord::Base
  has_many :articles
  has_secure_password
end
