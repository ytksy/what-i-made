%w(hoge hoge hoge).each do |name|
  user = User.find_by(name: name)
  0.upto(30) do |idx|
	   hour = Hour.create(
	   hours: [5, 8, 10, 15][idx % 7],
	   user_id: [0,1,2,][idx % 10],		 
	   done: "英語　DUO3.0,ポレポレ",
	   post_date: 6.days.ago.advance(days: idx))

  end
end