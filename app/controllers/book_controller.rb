class BookController < ApplicationController

    get '/books' do
        book_list = Book.all 
        book_list.to_json(only: [:title, :image, :id], include: {authors: {only: [:name]}})
    end

    get '/books/:id' do
        book = Book.find(params[:id])
        book.to_json(include: {authors: {only: [:name]}})
    end

    post '/books' do
        new_book = Book.create(title: params[:title], image: params[:image], isbn: params[:isbn], desc: params[:desc], publisher: params[:publisher])

        new_authorbook = params[:author].map {|author| Authorbook.create(author_id: author[:id], book_id: new_book.id)}

        new_book.to_json
        new_authorbook.to_json
    end

end 