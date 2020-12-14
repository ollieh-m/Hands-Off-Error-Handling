class ErrorsController < ApplicationController
  def show
    @error_message = error_message

    if ajax_request?
      render plain: ajax_error_message, status: error_status
    end
  end

  private

    def error_message
      I18n.t("errors.#{error_status}.message")
    end

    def error_status
      params[:error_status]
    end

    def ajax_request?
      request.xhr?
    end

    def ajax_error_message
      I18n.t("errors.#{error_status}.ajax_message")
    end
end
