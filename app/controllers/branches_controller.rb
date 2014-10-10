class BranchesController < InheritedResources::Base
  respond_to :html, :xml, :json

  def branch_params
    params.require(:branch).permit(:name, :content)
  end
end
