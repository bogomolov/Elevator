class AppSuppliersController < ApplicationController
  # GET /app_suppliers
  # GET /app_suppliers.xml
  def index
    @app_suppliers = AppSupplier.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @app_suppliers }
    end
  end

  # GET /app_suppliers/1
  # GET /app_suppliers/1.xml
  def show
    @app_supplier = AppSupplier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @app_supplier }
    end
  end

  # GET /app_suppliers/new
  # GET /app_suppliers/new.xml
  def new
    @app_supplier = AppSupplier.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @app_supplier }
    end
  end

  # GET /app_suppliers/1/edit
  def edit
    @app_supplier = AppSupplier.find(params[:id])
  end

  # POST /app_suppliers
  # POST /app_suppliers.xml
  def create
    @app_supplier = AppSupplier.new(params[:app_supplier])

    respond_to do |format|
      if @app_supplier.save
        format.html { redirect_to(@app_supplier, :notice => 'App supplier was successfully created.') }
        format.xml  { render :xml => @app_supplier, :status => :created, :location => @app_supplier }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @app_supplier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /app_suppliers/1
  # PUT /app_suppliers/1.xml
  def update
    @app_supplier = AppSupplier.find(params[:id])

    respond_to do |format|
      if @app_supplier.update_attributes(params[:app_supplier])
        format.html { redirect_to(@app_supplier, :notice => 'App supplier was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @app_supplier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /app_suppliers/1
  # DELETE /app_suppliers/1.xml
  def destroy
    @app_supplier = AppSupplier.find(params[:id])
    @app_supplier.destroy

    respond_to do |format|
      format.html { redirect_to(app_suppliers_url) }
      format.xml  { head :ok }
    end
  end
end
