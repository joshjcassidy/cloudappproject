class RegistrationStepsController < ApplicationController
    include Wicked::Wizard

    steps :account, :player_profile, :manager_profile

    def show
        @user = current_user

        #Picking correct step based on account type
        case step
        when :player_profile
            skip_step unless @user.managerCheck == false
        when :manager_profile
            skip_step unless @user.managerCheck == true
        end
        
        render_wizard
    end

    def update

        @user = current_user
      
        @user.attributes(user_params)
      
        render_wizard @user
      
    end

    private
        def user_params
            params
                .require(:user)
                .permit(:email, :password, player_profiles_attributes: [:id, :user_id, :playerTag, :bio, :firstName, :lastName, :dob, :country_id, :twitterHandle, :twitchHandle], manager_profile_attributes: [:id, :user_id, :teamName, :description, :country_id :managerFName, :managerLName, :sponsorsAndPlayers, :twitterHandle, :siteUrl])
      
end
