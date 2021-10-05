class AuthorController < ApplicationController

    get '/authors' do 
        authors_list = Author.all
        authors_list.to_json
    end

    post '/authors' do
        new_author = Author.create(params)
        new_author.to_json
    end

end 