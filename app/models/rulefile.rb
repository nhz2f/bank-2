class Rulefile < ActiveRecord::Base
  mount_uploader :path, ApkUploader
end
