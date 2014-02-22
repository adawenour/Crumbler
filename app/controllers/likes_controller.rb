class LikesController < ApplicationController
	  def create
	  	 @like = Like.new(like_params)

      if @like.save
        redirect_to @like.post, notice: 'Liked the post!' 
      else
       redirect_to root_url, notice: "Had an issue creating that Like"
      end
    end

    private
	    # Never trust parameters from the scary internet, only allow the white list through.
	    def like_params
	      params.require(:like).permit(:post_id)
	    end
	  end
