class CommentsController < ApplicationController


  get '/books/:id/comments/new' do

  end

  post '/comments' do
    book = Book.find(params[:id])
    comment = book.comments.create(params[:comment])
  end

end
