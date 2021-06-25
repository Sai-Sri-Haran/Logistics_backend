module Api
    module V1
        class OrderController < ApplicationController
            protect_from_forgery with: :null_session
            def create
                order=Order.find(params[:order_det][:order_id])
                if order.update(order_params)
                    render json: {status: 'SUCCESS', message: 'Updated Successfully', data: status}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Not Updated '}
                end
            end
            private 

            def order_params
                params[:order_det].permit(:status)
            end
        end
    end
end
