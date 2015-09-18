class Article < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  belongs_to :house

end
