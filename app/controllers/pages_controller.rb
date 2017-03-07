class PagesController < ApplicationController

  def hello_method
    @title = "Hello!"
    @current_time = Time.now.strftime("%A, %b %d")

    num_1 = 1
    num_2 = 2
    @sum = num_1 + num_2

    render 'hello.html.erb'
  end

  def contact_method
    @title = "Contact Us"
    render 'contact.html.erb'
  end

  def about
    @title = "About Us"
  end

end
