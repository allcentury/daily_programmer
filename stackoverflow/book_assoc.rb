class Book < ActiveRecord::Base
  has_many :chapters
  has_many :pages
end

class Chapter < ActiveRecord::Base
  belongs_to :book
  has_many :pages
end

class Page < ActiveRecord::Base
  belong_to :chapter
end
