class CrimeController < ApplicationController

    def home

    end

 
  def crimedata
    
    #@crime = HTTParty.get("https://data.seattle.gov/resource/7ais-f98f.json")

    #@hash = JSON.parse(@crime.body)

    #@soju = @crime

   # @soju1 = JSON.pretty_generate(@soju)

    #puts '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
  #  puts @soju.first



    #@soju.to_json
   


    #@hash.to_json

    #puts hash

    #render json: hash

    #my_hash_array = Crack::JSON.parse(@crime.body)
    #puts my_hash_array

    #respond_to do |format|
    #    format.html
    #    format.json { render json: @soju }
    #end
    #puts @crime.body, @crime.code, @crime.message, @crime.headers.inspect
    #puts @crime
    
  end

end 

