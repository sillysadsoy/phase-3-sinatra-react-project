class BookController < ApplicationController

    get '/books' do
        book_list = Book.all 
        book_list.to_json(only: [:title, :image, :id], include: {authors: {only: [:name]}})
    end

    get '/books/:id' do
        book = Book.find(params[:id])
        book.to_json
    end

    post '/books' do
        new_book = Book.create(params)
        # Authorbook.create(author_id: params[:author], book_id: new_book.id)
        new_book.to_json
    end

end 