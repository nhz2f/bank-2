class Apk < ActiveRecord::Base
  validates :bankname, presence: true #bankname 属性不能为空
  validates :version, presence: true
  validates :path, presence: true
  mount_uploader :path, ApkUploader
end
