class SearchController < ApplicationController
  
  def index
    
    #if !current_user
    #  redirect_to '/auth/facebook', notice: 'You must login to Facebook to search!'
    #end


    filter = params[:filter]

    events = Event.all
    
    @events = []
    i = 0
    
    origin = nil
    destination = nil
    
    events.each do |event|
      routes = Route.find_all_by_event_id(event.id)
      
      unless routes.empty?
        routes.each do |route|
          if route.kind == 0
            origin = route.city_id
          else
            destination = route.city_id
          end
        end
        
        if origin == params[:origin].to_i && destination == params[:destination].to_i
          @events[i] = event
          i = i + 1 
        end
        
      end
    end
    
  end
  
end
