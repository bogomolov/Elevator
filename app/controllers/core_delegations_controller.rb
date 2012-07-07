class CoreDelegationsController < ApplicationController
  # GET /core_delegations
  # GET /core_delegations.xml
  def index
    @core_delegations = CoreDelegation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @core_delegations }
    end
  end

  # GET /core_delegations/1
  # GET /core_delegations/1.xml
  def show
    @core_delegation = CoreDelegation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @core_delegation }
    end
  end

  # GET /core_delegations/new
  # GET /core_delegations/new.xml
  def new
    @core_delegation = CoreDelegation.new
    @core_users = CoreUser.all
    @core_roles = CoreRole.all
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core_delegation }
    end
  end

  # GET /core_delegations/1/edit
  def edit
    @core_delegation = CoreDelegation.find(params[:id])
    @core_users = CoreUser.all
    @core_roles = CoreRole.all
  end

  # POST /core_delegations
  # POST /core_delegations.xml
  def create
    @core_delegation = CoreDelegation.new(params[:core_delegation])

    respond_to do |format|
      if @core_delegation.save
        format.html { redirect_to(admin_delegations_path, :notice => t('delegation_successfully_created')) }
        format.xml  { render :xml => @core_delegation, :status => :created, :location => @admin_delegation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @core_delegation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /core_delegations/1
  # PUT /core_delegations/1.xml
  def update
    @core_delegation = CoreDelegation.find(params[:id])

    respond_to do |format|
      if @core_delegation.update_attributes(params[:core_delegation])
        format.html { redirect_to(admin_delegations_path, :notice => 'Core delegation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @core_delegation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /core_delegations/1
  # DELETE /core_delegations/1.xml
  def destroy
    @core_delegation = CoreDelegation.find(params[:id])
    @core_delegation.destroy

    respond_to do |format|
      format.html { redirect_to(admin_delegations_path) }
      format.xml  { head :ok }
    end
  end
  
  def user_id
    CoreDelegation.find(params[:id]).user_id
  end
end
