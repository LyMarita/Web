class CategoriesController < ApplicationController
	def index
		@show_category=Category.all	
	end
	def show
		@category=Category.find(params[:id])
	end	
	def edit
		
		@category=Category.find(params[:id])
	end

	def update
		
		@category=Category.find(params[:id])
		@category.update(category_params)
		redirect_to categories_url
	end	

	def new
		
		@category=Category.new
	end	
	def create
		#@show_category=Category.all
		@category=Category.new(category_params)
		if @category.save
			redirect_to categories_url 
		else
			render :category
		end	
	end	

	def destroy
		@category=Category.find(params[:id])
		@category.destroy
		redirect_to categories_url
	end
	def category_params
		params.require(:category).
					permit(:cate_name)
	end
end
