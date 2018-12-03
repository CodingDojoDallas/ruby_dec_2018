class SergeantsController < ApplicationController

    def index
        render plain: "what do you want me to say?"
    end

    def hello
        render plain: "hello!"
    end

    def say_hello
        render plain: "saying hello"
    end

    def uneeded_greeting
        redirect_to "/say/hello/joe"
    end

    def greeting
        @name = params[:name]
        render plain: "hello, #{@name}"
    end

    def times
        session[:times] = 0 if !session.has_key?(:times)
        session[:times] += 1
        @times = session[:times]
        render plain: "you have visited this page #{@times} times!"
    end

    def times_restart
        session[:times] = 0
        render plain: "destroyed the session"
    end

end
