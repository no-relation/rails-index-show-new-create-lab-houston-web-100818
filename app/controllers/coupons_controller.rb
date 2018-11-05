class CouponsController < ApplicationController
  
  def coupon_params
    params[:coupon].permit(:coupon_code, :store)
  end

  def index
    @coupons = Coupon.all
  end

  def new
    
  end
  
  def show
    @coupon = Coupon.find(params[:id])

  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

end
