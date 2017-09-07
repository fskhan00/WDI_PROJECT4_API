class ApplicationController < ActionController::API

  # before_action :authenticate_user # f)

  def authenticate_user
    # e)
    render json: { errors: ["You must be logged in to view this content"]}, status: 401 unless user_signed_in?
  end

  def user_signed_in?
    !!current_user # d)
  end

  def current_user
    @current_user ||= User.find(decoded_token[:id]) if id_found? # a)
  rescue # b)
    nil # c)
  end

  private

    def id_found?
      token && decoded_token && decoded_token[:id]
    end

    # ability to decode and encode token
    def decoded_token
      @decoded_token ||= Auth.decode(token) if token
    end

    def token
      @token ||= if request.headers['Authorization'].present?
        request.header['Authorization'].split.last
      end
    end
end
