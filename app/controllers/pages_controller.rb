class PagesController < ApplicationController
    before_action :set_kitten_url, only: [:kitten, :kittens]

    def welcome
        @header = "i am amazing"
        render :welcome
    end

    def secrets
        if params[:magic_word] == "Housestark"
            render :secrets
        else
            redirect_to "http://www.dunenovels.com/"
        end
    end

    def about
        @header = "i am amazing"
        render :about
    end

    def contest
        flash[:notice] = "sorry, the contest is over"
        redirect_to :welcome
    end

    def kitten
    end

    def kittens
    end

    def set_kitten_url
        requested_size = params[:size]
        @kitten_url = "http://placekitten.com/#{requested_size}"
    end
end
