class Tag < ActiveRecord::Base
  has_and_belongs_to_many :documents

  private
  def tag_params
    params.require(:tag).permit(:name, :document_ids)
  end
end