class ExperienceVotesController < ApplicationController
  def create
    clean_params = params["experience_vote"].permit!
    @vote = ExperienceVote.create!(clean_params)
    render json: @vote
  end
end
