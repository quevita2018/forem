# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    render text: "A user's page!"
  end
end
