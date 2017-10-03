class JobsController < ApplicationController 

  def index
    jobs = Job.where({student_id: params[:student_id]})
    render :json => jobs
  end 

  def show
    job = Job.find(params[:id])
    render json: job
  end 

  def all
  jobs = Job.all
  render json: jobs 
  end

end 