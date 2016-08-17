class PatientsController < ApplicationController

  before_action :set_patient, only: [:show, :edit, :update, :destroy, :clear]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
    respond_to do |format|
      format.html
      format.csv { send_data @patients.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    @case_number = current_user.define_case_number
    if @case_number == 475
      redirect_to finished_patients_path
    end
    # if Patient.where(:case_number => @case_number - 1).blank?
    #   @previous = nil
    # else
    #   @previous = Patient.where(:case_number => @case_number - 1).first
    # end
  end


  def finished
    render 'finished'
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)
    respond_to do |format|
      if @patient.save
        format.html { redirect_to new_patient_path}
        format.json { render :new, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:abnormal, :fibrosis, :tbx, :hcying, :gg, :ret, :emph, :user_id, :case_number)
    end
end
