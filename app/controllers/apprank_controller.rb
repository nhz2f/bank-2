class ApprankController < ApplicationController
  def index

  end

  def rank
    @infos = Rankinfo.order(:score).page(params[:page]) #默认score从小到大排列
  end

  def rule
    tmp = getRuleContent
    @content = tmp ? tmp.split(/\r\n/) : false
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
    tmp = getRulePath
    tmp ? (send_file tmp) : (redirect_to home_path)
  end

private
  def getApkInfo
    params.require(:apk).permit(:bankname,:version,:path)
  end

  def getRulePath
    url = Rulefile.last.to_s.empty? ? false : Rulefile.last.path.url
    url ? "public#{url}" : false
  end

  def getRuleContent
    Rulefile.last.to_s.empty? ? false : Rulefile.last.content
  end
end
