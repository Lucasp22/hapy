Box.destroy_all
b1 = Box.create :title => '121', :in => true, :empty => false, :location => '123'
b2 = Box.create :title => '212', :in => false, :empty => true, :location => '212'
b3 = Box.create :title => '313', :in => true, :empty => false, :location => '313'
b4 = Box.create :title => '414', :in => true, :empty => true, :location => '414'

User.destroy_all
u1 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
u2 = User.create :email => 'jonesy@ga.co', :password => 'chicken'

# puts "created #{Box.all.length} boxes."

#box users

u1.boxes << b2
u2.boxes << b1
