# coding: utf-8
class AppIncomesController < ApplicationController
  # GET /app_incomes
  # GET /app_incomes.json
  def index
    @app_incomes = AppIncome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_incomes }
    end
  end

  # GET /app_incomes/1
  # GET /app_incomes/1.json
  def show
    @app_income = AppIncome.find(params[:id])
    @app_batch  = AppBatch.find(@app_income.batch_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_income }
    end
  end

  # GET /app_incomes/new
  # GET /app_incomes/new.json
  def new
    @app_income = AppIncome.new
    @app_income.batch_id = params[:batch_id]
    @app_batch  = AppBatch.find(params[:batch_id])
    @app_income.car_time = (@app_batch.batch_date.to_time+(Time.now-Date.today.beginning_of_day))
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_income }
    end
  end

  # GET /app_incomes/1/edit
  def edit
    @app_income = AppIncome.find(params[:id])
    @app_batch  = AppBatch.find(@app_income.batch_id)
  end

  # POST /app_incomes
  # POST /app_incomes.json
  def create
    @app_income = AppIncome.new(params[:app_income])

    respond_to do |format|
      if @app_income.save
        format.html { redirect_to @app_income, notice: 'Завоз был успешно добавлен.' }
        format.json { render json: @app_income, status: :created, location: @app_income }
      else
        format.html { render action: "new" }
        format.json { render json: @app_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_incomes/1
  # PUT /app_incomes/1.json
  def update
    @app_income = AppIncome.find(params[:id])

    respond_to do |format|
      if @app_income.update_attributes(params[:app_income])
        format.html { redirect_to @app_income, notice: 'Завоз был успешно обновлен.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_incomes/1
  # DELETE /app_incomes/1.json
  def destroy
    @app_income = AppIncome.find(params[:id])
    @app_income.destroy

    respond_to do |format|
      format.html { redirect_to app_incomes_url }
      format.json { head :no_content }
    end
  end

end
