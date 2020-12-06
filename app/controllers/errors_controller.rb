class ErrorsController < ApplicationController
  def show
    @error_status = error_status

    if ajax_request?
      render plain: "error message", status: error_status
    end
  end

  private

    def error_status
      params[:error_status]
    end

    def ajax_request?
      request.xhr?
    end
end