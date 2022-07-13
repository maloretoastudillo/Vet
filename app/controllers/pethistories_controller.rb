class PethistoriesController < ApplicationController
  before_action :set_pet, only: %i[ index new create ]
  before_action :set_pethistory, only: %i[ show edit update destroy ]
  before_action :set_pet_by_pethistory, only: %i[show update destroy]
  before_action :set_state, only: %i[ new edit ]

  # GET /pethistories or /pethistories.json
  def index
    @pethistories = @pet.pethistories
  end

  # GET /pethistories/1 or /pethistories/1.json
  def show
  end

  # GET /pethistories/new
  def new
    @pethistory = Pethistory.new
  end

  # GET /pethistories/1/edit
  def edit
  end

  # POST /pethistories or /pethistories.json
  def create
    @pethistory = Pethistory.new(pethistory_params.merge(pet: @pet))

    respond_to do |format|
      if @pethistory.save
        format.html { redirect_to pet_pethistories_path(@pet), notice: "El registro fue creado exitosamente" }
        format.json { render :show, status: :created, location: @pethistory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pethistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pethistories/1 or /pethistories/1.json
  def update
    respond_to do |format|
      if @pethistory.update(pethistory_params)
        format.html { redirect_to pet_pethistories_path(@pet), notice: "El registro fue actualizado exitosamente." }
        format.json { render :show, status: :ok, location: @pethistory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pethistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pethistories/1 or /pethistories/1.json
  def destroy
    @pethistory.destroy

    respond_to do |format|
       format.html { redirect_to pet_pethistories_path(@pet), notice: "El registro fue eliminado exitosamente." }
       format.json { head :no_content }
    end
  end

  private
    def set_pet
      @pet = Pet.find(params[:pet_id])
    end
    
    def set_pet_by_pethistory
      @pet = @pethistory.pet
    end

    def set_pethistory
      @pethistory = Pethistory.find(params[:id])
    end

    def set_state
      @state = Pethistory.states.keys.map {|state| [state.humanize, state] }
    end

    # Only allow a list of trusted parameters through.
    def pethistory_params
      params.require(:pethistory).permit(:date, :state, :weight, :height, :diagnosis, :anamnesis)
    end
end
