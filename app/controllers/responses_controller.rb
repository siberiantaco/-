class ResponsesController < ApplicationController
    def create
        @advert = Advert.find(params[:advert_id])
        @response =  @advert.responses.build(secure_params)
        if @response.save
            flash[:success] = "Ответ отправлен."
        else
            flash[:danger] = " Ответ не может превышать 512 символов."

        end
        redirect_to advert_url(@advert)
    end
     private
    
    def secure_params
       params.require(:response).permit(:email, :content) 
    end
end
