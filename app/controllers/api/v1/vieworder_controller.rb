module Api
    module V1
        class VieworderController < ApplicationController
            protect_from_forgery with: :null_session

            def index                    
                order_det=Vieworder.all
                render json: {status: 'SUCCESS', message: ' Order updated', data: order_det}, status: :ok                         
            end           
        end
    end
end
