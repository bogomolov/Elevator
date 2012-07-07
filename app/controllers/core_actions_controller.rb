class CoreActionsController < ApplicationController
  # GET /core_actions
  # GET /core_actions.xml
  def index
    @core_actions = CoreAction.find_by_sql('select a.* from core_actions a, core_modules m where m.id=a.module_id order by m.ord, a.ord')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @core_actions }
    end
  end

  # GET /core_actions/1
  # GET /core_actions/1.xml
  def show
    @core_action = CoreAction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @core_action }
    end
  end

  # GET /core_actions/new
  # GET /core_actions/new.xml
  def new
    @core_action = CoreAction.new
    @core_action.module_id = params[:id]
    @core_modules = CoreModule.find(:all, :order=>'description')
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core_action }
    end
  end

  # GET /core_actions/1/edit
  def edit
    @core_modules = CoreModule.find(:all, :order=>'description')
    @core_action = CoreAction.find(params[:id])
  end

  # POST /core_actions
  # POST /core_actions.xml
  def create
    @core_action = CoreAction.new(params[:core_action])

    respond_to do |format|
      if @core_action.save
        format.html { redirect_to(@core_action, :notice => 'Core action was successfully created.') }
        format.xml  { render :xml => @core_action, :status => :created, :location => @core_action }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @core_action.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /core_actions/1
  # PUT /core_actions/1.xml
  def update
    @core_action = CoreAction.find(params[:id])

    respond_to do |format|
      if @core_action.update_attributes(params[:core_action])
        format.html { redirect_to(@core_action, :notice => 'Core action was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @core_action.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /core_actions/1
  # DELETE /core_actions/1.xml
  def destroy
    @core_action = CoreAction.find(params[:id])
    @core_action.destroy

    respond_to do |format|
      format.html { redirect_to(core_actions_url) }
      format.xml  { head :ok }
    end
  end
end
