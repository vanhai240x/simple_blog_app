class PagesController < ApplicationController
    def about
        @title = 'About Us'
        @content = 'This is a about page'
    end
end
