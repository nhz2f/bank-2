ActiveAdmin.register Rulefile do

  controller do
    def permitted_params
      params.permit rulefile: [:name, :version, :path, :content]
    end
  end

  form do |f|
    f.inputs "rulefile" do
      f.input :name
      f.input :version
      f.input :path
      f.input :content
    end
    f.actions
  end
  
end
