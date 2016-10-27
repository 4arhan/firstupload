class CreatePhotoTaggedUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_tagged_users do |t|
      t.references :photo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :photo_tagged_users, [:photo_id, :user_id], unique: true
  end
end

susan = User.create(email: 'susan@example.com', password_hash: '1234')
bob = User.create(email: 'bob@example.com', password_hash: '5678')
alice = User.create(email: 'alice@example.com', password_hash: '123456')


susan_profile = profile.create(first_name: 'susan', last_name:'Boyle', phone: '555', user: susan)
bob_profile = profile.create(first_name: 'bob', last_name:'lol', phone: '222', user: bob)

photo1= Photo.create(description: 'doge', asset_url: 'https://i.ytimg.com/vi/ndsaoMFz9J4/maxresdefault.jpg', user:susan)
photo2= Photo.create(description: 'lol', asset_url: 'https://d13yacurqjgara.cloudfront.net/users/141092/screenshots/2368134/meow.jpg', user:susan)
photo3= Photo.create(description: 'bol', asset_url: 'https://raw.githubusercontent.com/sindresorhus/meow/master/meow.gif', user:susan)
photo4= Photo.create(description: 'col', asset_url: 'https://drsophiayin.com/app/uploads/blogimg/phoenix%20meow.jpg', user:susan)
photo5= Photo.create(description: 'rol', asset_url: 'http://www.lovethispic.com/uploaded_images/137044-Meow-.gif', user:susan)
photo6= Photo.create(description: 'sol', asset_url: 'http://www.lovethispic.com/uploaded_images/137044-Meow-.gif', user:bob)
photo7= Photo.create(description: 'ool', asset_url: 'http://www.lovethispic.com/uploaded_images/137044-Meow-.gif', user:alice

PhototaggedUserRelationship.create(photo: photo1, user: bob)
PhototaggedUserRelationship.create(photo: photo2, user: susan)

PhototaggedUserRelationship.create([
 {photo:photo3, user: susan},
 { photo: photo3, user: bob}])

 UserFollowerRelationship.create(user: susan, follower: bob)
 UserFollowerRelationship.create(user: bob, follower: alice)
