class AppModulesController < ApplicationController
  # GET /app_modules
  # GET /app_modules.xml
  def index
    @app_modules = AppModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @app_modules }
    end
  end

  # GET /app_modules/1
  # GET /app_modules/1.xml
  def show
    @app_module = AppModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @app_module }
    end
  end

  # GET /app_modules/new
  # GET /app_modules/new.xml
  def new
    @app_module = AppModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @app_module }
    end
  end

  # GET /app_modules/1/edit
  def edit
    @app_module = AppModule.find(params[:id])
  end

  # POST /app_modules
  # POST /app_modules.xml
  def create
    @app_module = AppModule.new(params[:app_module])

    respond_to do |format|
      if @app_module.save
        format.html { redirect_to(@app_module, :notice => 'App module was successfully created.') }
        format.xml  { render :xml => @app_module, :status => :created, :location => @app_module }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @app_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /app_modules/1
  # PUT /app_modules/1.xml
  def update
    @app_module = AppModule.find(params[:id])

    respond_to do |format|
      if @app_module.update_attributes(params[:app_module])
        format.html { redirect_to(@app_module, :notice => 'App module was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @app_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /app_modules/1
  # DELETE /app_modules/1.xml
  def destroy
    @app_module = AppModule.find(params[:id])
    @app_module.destroy

    respond_to do |format|
      format.html { redirect_to(app_modules_url) }
      format.xml  { head :ok }
    end
  end
end
