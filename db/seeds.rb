Box.destroy_all
b1 = Box.create :title => '121', :in => true, :empty => false, :location => '123', :image =>'https://image.shutterstock.com/image-photo/clean-storage-warehouse-custom-crates-260nw-379538818.jpg'
b2 = Box.create :title => '212', :in => false, :empty => true, :location => '212', :image =>'https://image.shutterstock.com/image-photo/clean-storage-warehouse-custom-crates-260nw-379538818.jpg'
b3 = Box.create :title => '313', :in => true, :empty => false, :location => '313', :image =>'https://image.shutterstock.com/image-photo/clean-storage-warehouse-custom-crates-260nw-379538818.jpg'
b4 = Box.create :title => '414', :in => true, :empty => true, :location => '414', :image =>'https://image.shutterstock.com/image-photo/clean-storage-warehouse-custom-crates-260nw-379538818.jpg'

User.destroy_all
u1 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
u2 = User.create :email => 'jonesy@ga.co', :password => 'chicken'

# puts "created #{Box.all.length} boxes."

#box users

u1.boxes << b2
u2.boxes << b1
