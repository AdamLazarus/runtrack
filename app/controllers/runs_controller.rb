class RunsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @run = current_user.runs.build
  end

  def create
    @run = current_user.runs.build(run_params)
    @run.user_id = current_user.id
    if @run.save
      redirect_to run_post_path(current_user, @run)
    end
  end

  def show
    @run = Run.find_by_id(params[:id])
  end

  def index
    @user = User.find_by_id(params[:user_id])
  end

  private
    def run_params
      params.require(:run).permit(:time_in_minutes, :run_date, :content)
    end

end
