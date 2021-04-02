class FriendshipsController < ApplicationController
    
    def index
        @friends = Friendship.all
        @past_events = Event.past
        @upcoming_events = Event.upcoming
      end
    
      # GET /events/1 or /events/1.json
    
      def show; end
    
      # GET /events/new
    
      def new
        @friendship = Friendship.new
      end
    
      # GET /events/1/edit
    
      def edit; end
    
      # POST /events or /events.json
    
      def create
        @user = current_user.created_friendship.build(friend_params)
    
        
    
            
      end
    
      # PATCH/PUT /events/1 or /events/1.json
    
      
      
    
    
      
      private
    
      #
    
      def event_params
        params.require(:event).permit(:creator_id, :title, :description, :location, :date, :user_id)
      end
    end
    

