class PostsController < ApplicationController

    def new
        @post = Post.new
    end 

    def show
        @posts = Post.find(params[:id])
    end 

    def create
        @posts = Post.new(post_params)
        redirect_to post_path(@posts)
    end 

    def like 
        @like = Post.find(params[:id])
        @post.likes += 1
        @post.save 
        redirect_to  @post
    end 

    private

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end 
end


