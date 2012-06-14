class AppActionsController < ApplicationController
  # GET /app_actions
  # GET /app_actions.xml
  def index
    @app_actions = AppAction.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @app_actions }
    end
  end

  # GET /app_actions/1
  # GET /app_actions/1.xml
  def show
    @app_action = AppAction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @app_action }
    end
  end

  # GET /app_actions/new
  # GET /app_actions/new.xml
  def new
    @app_action = AppAction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @app_action }
    end
  end

  # GET /app_actions/1/edit
  def edit
    @app_action = AppAction.find(params[:id])
  end

  # POST /app_actions
  # POST /app_actions.xml
  def create
    @app_action = AppAction.new(params[:app_action])

    respond_to do |format|
      if @app_action.save
        format.html { redirect_to(@app_action, :notice => 'App action was successfully created.') }
        format.xml  { render :xml => @app_action, :status => :created, :location => @app_action }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @app_action.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /app_actions/1
  # PUT /app_actions/1.xml
  def update
    @app_action = AppAction.find(params[:id])

    respond_to do |format|
      if @app_action.update_attributes(params[:app_action])
        format.html { redirect_to(@app_action, :notice => 'App action was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @app_action.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /app_actions/1
  # DELETE /app_actions/1.xml
  def destroy
    @app_action = AppAction.find(params[:id])
    @app_action.destroy

    respond_to do |format|
      format.html { redirect_to(app_actions_url) }
      format.xml  { head :ok }
    end
  end
end
