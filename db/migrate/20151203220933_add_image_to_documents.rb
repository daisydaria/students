class AddImageToDocuments < ActiveRecord::Migration
  def change
    add_attachment :documents, :image, :attachment
  end
end
