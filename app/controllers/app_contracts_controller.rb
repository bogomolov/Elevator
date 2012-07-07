class AppContractsController < ApplicationController
  before_filter :authenticate_core_user!

  # GET /app_contracts
  # GET /app_contracts.xml
  def index
    @app_contracts = AppContract.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @app_contracts }
    end
  end

  # GET /app_contracts/1
  # GET /app_contracts/1.xml
  def show
    @app_contract = AppContract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @app_contract }
    end
  end

  # GET /app_contracts/new
  # GET /app_contracts/new.xml
  def new
    @app_contract = AppContract.new
    @app_suppliers = AppSupplier.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @app_contract }
    end
  end

  # GET /app_contracts/1/edit
  def edit
    @app_contract = AppContract.find(params[:id])
    @app_suppliers = AppSupplier.all
  end

  # POST /app_contracts
  # POST /app_contracts.xml
  def create
    @app_contract = AppContract.new(params[:app_contract])

    respond_to do |format|
      if @app_contract.save
        format.html { redirect_to(@app_contract, :notice => 'App contract was successfully created.') }
        format.xml  { render :xml => @app_contract, :status => :created, :location => @app_contract }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @app_contract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /app_contracts/1
  # PUT /app_contracts/1.xml
  def update
    @app_contract = AppContract.find(params[:id])

    respond_to do |format|
      if @app_contract.update_attributes(params[:app_contract])
        format.html { redirect_to(@app_contract, :notice => 'App contract was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @app_contract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /app_contracts/1
  # DELETE /app_contracts/1.xml
  def destroy
    @app_contract = AppContract.find(params[:id])
    @app_contract.destroy

    respond_to do |format|
      format.html { redirect_to(app_contracts_url) }
      format.xml  { head :ok }
    end
  end
end
