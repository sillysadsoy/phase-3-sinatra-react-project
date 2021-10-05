class Authorbook < ActiveRecord::Base 
    belongs_to :author
    belongs_to :book
end 

# Authorbook.create([{author_id: 1, book_id: 1}, {author_id: 1, book_id: 2}, …])