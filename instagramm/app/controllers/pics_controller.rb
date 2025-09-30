class PicsController < ApplicationController
    before_action :find_pic, only: [ :show, :edit,  :destroy ]
   # :update,

   def index
     @pics = Pic.all.order("created_at DESC")
   end

    def new
    @pic = @pic = current_user.pics.build
    end

    def show
    end

    def create
      @pic = Pic.new(pic_params)
        if @pic.save
        redirect_to @pic, notice: "Yess It was posted"
        else
        render "new"
        end
    end

    def destroy
      @pic.destroy
      redirect_to root_path
    end


    private

    def pic_params
    params.require(:pic).permit(:title, :description)
    end

    def find_pic
      @pic = Pic.find(params[:id])
    end
end
