class ShortpostsController < ApplicationController
  # GET /shortposts
  # GET /shortposts.json
  def index
    @shortposts = Shortpost.all
  end

  # GET /shortposts/1
  # GET /shortposts/1.json
  def show
    @shortpost = Shortpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shortpost }
    end
  end

  # GET /shortposts/new
  # GET /shortposts/new.json
  def new
    @shortpost = Shortpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shortpost }
    end
  end

  # GET /shortposts/1/edit
  def edit
    @shortpost = Shortpost.find(params[:id])
  end

  # POST /shortposts
  # POST /shortposts.json
  def create
    @shortpost = Shortpost.new(params[:shortpost])

    respond_to do |format|
      if @shortpost.save
        format.html { redirect_to @shortpost, notice: 'Shortpost was successfully created.' }
        format.json { render json: @shortpost, status: :created, location: @shortpost }
      else
        format.html { render action: "new" }
        format.json { render json: @shortpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shortposts/1
  # PUT /shortposts/1.json
  def update
    @shortpost = Shortpost.find(params[:id])

    respond_to do |format|
      if @shortpost.update_attributes(params[:shortpost])
        format.html { redirect_to @shortpost, notice: 'Shortpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shortpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shortposts/1
  # DELETE /shortposts/1.json
  def destroy
    @shortpost = Shortpost.find(params[:id])
    @shortpost.destroy

    respond_to do |format|
      format.html { redirect_to shortposts_url }
      format.json { head :no_content }
    end
  end
end
