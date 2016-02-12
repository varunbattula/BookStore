class BooksController < ApplicationController

 def index
	@books = Book.all
 end

 def new
  @book = Book.new
 end

 def create
 	book_params = params.require(:book).permit(:title, :author)
 	book = Book.new(book_params)
 	if book.save
 		flash[:notice]= "The details are saved successfully"
 		redirect_to :books
 	else
 		render :new
 	end
 end

end
