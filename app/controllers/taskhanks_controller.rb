class TaskhanksController < ApplicationController
  before_action :get_task, :only => [:update, :destroy]

  def index
    @tasks=Taskhank.all
    @today=Date.today
  end

  def update
     @task.update_attributes(get_params)

     redirect_to taskhanks_path
   end

   def new
    @task=Taskhank.new
   end

   def create
    @task=Taskhank.new(get_params)
    if @task.save
    redirect_to taskhanks_path
    else
      render :action => :new
    end
   end

   def destroy
    @task.delete
    redirect_to taskhanks_path
   end

   private
   def get_params
     params.require(:taskhank).permit(:task, :due_date, :note, :status)
   end

   def get_task
     @task = Taskhank.find(params[:id])
   end

end
