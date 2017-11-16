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

  def one_person
    render json: [{
      pic: 'https://material-components-web.appspot.com/images/animal3.svg'
    }]
  end

  def two_people
    render json: [{
      pic: 'https://material-components-web.appspot.com/images/animal3.svg'
    }, {
      pic: 'https://material-components-web.appspot.com/images/animal2.svg'
    }]
  end

  def three_people
    render json: [{
      pic: 'https://material-components-web.appspot.com/images/animal3.svg'
    }, {
      pic: 'https://material-components-web.appspot.com/images/animal2.svg'
    }, {
      pic: 'https://bootdey.com/img/Content/avatar/avatar6.png'
    }]
  end

  def four_people
    render json: [{
      pic: 'https://material-components-web.appspot.com/images/animal3.svg'
    }, {
      pic: 'https://material-components-web.appspot.com/images/animal2.svg'
    }, {
      pic: 'https://bootdey.com/img/Content/avatar/avatar6.png'
    }, {
      pic: 'http://www.conveyancemarketinggroup.com/subconveyance/wp-content/uploads/2015/09/Carolyn-Dobson-avatar-VPBD.png'
    }]
  end

  def five_people
    render json: [{
      pic: 'https://material-components-web.appspot.com/images/animal3.svg'
    }, {
      pic: 'https://material-components-web.appspot.com/images/animal2.svg'
    }, {
      pic: 'https://bootdey.com/img/Content/avatar/avatar6.png'
    }, {
      pic: 'http://www.conveyancemarketinggroup.com/subconveyance/wp-content/uploads/2015/09/Carolyn-Dobson-avatar-VPBD.png'
    }, {
      pic: 'http://s3.envato.com/files/106310.jpg'
    }]
  end


end
