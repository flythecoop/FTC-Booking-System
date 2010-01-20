class DesksController < ApplicationController
  # GET /desks
  # GET /desks.xml
  def index
    @desks = Desk.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @desks }
    end
  end

  # GET /desks/1
  # GET /desks/1.xml
  def show
    @desk = Desk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @desk }
    end
  end

  # GET /desks/new
  # GET /desks/new.xml
  def new
    @desk = Desk.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @desk }
    end
  end

  # GET /desks/1/edit
  def edit
    @desk = Desk.find(params[:id])
  end

  # POST /desks
  # POST /desks.xml
  def create
    @desk = Desk.new(params[:desk])

    respond_to do |format|
      if @desk.save
        flash[:notice] = 'Desk was successfully created.'
        format.html { redirect_to(@desk) }
        format.xml  { render :xml => @desk, :status => :created, :location => @desk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @desk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /desks/1
  # PUT /desks/1.xml
  def update
    @desk = Desk.find(params[:id])

    respond_to do |format|
      if @desk.update_attributes(params[:desk])
        flash[:notice] = 'Desk was successfully updated.'
        format.html { redirect_to(@desk) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @desk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /desks/1
  # DELETE /desks/1.xml
  def destroy
    @desk = Desk.find(params[:id])
    @desk.destroy

    respond_to do |format|
      format.html { redirect_to(desks_url) }
      format.xml  { head :ok }
    end
  end
end
