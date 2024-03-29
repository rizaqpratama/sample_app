module SessionsHelper
	def sign_in(user)
		session[:user_id]=user.id
		self.current_user = user
	end

	def current_user=(user)
		@current_user=user
	end

	def current_user
		@current_user ||= User.find(session[:user_id])
	end

	def current_user?(user)
		user==current_user
	end
	
	def signed_in_user
    	unless signed_in?
      		store_location
      		redirect_to signin_path, notice: "Please sign in." unless signed_in?
    	end
  	end

	def signed_in?
		!session[:user_id].nil?
	end
	def sign_out
		self.current_user = nil
		session[:user_id]=nil
		#session.delete :user_id
	end

	def redirect_back_or(default)
		redirect_to (session[:return_to] || default)
		session.delete(:return_to)
	end

	def store_location
		session[:return_to] = request.fullpath
	end
end
