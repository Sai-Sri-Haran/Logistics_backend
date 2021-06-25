module Api 
    module V1
        class SigninController < ApplicationController
            protect_from_forgery with: :null_session
            
            def create 
                email = params[:signinDetails][:email]
                password = params[:signinDetails][:password]
                values = Signin.find_by(email: email)
                if Signin.find_by(email: email,password: password)
                    
                    render json: {status: 'SUCCESS', message: 'Successfully Logged In.', data: values}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Log In credentails are invalid'}
                end
            end

            private 

            def signin_params
                params[:signinDetails].permit(:email, :password)
            end
        end
    end
end 