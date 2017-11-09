# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController


  def index
     # Do nothing, and rails will be #magic
  end

  def get_stats
    sleep 3 # prentending to think
    render json: {
      number_of_people: 3586,
      total_time_in_minutes: 47056,
      my_person: {
        name: "Waldo",
        img: "http://a4.mzstatic.com/eu/r30/Purple/v4/0f/13/11/0f13111d-c7f9-0a1e-6f02-b2a7cad6542e/icon128-2x.png"
      },
      my_place: {
        name: 'Punta Cana',
        img: "http://www.godominicanrepublic.com/wp-content/uploads/2013/10/playa-juanillo-punta-cana11-1920x1080.jpg"
      }
    }
  end


end
