class PostsController < ApplicationController
    before_action :authenticate_user

    def show 
        @posts = Post.all
    end 
    def view 
        @post = Post.find_by(id: params[:id])
    end 
    def new
        @post = Post.new
    end 
    def create
        @post = Post.new(content: params[:content])
        if @post.save 
            redirect_to("/posts")
            flash[:notice] = "saved succesfully"
        else
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
