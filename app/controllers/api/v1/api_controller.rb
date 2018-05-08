class Api::V1::ApplicationController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }


end
