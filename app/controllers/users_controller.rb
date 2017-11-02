class UsersController < ApplicationController
  
  def index
    @user=User.new

  end

  def create
    @user=User.new(get_params)
   
    temp1=User.find(1)
    temp2=User.find(2)
    temp3=User.find(3)

    if temp1.name == @user.name && temp1.password == @user.password
    redirect_to taskhanks_url
    elsif temp2.name == @user.name && temp2.password == @user.password
    redirect_to toms_url
    elsif temp3.name == @user.name && temp3.password == @user.password
    redirect_to jacks_url
    else  
      redirect_to users_url
    end

  end


  private

  def get_params
    params.require(:user).permit(:name, :password)
  end


end
