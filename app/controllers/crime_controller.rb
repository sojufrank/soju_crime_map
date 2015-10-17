require 'rubygems'
require 'httparty'
require 'crack'
class CrimeController < ApplicationController

    def home

    end

 
  def crimedata
    @crime = HTTParty.get("https://data.seattle.gov/resource/7ais-f98f.json")

    @hash = JSON.parse(@crime.body)

    #puts hash

    #render json: hash

    #my_hash_array = Crack::JSON.parse(@crime.body)
    #puts my_hash_array

    respond_to do |format|
        format.html
        format.json { render json: @crime }
    end
    #puts @crime.body, @crime.code, @crime.message, @crime.headers.inspect
    #puts @crime
  end

end 

