class Tablet < ActiveRecord::Base
  def self.search(params)
   #tablets = Tablet.where(id: params[:model].to_i)
   #tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"]) if params[:search].present?
 #@tablets = Tablet.where(["brand LIKE ?", "%#{params[:search]}%"])
   tablets = Tablet.where(["model LIKE ?", "%#{params[:search]}%"])
   tablets
  end
end
