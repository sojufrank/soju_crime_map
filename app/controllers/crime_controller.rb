require 'rubygems'
require 'httparty'
class CrimeController < ApplicationController

	def home

	end
 
  def crimedata
    @crime = HTTParty.get("https://data.seattle.gov/resource/7ais-f98f.json")

    render json: @crime

    #respond_to do |format|
    	#format.html
    	#format.json { render json: @crime.as_json(only: [:location]) }
    #end
    #puts @crime.body, @crime.code, @crime.message, @crime.headers.inspect
    #puts @crime
  end

end