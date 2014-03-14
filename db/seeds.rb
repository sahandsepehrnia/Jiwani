Member.destroy_all
member_list = [ { :first_name => "Rafique",
                  :last_name => "Jiwani",
                  :password => "swimming",
                  :company => "Deloitte",
                  :location=> "New York"
                },
                { :first_name => "Sahand",
                  :last_name => "Sepehrnia",
                  :password => "football",
                  :company => "Mattel",
                  :location=> "Los Angeles"
                },
                { :first_name => "Jeff",
                  :last_name => "Cohen",
                  :password => "Hockey",
                  :company => "Starter League",
                  :location=> "Chicago"
                }, ]

member_list.each do |member_info|
  m = Member.new
  m.first_name = member_info[:first_name]
  m.last_name = member_info[:last_name]
  m.password = member_info[:password]
  m.company = member_info[:company]
  m.location = member_info[:location]
  m.save
 end

 puts "There are now #{Member.count} members registered."

Product.destroy_all
product_list = [ { :name => "Custom Made Blazer (Navy)",
                  :description => "A staple for any closet; The Navy Blazer provides year-round versatility with elegant style",
                  :price => "795",
                  :image_url => "http://dz7abk7jlh1eg.cloudfront.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/j/k/jkt-nsc_tall_front.jpg"
                  },
              { :name => "Formal Cufflinks",
                  :description => "A must for formal settings, these cufflinks provide a superior touch to any outfit",
                  :price => "200",
                  :image_url => "http://aucoinhart.com/wp-content/uploads/2012/11/Silver-Cufflinks.jpg"
                  },
                { :name => "Slim Fit Suit (Charcoal Grey)",
                  :description => "Modern style, Classic look. The Slim Fit Suit is perfect for an important meeting or night on the town",
                  :price => "1995",
                  :image_url => "http://slimages.macys.com/is/image/MCY/products/4/optimized/914844_fpx.tif?01AD=3QJQgekLEPBWA_c-CtYPZYTrIvB3bahsvTNpBMGpS4TKILFk8MPslIA&01RI=6D8DA9CA603FE8B&01NA=&$filterlrg$&wid=370"
                  },]

product_list.each do |product_info|
  p = Product.new
  p.name = product_info[:name]
  p.description = product_info[:description]
  p.price = product_info[:price]
  p.image_url = product_info[:image_url]
  p.save
 end

 puts "There are now #{Product.count} products featured."

Msgboard.destroy_all
msgboard_list = [ {:title => "Excellent Way to Increase Sales",
                  :message => "Recently asked my top customer to let me hold a luncheon at his office; got five new referrals!",
                  :date => "02/15/14",
                  },
              { :title => "Gift Certificates",
                  :message => "Using gift certificates has replaced my need to advertise online!",
                  :date => "03/01/2014",
                  },
                { :title => "MBA Seminars",
                  :message => "Holding seminars at business schools has opened up an entire new market for my business!",
                  :date => "03/15/2014",
                  },]

msgboard_list.each do |msgboard_info|
  b = Msgboard.new
  b.name = msgboard_info[:title]
  b.message = product_info[:message]
  b.date = product_info[:date]
  b.save
 end

 puts "There are now #{Msgboard.count} messages."
