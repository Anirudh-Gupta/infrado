class CreateDocumentsTags < ActiveRecord::Migration
  def change
    create_table :documents_tags, :id => false do |t|
      t.belongs_to :document
      t.belongs_to :tag
    end
  end
end
