class CrimeController < ApplicationController

	def home

	end

	respond_to :json
  	$crimedata = "https://data.seattle.gov/resource/7ais-f98f.json"
 
  def crimedata
    response = Net::HTTP.get_response(URI.parse($crimedata))
    data = response.body
    JSON.parse(data)
    render :text => JSON.parse(data)
  end
	
end
