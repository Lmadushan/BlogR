class PostsController < ApplicationController

	before_action :require_login

	def index
		@posts = current_user.posts.order(:id)
	end

	def show
		@post = current_user.posts.find(params[:id])
	end

	def destroy
		post = current_user.posts.find(params[:id])
		post.destroy
		redirect_to posts_path, notice: " #{post.title} Post Deleted."
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			redirect_to posts_path(@post), notice: "Post Created!"
		else
			@errors = @post.errors.full_messages
			render :new
		end
	end 

	def edit 
		@post = current_user.posts.find(params[:id])
	end

	def update
		@post = current_user.posts.find(params[:id])

		if @post.update_attributes(post_params)
			redirect_to posts_path(@post), notice: "Post Updated!"
		else
			@errors = @post.errors.full_messages
			render :edit
		end
	end 


	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
