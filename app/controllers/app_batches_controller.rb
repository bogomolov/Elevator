class AppBatchesController < ApplicationController
  # GET /app_batches
  # GET /app_batches.json
  def index
    @app_batches = AppBatch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_batches }
    end
  end

  # GET /app_batches/1
  # GET /app_batches/1.json
  def show
    @app_batch = AppBatch.find(params[:id])
    @app_incomes = AppIncome.find_all_by_batch_id(@app_batch.id, :order => 'car_time desc')
#    @app_incomes = AppIncome.find(:all, :order => 'car_time')
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_batch }
    end
  end

  # GET /app_batches/new
  # GET /app_batches/new.json
  def new
    @app_batch = AppBatch.new
    @app_batch.hidden = false
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_batch }
    end
  end

  # GET /app_batches/1/edit
  def edit
    @app_batch = AppBatch.find(params[:id])
  end

  # POST /app_batches
  # POST /app_batches.json
  def create
    @app_batch = AppBatch.new(params[:app_batch])

    respond_to do |format|
      if @app_batch.save
        format.html { redirect_to @app_batch, notice: 'App batch was successfully created.' }
        format.json { render json: @app_batch, status: :created, location: @app_batch }
      else
        format.html { render action: "new" }
        format.json { render json: @app_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_batches/1
  # PUT /app_batches/1.json
  def update
    @app_batch = AppBatch.find(params[:id])

    respond_to do |format|
      if @app_batch.update_attributes(params[:app_batch])
        format.html { redirect_to @app_batch, notice: 'App batch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_batches/1
  # DELETE /app_batches/1.json
  def destroy
    @app_batch = AppBatch.find(params[:id])
    @app_batch.destroy

    respond_to do |format|
      format.html { redirect_to app_batches_url }
      format.json { head :no_content }
    end
  end
  
  # PUT /app_batches/1
  # PUT /app_batches/1.json
  def hide
    @app_batch = AppBatch.find(params[:id])
    @app_batch.hidden = true
    @app_batch.save
    respond_to do |format|
      format.html { redirect_to lab_batches_url }
      format.json { head :no_content }
    end
  end
end
