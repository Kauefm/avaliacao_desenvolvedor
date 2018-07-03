class SalesController < ApplicationController

  def index
    @sale = Sale.new
    @sales = Sale.all
    @total_sales = 0
    @sales.each |sale|
      @total_sales = sale.quantity * sale.price
    end
  end

  def create
      imported_file = File.open(sale_params[:file].tempfile,"r")
      number = 0
      imported_file.each_line do |line|
        data = line.split(/\t/)
        if number != 0
          sale = Sale.new
          sale.name = data[0]
          sale.description = data[1]
          sale.price = data[2].to_f
          sale.quantity = data[3].to_i
          sale.address = data[4]
          sale.client = data[5]
          sale.save!
        end
        number += 1
       end
    redirect_to root_url
  end

  private

  def sale_params
    params.require(:sale).permit(:file)
  end

end
