class SneakersController < ApplicationController
  # GET /sneakers
  # GET /sneakers.json
  def index
    @sneakers = Sneaker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sneakers }
    end
  end

  # GET /sneakers/1
  # GET /sneakers/1.json
  def show
    @sneaker = Sneaker.find(params[:id])
    @comments = @sneaker.comments.all
    @comment = @sneaker.comments.build

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sneaker }
    end
  end

  # GET /sneakers/new
  # GET /sneakers/new.json
  def new
    @sneaker = Sneaker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sneaker }
    end
  end

  # GET /sneakers/1/edit
  def edit
    @sneaker = Sneaker.find(params[:id])
  end

  # POST /sneakers
  # POST /sneakers.json
  def create
    @sneaker = Sneaker.new(params[:sneaker])

    respond_to do |format|
      if @sneaker.save
        format.html { redirect_to @sneaker, notice: 'Sneaker was successfully created.' }
        format.json { render json: @sneaker, status: :created, location: @sneaker }
      else
        format.html { render action: "new" }
        format.json { render json: @sneaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sneakers/1
  # PUT /sneakers/1.json
  def update
    @sneaker = Sneaker.find(params[:id])

    respond_to do |format|
      if @sneaker.update_attributes(params[:sneaker])
        format.html { redirect_to @sneaker, notice: 'Sneaker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sneaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sneakers/1
  # DELETE /sneakers/1.json
  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy

    respond_to do |format|
      format.html { redirect_to sneakers_url }
      format.json { head :no_content }
    end
  end
end
