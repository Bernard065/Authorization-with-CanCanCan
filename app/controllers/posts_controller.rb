class PostsController < ApplicationController
    def edit
      @post = Post.find(params[:id])
      authorize! :update, @post
      # Proceed with editing the post
    end
end
  