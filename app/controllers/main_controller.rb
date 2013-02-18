class MainController < ApplicationController
  respond_to :html

  require "rails_erd/domain"
  def index
    Rails.application.eager_load!
    @domain = RailsERD::Domain.generate
    @relationships = @domain.relationships
    @entities = @domain.entities
  end
end
