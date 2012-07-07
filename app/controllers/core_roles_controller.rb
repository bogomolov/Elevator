class CoreRolesController < ApplicationController
  # GET /core_roles
  # GET /core_roles.xml
  def index
    @core_roles = CoreRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @core_roles }
    end
  end

  # GET /core_roles/1
  # GET /core_roles/1.xml
  def show
    @core_role = CoreRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @core_role }
    end
  end

  # GET /core_roles/new
  # GET /core_roles/new.xml
  def new
    @core_role = CoreRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core_role }
    end
  end

  # GET /core_roles/1/edit
  def edit
    @core_role = CoreRole.find(params[:id])
  end

  # POST /core_roles
  # POST /core_roles.xml
  def create
    @core_role = CoreRole.new(params[:core_role])

    respond_to do |format|
      if @core_role.save
        format.html { redirect_to(@core_role, :notice => 'Core role was successfully created.') }
        format.xml  { render :xml => @core_role, :status => :created, :location => @core_role }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @core_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /core_roles/1
  # PUT /core_roles/1.xml
  def update
    @core_role = CoreRole.find(params[:id])

    respond_to do |format|
      if @core_role.update_attributes(params[:core_role])
        format.html { redirect_to(@core_role, :notice => 'Core role was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @core_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /core_roles/1
  # DELETE /core_roles/1.xml
  def destroy
    @core_role = CoreRole.find(params[:id])
    @core_role.destroy

    respond_to do |format|
      format.html { redirect_to(core_roles_url) }
      format.xml  { head :ok }
    end
  end
end
