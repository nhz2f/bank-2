ActiveAdmin.register Rulefile do

  controller do
    def permitted_params
      params.permit rulefile: [:name, :version, :path]
    end
  end

  form do |f|
    f.inputs "rulefile" do
      f.input :name
      f.input :version
      f.input :path
    end
    f.actions
  end
  
end
