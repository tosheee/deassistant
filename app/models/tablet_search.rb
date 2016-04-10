class TabletSearch < ActiveRecord::Base

  def initialize
    params ||= {}
    @model = params[:search]
  end

  def scope
    Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
  end
end