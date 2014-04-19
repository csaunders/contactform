class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    redirect_to landing_page_url
  end

  def landing_page_url
    host
  end

  def successful_submission
    "#{host}/#{Figaro.env.success_page}"
  end

  def unsuccessful_submission(model)
    fields = model.errors.keys.join(',')
    message = URI.escape(model.errors.full_messages.to_sentence)
    "#{host}/#{Figaro.env.failure_page}?fields=#{fields}&message=#{message}"
  end

  def host
    "http://#{Figaro.env.host}"
  end
end
