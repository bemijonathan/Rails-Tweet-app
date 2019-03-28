class PostsController < ApplicationController
    before_action :authenticate_user

    def show 
        @posts = Post.all
    end 
    def view 
        @post = Post.find_by(id: params[:id])
        @comment = Comment.where(post_id: @post.id)
    end 
    def new
        @post = Post.new
    end 
    def create
        @post = Post.new(content: params[:content], title: params[:title])
        @post.user_id = session[:user_id]
        if @post.save 
            redirect_to("/posts")
            flash[:notice] = "saved succesfully"
        else
            flash[:notice] = "unable to save succesfully"
            render("posts/new")
        end
    end
    def destroy
        @post = Post.find_by(id: params[:id])
        @post.destroy
        @post.save
        redirect_to("/posts")
    end
end
