class ChallangeWallsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_challange_wall, only: [:show, :edit, :update, :destroy]


  # GET /challange_walls/1
  # GET /challange_walls/1.json
  def show
  end

  # GET /challange_walls/new
  def new
    @challange_wall = ChallangeWall.new
  end

  # GET /challange_walls/1/edit
  def edit
  end

  # POST /challange_walls
  # POST /challange_walls.json
  def create
    @challange_wall = ChallangeWall.new(challange_wall_params)
    @challange_wall.user = current_user
    respond_to do |format|
      if @challange_wall.save
        format.html { redirect_to @challange_wall, notice: 'Challange wall was successfully created.' }
        format.json { render :show, status: :created, location: @challange_wall }
      else
        format.html { render :new }
        format.json { render json: @challange_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challange_walls/1
  # PATCH/PUT /challange_walls/1.json
  def update
    @challange_wall.user = current_user
    respond_to do |format|
      if @challange_wall.update(challange_wall_params)
        format.html { redirect_to @challange_wall, notice: 'Challange wall was successfully updated.' }
        format.json { render :show, status: :ok, location: @challange_wall }
      else
        format.html { render :edit }
        format.json { render json: @challange_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challange_walls/1
  # DELETE /challange_walls/1.json
  def destroy
    @challange_wall.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Challange wall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challange_wall
      @challange_wall = ChallangeWall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challange_wall_params
      params.require(:challange_wall).permit(:title)
    end
end
