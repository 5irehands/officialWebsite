class HomepagesController < ApplicationController
	
	def main
		if MainInfo.all.length == 0
			mainInfo = MainInfo.new(:title => "Hi, we are 5irehands !", :description => "這裡是炙手可熱工作室！就是要和大家一起成為「炙手可熱」的厲害人！")
			mainInfo.save
		end
		@mainInfos = MainInfo.all
	end

	def about
		
	end

	def product
		
	end

	def contact
		
	end
end
