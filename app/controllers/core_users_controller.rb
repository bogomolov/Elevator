# coding: utf-8
class CoreUsersController < ApplicationController
  # before_filter :authenticate_core_user!
  # GET /core_users
  # GET /core_users.xml
  def index
    @core_users = CoreUser.find(:all,:order=>"fullname")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @core_users }
    end
  end

  # GET /core_users/1
  # GET /core_users/1.xml
  def show
    @core_user = CoreUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @core_user }
    end
  end

  # GET /core_users/new
  # GET /core_users/new.xml
  def new
    @core_user = CoreUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core_user }
    end
  end

  # GET /core_users/1/edit
  def edit
    @core_user = CoreUser.find(params[:id])
  end

  # POST /core_users
  # POST /core_users.xml
  def create
    @core_user = CoreUser.new(params[:core_user])

    respond_to do |format|
      if @core_user.save
        format.html { redirect_to(@core_user, :notice => 'Core user was successfully created.') }
        format.xml  { render :xml => @core_user, :status => :created, :location => @core_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @core_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /core_users/1
  # PUT /core_users/1.xml
  def update
    @core_user = CoreUser.find(params[:id])

    respond_to do |format|
      if @core_user.update_attributes(params[:core_user])
        format.html { redirect_to(@core_user, :notice => 'Core user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @core_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /core_users/1
  # DELETE /core_users/1.xml
  def destroy
    @core_user = CoreUser.find(params[:id])
    @core_user.destroy

    respond_to do |format|
      format.html { redirect_to(admin_path) }
      format.xml  { head :ok }
    end
  end
end
