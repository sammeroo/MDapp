class PatientsController < ApplicationController
  before_action :signed_in_user, only: [:new]

  def new
	@patient = Patient.new
  end
end
