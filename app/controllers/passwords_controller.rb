class PasswordsController < ApplicationController
  def generate
    length = params[:length].to_i || 8
    @password = SecureRandom.hex(length)[0, length]
  end
end
