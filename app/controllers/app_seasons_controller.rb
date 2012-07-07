class AppSeasonsController < ApplicationController
  # GET /app_seasons
  # GET /app_seasons.json
  def index
    @app_seasons = AppSeason.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_seasons }
    end
  end

  # GET /app_seasons/1
  # GET /app_seasons/1.json
  def show
    @app_season = AppSeason.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_season }
    end
  end

  # GET /app_seasons/new
  # GET /app_seasons/new.json
  def new
    @app_season = AppSeason.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_season }
    end
  end

  # GET /app_seasons/1/edit
  def edit
    @app_season = AppSeason.find(params[:id])
  end

  # POST /app_seasons
  # POST /app_seasons.json
  def create
    @app_season = AppSeason.new(params[:app_season])

    respond_to do |format|
      if @app_season.save
        format.html { redirect_to @app_season, notice: 'App season was successfully created.' }
        format.json { render json: @app_season, status: :created, location: @app_season }
      else
        format.html { render action: "new" }
        format.json { render json: @app_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_seasons/1
  # PUT /app_seasons/1.json
  def update
    @app_season = AppSeason.find(params[:id])

    respond_to do |format|
      if @app_season.update_attributes(params[:app_season])
        format.html { redirect_to @app_season, notice: 'App season was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_seasons/1
  # DELETE /app_seasons/1.json
  def destroy
    @app_season = AppSeason.find(params[:id])
    @app_season.destroy

    respond_to do |format|
      format.html { redirect_to app_seasons_url }
      format.json { head :no_content }
    end
  end
end
