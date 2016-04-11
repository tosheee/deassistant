class Tablet < ActiveRecord::Base

  def self.index(params)
    search = params[:search]
    model =      params[:model]
    connection = params[:connection]
    storage =    params[:storage]
    color =      params[:color]
      case

        when model.present? && connection.present? && storage.present? && color.present?
          tablets = Tablet.where(["model LIKE ? and connection LIKE ? and storage LIKE ? and color LIKE?", "%#{model}%", "%#{connection}%", "%#{storage}%", "%#{color}%"])

        when model.present?
          tablets = Tablet.where(["model LIKE ?", "%#{model}%"])
        when connection.present?
          tablets = Tablet.where(["connection LIKE ?", "%#{connection}%"])
        when storage.present?
          tablets = Tablet.where(["storage LIKE ?", "%#{storage}%"])
        when color.present?
          tablets = Tablet.where(["color LIKE ?", "%#{color}%"])

        when model.present? && connection.present?
          tablets = Tablet.where(["model LIKE ? and connection LIKE ? ", "%#{model}%", "%#{connection}%"])

        when model.present? && storage.present?
          tablets = Tablet.where(["model LIKE ? and storage LIKE ?", "%#{model}%", "%#{storage}%"])

        when model.present? && color.present?
          tablets = Tablet.where(["model LIKE ? and color LIKE ?", "%#{model}%", "%#{color}%"])

        when storage.present? && color.present?
          tablets = Tablet.(["storage LIKE ? and color LIKE ?", "%#{storage}%", "%#{color}%"])

        when model.present? && connection.present? && storage.present?
          tablets = Tablet.where(["model LIKE ? and connection LIKE ? and storage LIKE ? and color LIKE?", "%#{model}%", "%#{connection}%", "%#{storage}%"])
        when model.present? && storage.present? && color.present?
          tablets = Tablet.where(["model LIKE ? and storage LIKE ? and color LIKE ?", "%#{model}%", "%#{storage}%", "%#{color}%"])
        else
          tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
      end
    tablets
  end

  def self.search(params)
    Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
  end
end
