class RoutesController < ApplicationController
    def hello
        puts "something here____________________________________________________________"
        render text: :hello!
    end
end
