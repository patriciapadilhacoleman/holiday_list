class GiftsController < ApplicationController

    def show
        gift = Gift.find_by(id: params[:id])
        render json: gift
    end

    def index
        gifts = Gift.all
        render json: gifts, include: [:giftee]
    end

end
