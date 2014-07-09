class ApprankController < ApplicationController
  def index

  end

  def rank

  end

  def rule

  end

  def upapk
    @apk = Apk.new
  end

  def saveapk
    @apk = Apk.new(getApkInfo)
    if @apk.save
      redirect_to home_path
    else
      render 'upapk' #render 后面跟action方法名
    end
  end

  def downrule
    send_file 'public/fbb.jpg'
  end

private
  def getApkInfo
    params.require(:apk).permit(:bankname,:version,:path)
  end

end
