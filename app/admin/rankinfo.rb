ActiveAdmin.register Rankinfo do

  controller do
    def permitted_params
      params.permit rankinfo: [:name, :version, :score]
    end
  end
end
