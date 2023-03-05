class PostsControllerController < ApplicationController

    def index
        @posts = Posts.all
        render :index
    end

    def show
        @post = Post.find(params[:id])
        render :show
    end

    def create
        @post = Post.new(drink_params)
        if @post.save
            render :show
        else
            render json: @post.errors.full_messages, status 422
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :drink_id, :text, :rating)
    end


end
