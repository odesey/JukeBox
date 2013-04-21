class ApplicationController < ActionController::Base
  # protect_from_forgery
  # before_filter :protect_from_evil

  # def protect_from_evil
  # 	if session[:id].nil? && params[:password] == '1234'
  # 		redirect_to '/sorry.html'
  # 	end
  # end
end
