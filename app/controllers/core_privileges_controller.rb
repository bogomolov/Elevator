class CorePrivilegesController < ApplicationController
  # GET /core_privileges
  # GET /core_privileges.xml
  def index
    @core_privileges = CorePrivilege.find(:all, :order => [:role_id,:action_id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @core_privileges }
    end
  end

  # GET /core_privileges/1
  # GET /core_privileges/1.xml
  def show
    @core_privilege = CorePrivilege.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @core_privilege }
    end
  end

  # GET /core_privileges/new
  # GET /core_privileges/new.xml
  def new
    @core_privilege = CorePrivilege.new
    @core_actions = CoreAction.find(:all, :order => [:module_id, :ord])
    @core_roles = CoreRole.find(:all, :order => :description)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core_privilege }
    end
  end

  # GET /core_privileges/1/edit
  def edit
    @core_privilege = CorePrivilege.find(params[:id])
    @core_actions = CoreAction.find(:all)
    @core_roles = CoreRole.find(:all)
  end

  # POST /core_privileges
  # POST /core_privileges.xml
  def create
    @core_privilege = CorePrivilege.new(params[:core_privilege])

    respond_to do |format|
      if @core_privilege.save
        format.html { redirect_to(@core_privilege, :notice => 'Core privilege was successfully created.') }
        format.xml  { render :xml => @core_privilege, :status => :created, :location => @core_privilege }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @core_privilege.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /core_privileges/1
  # PUT /core_privileges/1.xml
  def update
    @core_privilege = CorePrivilege.find(params[:id])

    respond_to do |format|
      if @core_privilege.update_attributes(params[:core_privilege])
        format.html { redirect_to(@core_privilege, :notice => 'Core privilege was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @core_privilege.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /core_privileges/1
  # DELETE /core_privileges/1.xml
  def destroy
    @core_privilege = CorePrivilege.find(params[:id])
    @core_privilege.destroy

    respond_to do |format|
      format.html { redirect_to(core_privileges_url) }
      format.xml  { head :ok }
    end
  end
end
