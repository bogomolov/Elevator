class ConfPropertiesController < ApplicationController
  # GET /conf_properties
  # GET /conf_properties.xml
  def index
    @conf_properties = ConfProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @conf_properties }
    end
  end

  # GET /conf_properties/1
  # GET /conf_properties/1.xml
  def show
    @conf_property = ConfProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @conf_property }
    end
  end

  # GET /conf_properties/new
  # GET /conf_properties/new.xml
  def new
    @conf_property = ConfProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @conf_property }
    end
  end

  # GET /conf_properties/1/edit
  def edit
    @conf_property = ConfProperty.find(params[:id])
  end

  # POST /conf_properties
  # POST /conf_properties.xml
  def create
    @conf_property = ConfProperty.new(params[:conf_property])

    respond_to do |format|
      if @conf_property.save
        format.html { redirect_to(@conf_property, :notice => 'Conf property was successfully created.') }
        format.xml  { render :xml => @conf_property, :status => :created, :location => @conf_property }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @conf_property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /conf_properties/1
  # PUT /conf_properties/1.xml
  def update
    @conf_property = ConfProperty.find(params[:id])

    respond_to do |format|
      if @conf_property.update_attributes(params[:conf_property])
        format.html { redirect_to(@conf_property, :notice => 'Conf property was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @conf_property.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /conf_properties/1
  # DELETE /conf_properties/1.xml
  def destroy
    @conf_property = ConfProperty.find(params[:id])
    @conf_property.destroy

    respond_to do |format|
      format.html { redirect_to(conf_properties_url) }
      format.xml  { head :ok }
    end
  end
end
