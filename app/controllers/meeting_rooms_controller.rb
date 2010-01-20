class MeetingRoomsController < ApplicationController
  # GET /meeting_rooms
  # GET /meeting_rooms.xml
  def index
    @meeting_rooms = MeetingRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meeting_rooms }
    end
  end

  # GET /meeting_rooms/1
  # GET /meeting_rooms/1.xml
  def show
    @meeting_room = MeetingRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meeting_room }
    end
  end

  # GET /meeting_rooms/new
  # GET /meeting_rooms/new.xml
  def new
    @meeting_room = MeetingRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meeting_room }
    end
  end

  # GET /meeting_rooms/1/edit
  def edit
    @meeting_room = MeetingRoom.find(params[:id])
  end

  # POST /meeting_rooms
  # POST /meeting_rooms.xml
  def create
    @meeting_room = MeetingRoom.new(params[:meeting_room])

    respond_to do |format|
      if @meeting_room.save
        flash[:notice] = 'MeetingRoom was successfully created.'
        format.html { redirect_to(@meeting_room) }
        format.xml  { render :xml => @meeting_room, :status => :created, :location => @meeting_room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meeting_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meeting_rooms/1
  # PUT /meeting_rooms/1.xml
  def update
    @meeting_room = MeetingRoom.find(params[:id])

    respond_to do |format|
      if @meeting_room.update_attributes(params[:meeting_room])
        flash[:notice] = 'MeetingRoom was successfully updated.'
        format.html { redirect_to(@meeting_room) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meeting_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_rooms/1
  # DELETE /meeting_rooms/1.xml
  def destroy
    @meeting_room = MeetingRoom.find(params[:id])
    @meeting_room.destroy

    respond_to do |format|
      format.html { redirect_to(meeting_rooms_url) }
      format.xml  { head :ok }
    end
  end
end
