require 'pry'
require 'soundcloud'
class TracksController < ApplicationController
  

  def index
    @tracks = Track.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tracks }
    end
  end


  def search 
    # binding.pry
    @tracks = Track.search(params[:search])
    # # binding.pry
    # # search.html
    #   x = 0
    #   i = 0
    #   # @results = {}
    #   while x < @track.length do
    #     # binding.pry
    #     @results = @track[i]
    #     # binding.pry
    #     i += 1
    #     x += 1
    #     @results
    #   end
    # binding.pry
    @tracks
  end
  

  def show
    @track = Track.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @track }
    end
  end

  # GET /tracks/new
  # GET /tracks/new.json
  def new
    @track = Track.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @track }
    end
  end

  # GET /tracks/1/edit
  def edit
    @track = Track.find(params[:id])
  end

  def save
    binding.pry
      @track = Track.new(params[:track])

      respond_to do |format|
        if @track.save
          format.html { redirect_to @track, notice: 'Track was successfully created.' }
          format.json { render json: @track, status: :created, location: @track }
        else
          format.html { render action: "new" }
          format.json { render json: @track.errors, status: :unprocessable_entity }
        end
      end
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = Track.new(params[:track])

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render json: @track, status: :created, location: @track }
      else
        format.html { render action: "new" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tracks/1
  # PUT /tracks/1.json
  def update
    @track = Track.find(params[:id])

    respond_to do |format|
      if @track.update_attributes(params[:track])
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to tracks_url }
      format.json { head :no_content }
    end
  end
end
