class BookController < ApplicationController

    get '/books' do
        book_list = Book.all 
        book_list.to_json(only: [:title, :image], include: {authors: {only: [:name]}})
    end

    post '/books' do
        new_book = Book.create(params)
        # new_book.authors.create(params[:author])
        new_book.to_json

    end

end 