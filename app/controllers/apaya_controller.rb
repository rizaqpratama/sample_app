class ApayaController < ApplicationController
  def coba
  	@user= User.find(1)
  end
end
