require "spec_helper"

describe ChampionParser do 
	it "parses a file" do 
		data = 
		<<HERE 
		"<option value="Ziggs">Ziggs</option>
        <option value="Zilean">Zilean</option>"
         HERE 
      	champion_parser = ChampionParser.new(data)
      	expect(champion_parser.parse).to eq(["Ziggs", "Zilean"])
      end
    end
