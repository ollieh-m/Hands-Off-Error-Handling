class ErrorsController < ApplicationController
  def show
    @error_status = error_status

    if ajax_request?
      render plain: error_status, status: error_status
    end
    flash.now[:alert] = "Flash message"
  end

  private

    def error_status
      params[:error_status]
    end

    def ajax_request?
      request.xhr?
    end
end