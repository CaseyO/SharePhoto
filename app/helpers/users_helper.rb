module UsersHelper
def signed_in_user
    unless signed_in?
      redirect_to signin_path, notice: "Please sign in." 
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path unless current_user?(@user)
  end
end
