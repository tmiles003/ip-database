class StaticIpsController < ApplicationController
  # GET /static_ips
  # GET /static_ips.xml
  def index
    @static_ips = StaticIp.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @static_ips }
    end
  end

  # GET /static_ips/1
  # GET /static_ips/1.xml
  def show
    @static_ip = StaticIp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @static_ip }
    end
  end

  # GET /static_ips/new
  # GET /static_ips/new.xml
  def new
    @static_ip = StaticIp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @static_ip }
    end
  end

  # GET /static_ips/1/edit
  def edit
    @static_ip = StaticIp.find(params[:id])
  end

  # POST /static_ips
  # POST /static_ips.xml
  def create
    @static_ip = StaticIp.new(params[:static_ip])

    respond_to do |format|
      if @static_ip.save
        flash[:notice] = 'StaticIp was successfully created.'
        format.html { redirect_to(@static_ip) }
        format.xml  { render :xml => @static_ip, :status => :created, :location => @static_ip }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @static_ip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /static_ips/1
  # PUT /static_ips/1.xml
  def update
    @static_ip = StaticIp.find(params[:id])

    respond_to do |format|
      if @static_ip.update_attributes(params[:static_ip])
        flash[:notice] = 'IP Address was successfully updated.'
        format.html { redirect_to(:action => :index) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @static_ip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /static_ips/1
  # DELETE /static_ips/1.xml
  def destroy
    @static_ip = StaticIp.find(params[:id])
    @static_ip.destroy

    respond_to do |format|
      format.html { redirect_to(static_ips_url) }
      format.xml  { head :ok }
    end 
  end
  
  def available
    @static_ips = StaticIp.find(:all, :conditions => {:available => false})
  end
  
  def unavailable
    @static_ips = StaticIp.find(:all, :conditions => {:available => true })
  end
end
