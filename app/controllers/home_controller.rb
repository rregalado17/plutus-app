class HomeController < ActionController::Base

    def hello
        render html: "Hello World"
    end

end