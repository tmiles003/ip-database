class SubnetsController < ApplicationController

  def index
    @subnets = Subnet.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subnets }
    end
  end

  def show
    @subnet = Subnet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subnet }
    end
  end

  def new
    @subnet = Subnet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subnet }
    end
  end

  def edit
    @subnet = Subnet.find(params[:id])
  end

  def create
    @subnet = Subnet.new(params[:subnet])

    respond_to do |format|
      if @subnet.save
        flash[:notice] = 'Subnet was successfully created.'
        format.html { redirect_to(:controller => 'main', :action => 'index') }
        format.xml  { render :xml => @subnet, :status => :created, :location => @subnet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subnet.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @subnet = Subnet.find(params[:id])

    respond_to do |format|
      if @subnet.update_attributes(params[:subnet])
        flash[:notice] = 'Subnet was successfully updated.'
        format.html { redirect_to(:action => :index) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subnet.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @subnet = Subnet.find(params[:id])
    @subnet.destroy

    respond_to do |format|
      format.html { redirect_to(subnet_url) }
      format.xml  { head :ok }
    end 
  end
end
