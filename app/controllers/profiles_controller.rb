class ProfilesController < ApplicationController
    def index
        @profiles = Profile.all
        render json: @profiles
    end

    def show
        @profile = Profile.find(params[:id])
        render json: @profile
    end

    def new
        @profile = Profile.new
        render json: @profile
    end

    def create
        @profile = Profile.new(params[:profile])
        if @profile.save
        redirect_to @profile, :notice => "Successfully created profile."
        else
        render :action => 'new'
        end
    end


end
