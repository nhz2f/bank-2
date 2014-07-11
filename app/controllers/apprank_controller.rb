class ApprankController < ApplicationController
  def index

  end

  def rank
    @infos = Rankinfo.order(:score).page(params[:page]) #默认score从小到大排列
  end

  def rule
    @content = getRuleContent
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
    send_file getRulePath
  end

private
  def getApkInfo
    params.require(:apk).permit(:bankname,:version,:path)
  end

  def getRulePath
    "public"+Rulefile.last.path.url
  end

  def getRuleContent
    Rulefile.last.content
  end
end
