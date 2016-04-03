class Tablet < ActiveRecord::Base

  searchable do
    text :brand, :boost => 5
    text :seria, :model, :connection, :storage, :color, :aen, :partnumber
  end
end
