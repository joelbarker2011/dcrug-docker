class ApplicationController < ActionController::Base
  def test
    render plain: 'Look ma, no restart!'
  end
end
