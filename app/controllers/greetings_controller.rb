class GreetingsController < ApplicationController
skip_before_action :require_login, only: [:welcome]



end
