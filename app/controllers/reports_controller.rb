require 'csv'

class ReportsController < ApplicationController


  def show

    @shipments = []

     CSV.foreach(Rails.root + "planet_express_logs.csv", headers: true) do |row|

       shipment = Shipment.new
       shipment.planet = row.to_h["Destination"]
       shipment.contents = row.to_h["Shipment"]
       shipment.crates = row.to_h["Crates"]
       shipment.money = row.to_h["Money"].to_i

       @shipments << shipment
     end



  end
end
