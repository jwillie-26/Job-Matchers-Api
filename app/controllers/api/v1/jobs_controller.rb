class Api::V1::JobsController < ApplicationController
  def index
    @jobs = Job.all
    render json: @jobs
  end

  def show
    @job = Job.find(params[:id])

    favorited = @job.favorites.map { |fav| fav.user_id == logged_in_user.id }.any?(true)
    render json: { job: @job, favorited: favorited }
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      render json: @job, status: :created
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      render json: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
  end

  private

  def job_params
    params
      .require(:job)
      .permit(:company, :position, :description, :salary, :location)
  end
end
