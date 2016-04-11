class Tablet < ActiveRecord::Base

  def self.index(params)
    unless params[:model].nil?
    case
      when params[:model].present?
        tablets = Tablet.where(["model LIKE ?", "%#{params[:model]}%"])
      when params[:model].present? && params[:connection].present?
        tablets = Tablet.where(["model LIKE ? or connection LIKE ? or storage LIKE ? or color LIKE?", "%#{params[:model]}%", "%#{params[:connection]}%"])
      when params[:model].present? && params[:connection].present? && params[:storage].present?
        tablets = Tablet.where(["model LIKE ? or connection LIKE ? or storage LIKE ? or color LIKE?", "%#{params[:model]}%", "%#{params[:connection]}%", "%#{params[:storage]}%"])
      when params[:model].present? && params[:connection].present? && params[:storage].present? && params[:color].present?
        tablets = Tablet.where(["model LIKE ? or connection LIKE ? or storage LIKE ? or color LIKE?", "%#{params[:model]}%", "%#{params[:connection]}%", "%#{params[:storage]}%", "%#{params[:color]}%"])
    end
      #tablets = Tablet.where(["model LIKE ?", "%#{params[:model]}%"]) if params[:model].present?
      #tablets = Tablet.where(["connection LIKE ?", "%#{params[:connection]}%"]) if params[:connection].present?
      #tablets = Tablet.where(["storage LIKE ?", "%#{params[:storage]}%"]) if params[:storage].present?
      #tablets = Tablet.where(["color LIKE ?", "%#{params[:color]}%"]) if params[:color].present?

      #tablets = Tablet.where(["model LIKE ? or connection LIKE ? or storage LIKE ? or color LIKE?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
      # #where("model like ? or storage like?", "%{params[:search]}%", "%{params[:search]}%")
      #tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
    else
      tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
    end
    tablets
  end

  def self.search(params)
   #tablets = Tablet.where(id: params[:model].to_i)
   #tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"]) if params[:search].present?
   #@tablets = Tablet.where(["brand LIKE ?", "%#{params[:search]}%"])
   tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
   tablets
  end
end
