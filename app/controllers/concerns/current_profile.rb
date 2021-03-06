module CurrentProfile
  extend ActiveSupport::Concern

  private

    def set_profile 
      @current_profile = Profile.find(session[:profile_id])
    rescue ActiveRecord::RecordNotFound
      @current_profile = Profile.create
      session[:profile_id] = @current_profile.id
  end
end
