class ClasstypesController < ApplicationController
  before_action :set_classtype, only: [:show, :edit, :update, :destroy]

  # GET /classtypes
  # GET /classtypes.json
  def index
    @classtypes = Classtype.all
  end

  # GET /classtypes/1
  # GET /classtypes/1.json
  def show
  end

  # GET /classtypes/new
  def new
    @classtype = Classtype.new
  end

  # GET /classtypes/1/edit
  def edit
  end

  # POST /classtypes
  # POST /classtypes.json
  def create
    @classtype = Classtype.new(classtype_params)

    respond_to do |format|
      if @classtype.save
        format.html { redirect_to @classtype, notice: 'Classtype was successfully created.' }
        format.json { render :show, status: :created, location: @classtype }
      else
        format.html { render :new }
        format.json { render json: @classtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classtypes/1
  # PATCH/PUT /classtypes/1.json
  def update
    respond_to do |format|
      if @classtype.update(classtype_params)
        format.html { redirect_to @classtype, notice: 'Classtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @classtype }
      else
        format.html { render :edit }
        format.json { render json: @classtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classtypes/1
  # DELETE /classtypes/1.json
  def destroy
    @classtype.destroy
    respond_to do |format|
      format.html { redirect_to classtypes_url, notice: 'Classtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classtype
      @classtype = Classtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classtype_params
      params.require(:classtype).permit(:classname, :classid, :cost, :category, :classtime)
    end
end
