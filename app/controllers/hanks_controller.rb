class HanksController < ApplicationController
  before_action :find_data , :only => [:destroy, :show, :edit, :update]
  def index
    @hanks=Hank.all
  end

  def destroy
 
  @hank.destroy

  redirect_to hanks_url
  end

  def new
    @hank=Hank.new
  end

  def create
    @hank=Hank.new(get_params)
    if @hank.save
      redirect_to hanks_url
    else
      render action: :new
    end
  end



  def update
 
    if @hank.update_attributes(get_params)
    redirect_to hanks_url
  else
    render action: :edit
  end
  end



private
def get_params
  params.require(:hank).permit(:name, :date, :note, :file_location)

end
def find_data
  @hank=Hank.find(params[:id])
end


end
