class Tablet < ActiveRecord::Base

  def self.index(params)
    search = params[:search]
    model =      params[:model]
    connection = params[:connection]
    storage =    params[:storage]
    color =      params[:color]
      case

        when model.present? && connection.present? && storage.present? && color.present?
          tablets = Tablet.where(["model LIKE ? or connection LIKE ? or storage LIKE ? or color LIKE?", "%#{model}%", "%#{connection}%", "%#{storage}%", "%#{color}%"])

        when model.present?
          tablets = Tablet.where(["model LIKE ?", "%#{model}%"])
        when connection.present?
          tablets = Tablet.where(["connection LIKE ?", "%#{connection}%"])
        when storage.present?
          tablets = Tablet.where(["storage LIKE ?", "%#{storage}%"])
        when color.present?
          tablets = Tablet.where(["color LIKE ?", "%#{color}%"])
        when model.present? && connection.present?
          tablets = Tablet.where(["model LIKE ? or connection LIKE ? ", "%#{model}%", "%#{connection}%"])

        when model.present? && storage.present?
          tablets = Tablet.where(["model LIKE ? or storage LIKE ?", "%#{model}%", "%#{storage}%"])

        when model.present? && color.present?
          tablets = Tablet.where(["model LIKE ? or color LIKE ?", "%#{model}%", "%#{color}%"])

        when storage.present? && color.present?
          tablets = Tablet.select_values(["storage LIKE ? or color LIKE ?", "%#{storage}%", "%#{color}%"])

        when model.present? && connection.present? && storage.present?
          tablets = Tablet.where(["model LIKE ? or connection LIKE ? or storage LIKE ? or color LIKE?", "%#{model}%", "%#{connection}%", "%#{storage}%"])
        when model.present? && storage.present? && color.present?
          tablets = Tablet.where(["model LIKE ? or storage LIKE ? or color LIKE ?", "%#{model}%", "%#{storage}%", "%#{color}%"])
        else
          tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
      end
    tablets
  end

  def self.search(params)
    Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
  end
end
