class CreateDocumentsTable < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :doc_no
      t.string :title
      t.date :publishing_date
      t.string :issuing_authority
      t.string :state
      t.integer :doc_type_id
      t.integer :doc_tag_id
      t.attachment :document
    end
  end
end
