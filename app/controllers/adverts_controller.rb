class AdvertsController < ApplicationController
    
    def index
       @advert = Advert.new 
       @adverts = Advert.all.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
    end
    
    def create
        @advert = Advert.new(secure_params)
        if @advert.save
            flash[:success] = "Объявление отправлено"
        else
            flash[:danger] = "Заголовок не может превышать 64 символа, а сообщение 1024."
        end
        redirect_to root_url
    end
    
    def show
       @advert = Advert.find(params[:id]) 
       @responses = @advert.responses.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
       @response = Response.new
    end
    
    private
    
    def secure_params
       params.require(:advert).permit(:email, :content, :title) 
    end
end
