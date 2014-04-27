class Document < ActiveRecord::Base
  has_attached_file :document
  private
  def document_params
    params.require(:document).permit(:doc_no, :title, :publishing_date, :issuing_authority, :state, :doc_type_id, :doc_tag_id)
  end
end
