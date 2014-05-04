class Document < ActiveRecord::Base
  has_attached_file :document
  has_and_belongs_to_many :types
  has_and_belongs_to_many :tags
  private
  def document_params
    params.require(:document).permit(:doc_no, :title, :publishing_date, :issuing_authority, :state, :type_ids, :tag_ids)
  end
end
