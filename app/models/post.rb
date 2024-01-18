class Post < ApplicationRecord
    validates_presence_of :title
    validates_presence_of :category
    validates_presence_of :content
    validates_presence_of :date
    has_rich_text :content
end
