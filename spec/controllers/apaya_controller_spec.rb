require 'spec_helper'

describe ApayaController do

  describe "GET 'coba'" do
    it "returns http success" do
      get 'coba'
      response.should be_success
    end
  end

end
