class LanguagesController < ApplicationController

    def index
        @languages = Language.select(:name, :id).all
        @sis = Si.select(:name, :id).all

        # set selected language
        if params[:id].present?
            @language = Language.find(params[:id])
        else
            @language = Language.first
        end

        # set selected si
        if params[:si_id].present?
            @si = Si.find(params[:si_id])
        else
            @si = Si.first
        end

        # set other variables
        @language_si = LanguageSi.find_by(language_id: @language.id, si_id: @si.id)

        render 'index'
    end

end
