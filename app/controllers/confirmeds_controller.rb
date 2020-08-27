class ConfirmedsController < ApplicationController
    require "csv"

    http_basic_authenticate_with(
      name: ENV.fetch("ADMIN_NAME"),
      password: ENV.fetch("ADMIN_PASSWORD")
    )

    def index
        @languages = Language.select(:name, :id).all
        render 'index'
    end

    def import
        @lang = Language.find(params[:language_id])

        file = File.read(params[:file].path).force_encoding("UTF-8")
        csv = CSV.parse(file, headers: true)

        csv.each do |row|
            if row["index"].to_i.is_a? Numeric

                confirmed = Confirmed.find_by(index: row["index"])

                if (confirmed.nil?)
                    c = Confirmed.new
                    c.index = row["index"]
                    c.dateConfirmed = row["dateConfirmed"]
                    c.routeIdentified = row["routeIdentified"]

                    if (!row["si_id"].nil?)
                        c.si_id = row["si_id"]
                    end
                    
                    c.save

                    c_lang = LanguageConfirmed.new
                    c_lang.language_id = @lang.id
                    c_lang.confirmed_id = c.id
                    c_lang.name = row["name"]
                    c_lang.genderAge = row["genderAge"]
                    c_lang.residence = row["gudong"]
                    c_lang.infectionRoute = row["infectionRoute"]
                    c_lang.movementRoute = row["movementRoute"]
                    c_lang.save

                else
                    # confirmed.index = row["index"]
                    confirmed.dateConfirmed = row["dateConfirmed"]
                    confirmed.routeIdentified = row["routeIdentified"]

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

                    c_lang = LanguageConfirmed.find_by(language_id: @lang.id, confirmed_id: confirmed.id)
                    if (c_lang.nil?)
                        c_lang = LanguageConfirmed.new
                    end

                    c_lang.language_id = @lang.id
                    c_lang.confirmed_id = confirmed.id
                    c_lang.name = row["name"]
                    c_lang.genderAge = row["genderAge"]
                    c_lang.residence = row["gudong"]
                    c_lang.infectionRoute = row["infectionRoute"]
                    c_lang.movementRoute = row["movementRoute"]
                    c_lang.save

                end
            else 
                redirect_to confirmeds_path, notice: "Index is not a number"
            end
        end
        redirect_to confirmeds_path, notice: "Successfully imported data"
    end
end
