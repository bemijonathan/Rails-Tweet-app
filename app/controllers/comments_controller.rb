class CommentsController < ApplicationController
    before_action :set_current_user
    before_action :authenticate_user
    def new
        @comment = Comment.new
        @comment.user_id = session[:user_id]
        @comment.content = params[:content]
        @comment.post_id = params[:id]
        if @comment.save 
            flash[:notice] = "comment added succesfully"
            redirect_to("/posts/#{params[:id]}")
        else
            redirect_to("/")
        end
    end 
    def destroy 
        @comment = Comment.find_by(id: params[:id])
        @comment.destroy
        @comment.save
    end
end
