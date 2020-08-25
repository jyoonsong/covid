class ConfirmedsController < ApplicationController
    require "csv"

    http_basic_authenticate_with(
      name: ENV.fetch("ADMIN_NAME"),
      password: ENV.fetch("ADMIN_PASSWORD")
    )

    def index
        @confirmeds = Confirmed.all
        render 'index'
    end

    def import
        file = params[:file]
        csv = CSV.parse(File.read(file.path), headers: true)
        csv.each do |row|
            confirmed = Confirmed.find_by(index: row["index"])
            if (confirmed.nil?)
                c = Confirmed.new
                c.index = row["index"]
                c.dateConfirmed = row["dateConfirmed"]
                c.routeIdentified = row["routeIdentified"]
                c.age = row["age"]

                if (!row["dong_id"].nil?)
                    c.dong_id = row["dong_id"]
                end
                if (!row["gu_id"].nil?)
                    c.gu_id = row["gu_id"]
                end
                if (!row["si_id"].nil?)
                    c.si_id = row["si_id"]
                end
                
                c.save

            else
                # confirmed.index = row["index"]
                confirmed.dateConfirmed = row["dateConfirmed"]
                confirmed.routeIdentified = row["routeIdentified"]
                confirmed.age = row["age"]

                if (!row["dong_id"].nil?)
                    confirmed.dong_id = row["dong_id"]
                end
                if (!row["gu_id"].nil?)
                    confirmed.gu_id = row["gu_id"]
                end
                if (!row["si_id"].nil?)
                    confirmed.si_id = row["si_id"]
                end
                
                confirmed.save
            end
        end
        redirect_to confirmeds_path, notice: "Successfully imported data"
    end
end
