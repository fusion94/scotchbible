class CommentsController < ApplicationController
	#http_basic_authenticate_with :name => "fusion94", :password => "ppeieij0", :except => [:index, :show]

  def create
    @scotch = Scotch.find(params[:scotch_id])
    @comment = @scotch.comments.create(params[:comment])
    redirect_to scotch_path(@scotch)
  end

  def destroy
    @scotch = Scotch.find(params[:scotch_id])
    @comment = @scotch.comments.find(params[:id])
    @comment.destroy
    redirect_to scotch_path(@scotch)
  end

end
