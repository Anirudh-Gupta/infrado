class Type < ActiveRecord::Base
has_and_belongs_to_many :documents

  private
  def type_params
    params.require(:type).permit(:name, :document_ids)
  end
end