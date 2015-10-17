require 'rubygems'
require 'httparty'
class CrimeController < ApplicationController



	def home

	end
 
  def crimedata
    @crime = HTTParty.get("https://data.seattle.gov/resource/7ais-f98f.json")
    #puts @crime
  end

	
end


