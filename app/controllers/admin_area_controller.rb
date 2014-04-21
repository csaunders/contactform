class AdminAreaController < ApplicationController
  http_basic_authenticate_with name: Figaro.env.username, password: Figaro.env.password
end
