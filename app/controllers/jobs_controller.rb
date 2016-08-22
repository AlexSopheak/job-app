class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    if @job = Job.create(job_params)
      redirect_to @job
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to @job
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to @job
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(
      :title,
      :total_employees,
      :description,
      :requirement,
      :term,
      :location,
      :salary,
      :deadline,
      :approved_date,
      :approved_state,
      :status,
      :remark,
      :category_id)
    end
end
