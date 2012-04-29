class SearchController < ApplicationController
  
  def index
    unless params[:user_id].nil?
      session[:user_id] = params[:user_id]
    end

    @filter = params[:filter]
    @filter_0 = params[:filter_0]
    @filter_1 = params[:filter_1]
    
    @origin = params[:origin]
    @destination = params[:destination]
    
    events = nil
    
    if @filter.nil?
      if @filter_0.nil? && !@filter_1.nil?
        events = Event.find_all_by_kind(@filter_1.to_i)
      elsif !@filter_0.nil? && @filter_1.nil?
        events = Event.find_all_by_kind(@filter_0.to_i)
      else
        events = Event.all
      end
    else
      events = Event.find_all_by_kind(@filter.to_i)
    end
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
        
        if origin == @origin.to_i && destination == @destination.to_i
          @events[i] = event
          i = i + 1 
        end
        
      end
    end
    
    @cities = City.all
    
  end
  
end
