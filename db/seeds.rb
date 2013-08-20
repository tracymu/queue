Restaurant.delete_all
Restaurant.create(:name => 'Crinitis', :website => 'http://www.crinitis.com.au/', :city => 'Sydney')
Restaurant.create(:name => 'The Grounds', :website => 'http://groundsroasters.com/ ', :city => 'Sydney')
Restaurant.create(:name => 'Movida', :website => 'http://movida.com.au/sydney/', :city => 'Sydney')
Restaurant.create(:name => 'Momofuku', :website => 'http://momofuku.com/press-kit-post/seiobo/', :city => 'Sydney')
Restaurant.create(:name => 'Mr Wong', :website => 'http://merivale.com.au/mrwong/', :city => 'Sydney')
Restaurant.create(:name => 'Jamie\'s Italian', :website => 'http://www.jamieoliver.com/italian/australia/home', :city => 'Sydney')
Restaurant.create(:name => 'Devon Cafe', :website => 'http://www.devoncafe.com.au/', :city => 'Sydney')
Restaurant.create(:name => 'Chur Burger', :website => 'http://www.churburger.com.au/', :city => 'Sydney')
Restaurant.create(:name => 'Grain Store', :website => 'http://www.grainstore.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Hammer and Tong', :website => 'http://www.hammerandtong.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Wonderbao', :website => 'http://www.wonderbaokitchen.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Manchester Press', :website => 'http://www.8oz.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Meatball and Wine Bar', :website => 'http://www.meatballandwinebar.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Cumulus Inc', :website => 'http://cumulusinc.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Mamak', :website => 'http://www.mamak.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Mamasita', :website => 'http://www.mamasita.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Two Birds One Stone', :website => 'http://www.twobirdsonestonecafe.com.au/', :city => 'Melbourne')
Restaurant.create(:name => 'Moose and Gibson', :website => 'http://www.mooseandgibson.com/', :city => 'Brisbane')
Restaurant.create(:name => 'New Shanghai', :website => 'http://www.newshanghai.com.au/splash.php', :city => 'Brisbane')
Restaurant.create(:name => 'The Bun Mobile', :website => 'http://www.thebunmobile.com.au/', :city => 'Brisbane')
Restaurant.create(:name => 'The Burrow', :website => 'http://theburrowwestend.com.au/', :city => 'Brisbane')
Restaurant.create(:name => 'Depo', :website => 'http://the-depo.com/', :city => 'Brisbane')
Restaurant.create(:name => 'Chester Street', :website => 'http://www.chesterstreet.com.au/', :city => 'Brisbane')
Restaurant.create(:name => 'Shady Palms Cafe', :website => 'http://shadypalmscafe.com/', :city => 'Brisbane')
Restaurant.create(:name => 'Passion Tree', :website => 'http://www.passiontree.com.au/', :city => 'Brisbane')
Restaurant.create(:name => 'Alfred and Constance', :website => 'http://www.alfredandconstance.com.au/', :city => 'Brisbane')
Restaurant.create(:name => 'Vintaged Bar and Grill', :website => 'http://www.alfredandconstance.com.au/', :city => 'Brisbane')

User.delete_all
User.create(:name => 'Nicolas', :email => 'Nicolas@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Croc', :email => 'croc@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Tracy', :email => 'Tracy@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Aidan', :email => 'aidan@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Cherry', :email => 'cherry@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Maeli', :email => 'maeli@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Amanda', :email => 'amanda@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Queron', :email => 'queron@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Graham', :email => 'graham@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')
User.create(:name => 'Nerissa', :email => 'nerissa@moomumedia.com', :password => 'Patches123', :password_confirmation => 'Patches123')


FutureVisit.delete_all
FutureVisit.create(:user_id => 1, :restaurant_id => 2)
FutureVisit.create(:user_id => 3, :restaurant_id => 1)
FutureVisit.create(:user_id => 4, :restaurant_id => 8)
FutureVisit.create(:user_id => 7, :restaurant_id => 7)
FutureVisit.create(:user_id => 3, :restaurant_id => 2)
FutureVisit.create(:user_id => 2, :restaurant_id => 4)
FutureVisit.create(:user_id => 3, :restaurant_id => 4)
FutureVisit.create(:user_id => 8, :restaurant_id => 4)
FutureVisit.create(:user_id => 6, :restaurant_id => 3)
FutureVisit.create(:user_id => 4, :restaurant_id => 12)


Visit.delete_all
Visit.create(:user_id => 3, :restaurant_id => 1)
Visit.create(:user_id => 2, :restaurant_id => 2)
Visit.create(:user_id => 5, :restaurant_id => 3)
Visit.create(:user_id => 8, :restaurant_id => 4)
Visit.create(:user_id => 7, :restaurant_id => 5)
Visit.create(:user_id => 9, :restaurant_id => 6)
Visit.create(:user_id => 1, :restaurant_id => 7)
Visit.create(:user_id => 6, :restaurant_id => 8)
Visit.create(:user_id => 3, :restaurant_id => 9)
Visit.create(:user_id => 2, :restaurant_id => 10)





