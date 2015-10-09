class PeopleController < ApplicationController
  before_filter :search_people
  respond_to :json
  def index
    respond_with @people
  end

private
  def search_people
    @people = if params[:search].present?
                Person.search(params[:search])
              else
                Person.all
              end.sorted
  end
end
