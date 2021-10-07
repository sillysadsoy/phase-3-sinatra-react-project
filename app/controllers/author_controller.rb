class AuthorController < ApplicationController

    get '/authors' do 
        authors_list = Author.all
        authors_list.to_json( include: {books: {only: [:title, :id]}})
    end

    get '/authors/:id' do
        author = Author.find(params[:id])
        author.to_json(include: :books)
    end

    post '/authors' do
        new_author = Author.create(params)
        new_author.to_json
    end

end 