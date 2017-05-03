class ResultsController < ApplicationController
	
	# require 'googlebooks'
	
	def create
		@user = User.find(session[:user_id]) 
		print params[:question][:c1]
		@question = params[:question_id]


		if @question == "1"
			# if params[:question][:c1] == "1"
			# 	@book_1 = GoogleBooks.search('subject:nonfiction').first
			# 	BookList.create(user:@user, book_list:@book_1)		
			
			# elsif params[:question][:c2] == "2"
			# 	@book_1 = GoogleBooks.search('subject:fantasy')
			# 	BookList.create(user:@user, book_list:@book_1)
			
			# elsif params[:question][:c3] == "3"
			# 	@book_1 = GoogleBooks.search('subject:romance')
			# 	BookList.create(user:@user, book_list:@book_1)

			# elsif params[:question][:c4] == "4"
			# 	@book_1 = GoogleBooks.search('subject:thrillers')
			# 	BookList.create(user:@user, book_list:@book_1)
		
			# elsif params[:question][:c5] == "5"
			# 	@book_1 = GoogleBooks.seach('subject:young adult')
			# 	BookList.create(user:@user, book_list:@book_1)	
			# end
			redirect_to "/users/quiz/#{@user.id}/2" 
		end
		
		if @question == "2"
			# if params[:question][:c1] == "1"
			# 	@book_2 = GoogleBooks.search('subject:nonfiction')
			# 	BookList.create(user:@user, book_list:@book_2)
			
			# elsif params[:question][:c2] == "2"
			# 	@book_2 = GoogleBooks.search('subject:science fiction')
			# 	BookList.create(user:@user, book_list:@book_2)
			
			# elsif params[:question][:c3] == "3"
			# 	@book_2 = GoogleBooks.search('subject:romance')
			# 	BookList.create(user:@user, book_list:@book_2)

			# elsif params[:question][:c4] == "4"
			# 	@book_2 = GoogleBooks.search('subject:suspense')
			# 	BookList.create(user:@user, book_list:@book_2)
		
			# elsif params[:question][:c5] == "5"
			# 	@book_2 = GoogleBooks.seach('subject:young adult')
			# 	BookList.create(user:@user, book_list:@book_2)	
			# end
			redirect_to "/users/quiz/#{@user.id}/3" 
		end

		if @question == "3"
			# if params[:question][:c1] == "1"
			# 	@book_3 = GoogleBooks.search('subject:historical fiction')
			# 	BookList.create(user:@user, book_list:@book_3)
			
			# elsif params[:question][:c2] == "2"
			# 	@book_3 = GoogleBooks.search('subject:science fiction')
			# 	BookList.create(user:@user, book_list:@book_3)
			
			# elsif params[:question][:c3] == "3"
			# 	@book_3 = GoogleBooks.search('subject:contemporary fiction')
			# 	BookList.create(user:@user, book_list:@book_3)

			# elsif params[:question][:c4] == "4"
			# 	@book_3 = GoogleBooks.search('')
			# 	BookList.create(user:@user, book_list:@book_3)
		
			# elsif params[:question][:c5] == "5"
			# 	@book_3 = GoogleBooks.seach('')
			# 	BookList.create(user:@user, book_list:@book_3)	
			# end
			redirect_to "/users/quiz/#{@user.id}/4"
		end 
		
		if @question == "4"
			# if params[:question][:c1] == "1"
			# 	@book_4 = GoogleBooks.search('Jane Austin')
			# 	BookList.create(user:@user, book_list:@book_4)
				
			# elsif params[:question][:c2] == "2"
			# 	@book_4 = GoogleBooks.search('Truman Capote')
			# 	BookList.create(user:@user, book_list:@book_4)
			
			# elsif params[:question][:c3] == "3"
			# 	@book_4 = GoogleBooks.search('Shakespeare')
			# 	BookList.create(user:@user, book_list:@book_4)

			# elsif params[:question][:c4] == "4"
			# 	@book_4 = GoogleBooks.search('George R.R. Martin')
			# 	BookList.create(user:@user, book_list:@book_4)
		
			# elsif params[:question][:c5] == "5"
			# 	@book_4 = GoogleBooks.seach('Patricia Cornwell')
			# 	BookList.create(user:@user, book_list:@book_4)	
			# end
			redirect_to "/users/quiz/#{@user.id}/5"
		end

		if @question == "5"
			# if params[:question][:c1] == "1"
			# 	@book_5 = GoogleBooks.search('categories:play')
			# 	BookList.create(user:@user, book_list:@book_5)
			
			# elsif params[:question][:c2] == "2"
			# 	@book_5 = GoogleBooks.search('categories:novel')
			# 	BookList.create(user:@user, book_list:@book_5)
			
			# elsif params[:question][:c3] == "3"
			# 	@book_5 = GoogleBooks.search('categories:short stories')
			# 	BookList.create(user:@user, book_list:@book_5)

			# elsif params[:question][:c4] == "4"
			# 	@book_5 = GoogleBooks.search('categories:series')
			# 	BookList.create(user:@user, book_list:@book_5)
		
			# elsif params[:question][:c5] == "5"
			# 	@book_5 = GoogleBooks.seach('categories:graphic novel')
			# 	BookList.create(user:@user, book_list:@book_5)	
			# end
			redirect_to "/users/#{@user.id}"
		end
	end 
end
