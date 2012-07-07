class CoreModulesController < ApplicationController
  # GET /core_modules
  # GET /core_modules.xml
  def index
    @core_modules = CoreModule.find(:all, :order =>'ord')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @core_modules }
    end
  end

  # GET /core_modules/1
  # GET /core_modules/1.xml
  def show
    @core_module = CoreModule.find(params[:id])

    @core_actions = CoreAction.where(:module_id => params[:id] )
    @core_actions.order('ord')
   
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @core_module }
    end
  end

  # GET /core_modules/new
  # GET /core_modules/new.xml
  def new
    @core_module = CoreModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core_module }
    end
  end

  # GET /core_modules/1/edit
  def edit
    @core_module = CoreModule.find(params[:id])
  end

  # POST /core_modules
  # POST /core_modules.xml
  def create
    @core_module = CoreModule.new(params[:core_module])

    respond_to do |format|
      if @core_module.save
        format.html { redirect_to(@core_module, :notice => 'Core module was successfully created.') }
        format.xml  { render :xml => @core_module, :status => :created, :location => @core_module }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @core_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /core_modules/1
  # PUT /core_modules/1.xml
  def update
    @core_module = CoreModule.find(params[:id])

    respond_to do |format|
      if @core_module.update_attributes(params[:core_module])
        format.html { redirect_to(@core_module, :notice => 'Core module was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @core_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /core_modules/1
  # DELETE /core_modules/1.xml
  def destroy
    @core_module = CoreModule.find(params[:id])
    @core_module.destroy

    respond_to do |format|
      format.html { redirect_to(core_modules_url) }
      format.xml  { head :ok }
    end
  end
end
