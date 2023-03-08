class PasswordsController < ApplicationController
  UPPERCASE = ('A'..'Z').to_a
  LOWERCASE = ('a'..'z').to_a
  NUMBERS = ('0'..'9').to_a
  SPECIAL_CHARS = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '-', '=', '[', ']', '{', '}', '|', '\\', ';', ':', '\'', '"', '<', '>', ',', '.', '/', '?']

  def generate

    length = params[:length].to_i || 8

    all_chars = []
    all_chars += UPPERCASE if !params[:uppercase]
    all_chars += LOWERCASE if !params[:lowercase]
    all_chars += NUMBERS if !params[:number]
    all_chars += SPECIAL_CHARS if !params[:special_char]

    @password = Array.new(length) { all_chars.sample }.join[0, length]
  end
end
