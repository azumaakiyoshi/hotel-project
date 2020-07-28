class PrefecturesController < ApplicationController
  def index
  @prefectures = Prefecture.all
   @q = Prefecture.ransack(params[:q])
  @prefectures = @q.result(distinct: true)
  end
  def show
  @prefecture = Prefecture.find(params[:id])
  @hotels = @prefecture.hotels
  end
def prefecture_params
  params.require(:prefecture).permit(:name)
end
end
