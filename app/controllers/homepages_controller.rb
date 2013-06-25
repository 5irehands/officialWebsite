class HomepagesController < ApplicationController
	
	def main
		if MainInfo.all.length == 0
			mainInfo = MainInfo.new(:title => "Hi, we are 5irehands !", :description => "這裡是炙手可熱工作室！就是要和大家一起成為「炙手可熱」的厲害人！")
			mainInfo.save
		end
		@mainInfos = MainInfo.all

		if Service.all.length == 0
			service = Service.new(:title => "社群經營行銷", :description => "利用網際網路達成特定目標的行銷方式，行銷手法包含部落格行銷、社群經營、平台曝光等等，企業主以更少的行銷成本達到更高的效益。")
			service.save
			service = Service.new(:title => "網站架設", :description => "我們擁有絕佳的設計與技術團隊，以目前最火紅的Web框架「Rails」為主要開發框架，在不可思議的短時間內可以快速完成一個兼具質感、效能與安全的網站。")
			service.save
			service = Service.new(:title => "部落客行銷", :description => "利用部落客的親身文筆推薦來加深消費者對產品的信任與好感，以達宣傳效果。")
			service.save
		end
		@services = Service.all
	end

	def about
		if HistoryStep.all.length == 0
			historyStep = HistoryStep.new(:title => "創業共識", :description => "2012年12月下旬，3個多年好友約出來聚聚，在聊天的過程中，其中一人正在抱怨工作上的不愉快，偶然地將他所做的前端介面拿出來展示，這時候，激起了一陣衝勁，大家便把心中那股不安現狀的想法拿出來分享，在互相激盪之下，滿腹的創意、理想、與抱負，原來大家都有想成就一番大事業的想法，於是，思考聚焦，便開始邁入一步步實現的腳步。")
			historyStep.save
			historyStep = HistoryStep.new(:title => "邁進夢想", :description => "這之間，陸續加入了2名同樣想追夢的熱血夥伴，2013年1月，召開了首次會議，這是大家首次的會議，也是團隊第一次的相見歡，從那天開始，大家就開始了追夢實踐的旅程。")
			historyStep.save
			historyStep = HistoryStep.new(:title => "團隊成立", :description => "即使有人選擇離開，但是大家依然不氣餒，直到最後一位夥伴的加入，5irehands團隊正式成立。")
			historyStep.save
		end
		@historySteps = HistoryStep.all

		if Profile.all.length == 0
			profile = Profile.new(:name => "Franky Wu", :position => "Founder", :email => "forefeel741114@gmail.com")
			profile.save
			profile = Profile.new(:name => "Debby Sun", :position => "Marketing", :email => "kitedebby@gmail.com")
			profile.save
			profile = Profile.new(:name => "Nono Ni", :position => "Front-end Engineer", :email => "noni2she@gmail.com")
			profile.save
			profile = Profile.new(:name => "Vera Yu", :position => "Visual Designer", :email => "lionshui@gmail.com")
			profile.save
			profile = Profile.new(:name => "Wils Wei", :position => "Back-end Engineer", :email => "hwpma7@gmail.com")
			profile.save
		end
		@profiles = Profile.all
	end

	def product
		
	end

	def contact
		if Link.all.length == 0
			link = Link.new(:name => "部落格", :url => "http://5irehands.blogspot.tw")
			link.save
			link = Link.new(:name => "粉絲團", :url => "http://www.facebook.com/5irehandsi")
			link.save
		end
		@links = Link.all
	end
end
