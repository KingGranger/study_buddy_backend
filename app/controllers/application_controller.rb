class ApplicationController < ActionController::API
  before_action :authorized

   def issue_token(payload)
     JWT.encode(payload, ENV['key'], 'HS256')
   end

   def current_user
     @user ||= User.find_by(id: user_id)
   end

   def user_id
     decoded_token.first['id']
   end

   def decoded_token
     begin
        JWT.decode(request.headers['Authorization'], ENV['key'], true, { :algorithm => 'HS256' })
      rescue JWT::DecodeError
       [{}]
      end
   end

   def authorized
     render json: {message: "Not welcome" }, status: 401 unless logged_in?
   end

   def logged_in?
     !!current_user
   end
end
