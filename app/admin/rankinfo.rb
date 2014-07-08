ActiveAdmin.register Rankinfo do

  controller do
    def permitted_params
      params.permit rankinfo: [:name, :version, :score]
    end
  end

  form do |f|
    f.inputs "rankinfo" do
      f.input :name
      f.input :version
      f.input :score
    end
    f.actions
  end
end
