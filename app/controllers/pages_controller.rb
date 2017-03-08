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

  def fortune
    fortunes = [
      "You will be a billionaire",
      "You will be hungry in 1 hour",
      "You will fall asleep in 1 minute"
    ]
    @fortune = fortunes.sample
  end

  def lotto
    @numbers = []
    6.times do
      @numbers << rand(1..60)
    end
  end

  def count
  end


  def bonus
    person1 = { :first_name => "Some", 
                :last_name => "Person", 
                :account_number => rand.to_s[2..11], 
                :email_address => "email@email.com" 
              }

    person2 = { :first_name => "Second", 
                :last_name => "Person", 
                :account_number => rand.to_s[2..11], 
                :email_address => "email@email.com" 
              }

    person3 = { :first_name => "Third", 
                :last_name => "Person", 
                :account_number => rand.to_s[2..11], 
                :email_address => "email@email.com" 
              }

    # people = []
    # people << person1
    # people << person2
    # people << person3

    @people = [person1, person2, person3]
  end

end
