class Tablet < ActiveRecord::Base

  def self.index(params)
    #tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"]) if params[:search].present?
    #tablets = Tablet.where(["connection LIKE ?", "%#{params[:search]}%"]) if params[:search].present?
    #tablets = Tablet.where(["storage LIKE ?", "%#{params[:search]}%"]) if params[:search].present?
    #tablets = Tablet.where(["color LIKE ?", "%#{params[:search]}%"]) if params[:search].present?
    tablets = Tablet.where(["model LIKE ? or connection LIKE ? or storage LIKE ? or color LIKE?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"])
    #where("model like ? or storage like?", "%{params[:search]}%", "%{params[:search]}%")
    #tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
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
