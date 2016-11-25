class PostsController < ApplicationController
	def index
		@show_post=Post.all	
	end
	def show
		@post=Post.find(params[:id])
	end	
	def edit
		
		@post=Post.find(params[:id])
		@category=Category.all  
		@user=User.all
	end

	def update
		
		@post=Post.find(params[:id])
		@post.update(post_params)
		redirect_to posts_url
	end	

	def new
		
		@post=Post.new
	end	
	def create
		#@show_category=Category.all
		@post=Post.new(post_params)
		if @post.save
			redirect_to post_url 
		else
			render :new
		end	
	end	

	def destroy
		@post=Post.find(params[:id])
		@post.destroy
		redirect_to posts_url
	end
	def post_params
		params.require(:post).
					permit(:title,:description,:image_file_name,:date,:publish)
	end

	# 	def index
	# 	@movie=Movie.find(params[:id])
	# 	@reviews=@movie.reviews
	# end	
	# def new	
	# 	@movie=Movie.find(params[:id])
	# 	@review=@movie.reviews.new
	# end		
	# def create
	# 	@movie=Movie.find(params[:id])
	# 	@review=@movie.reviews.new(review_params)
	# 	if @review.save
	# 		redirect_to movie_url,notice: "Thank you"
	# 	else
	# 		render :new
	# 	end	
	# end
	# def review_params
	# 	params.require(:review).
	# 				permit(:name,:stars,:comment)
	# end
end
