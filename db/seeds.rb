ActsAsVotable::Vote.create!([
  {votable_id: 9, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 12, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1}
])
AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$ZgisHIRIrUyayFEh95fltuX05WTCLrl.2jjoNkJPvhhoShwiwyChe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-08-17 17:38:15", last_sign_in_at: "2015-08-10 11:12:03", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
User.create!([
  {email: "headbat@gmail.com", encrypted_password: "$2a$10$WXBVHXZb9zKNuOWBwFNw1edR39RjxJv.F7EF93StnpAH7hQD/K4sq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-08-17 17:36:58", last_sign_in_at: "2015-08-17 17:36:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Vitaly Gordano Goryachev", confirmation_token: nil, confirmed_at: "2015-08-17 17:36:58", confirmation_sent_at: nil, unconfirmed_email: nil},
  {email: "gordano@mail.ru", encrypted_password: "$2a$10$v0sD5ArEzp0FXjcp.OyRA.tBd/p4ck9HFYaQ6HvseV0xQAhcdI4.q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-08-19 08:18:20", last_sign_in_at: "2015-08-19 08:16:40", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: nil, confirmation_token: "33cd824ca98860f712d4a111cd2d4f6e197e1b09b2016d92df78c45d144c205d", confirmed_at: "2015-08-19 08:16:13", confirmation_sent_at: "2015-08-19 08:16:09", unconfirmed_email: nil}
])
Post.create!([
  {title: "Next level artisan gluten-free pickled", description: "rinking vinegar viral food truck 3 wolf moon. Bushwick mumblecore quis do, eiusmod banh mi XOXO sapiente fanny pack est Blue Bottle bespoke. Put a bird on it hashtag exercitation ex forage health goth.", user_id: 1, image_file_name: "tumblr_npbgauBNIv1tj3ocko1_500.jpg", image_content_type: "image/jpeg", image_file_size: 25575, image_updated_at: "2015-08-19 14:34:32", state: "approved"},
  {title: "XOXO Vice pour-over", description: " Fanny pack non quinoa, eu cronut authentic leggings cardigan selvage polaroid lo-fi biodiesel raw denim.", user_id: 1, image_file_name: "8_zebra.jpg", image_content_type: "image/jpeg", image_file_size: 178507, image_updated_at: "2015-08-19 14:48:23", state: "approved"},
  {title: "Viral nostrud fanny pack", description: "Brunch ea sint four loko meditation PBR&B, freegan McSweeney's fingerstache tattooed fixie. Fap narwhal McSweeney's Blue Bottle Thundercats, placeat ethical meh roof party chambray fugiat.", user_id: 1, image_file_name: "tumblr_ms8ispcS3P1qc8yajo1_500.jpg", image_content_type: "image/jpeg", image_file_size: 71378, image_updated_at: "2015-08-19 14:47:51", state: "approved"},
  {title: "Marfa photo booth organic literally ", description: "Nostrud Vice eu, food truck delectus messenger bag fanny pack beard. Cray +1 food truck, health goth disrupt kitsch mlkshk retro laboris Truffaut 90's.", user_id: 2, image_file_name: "ec786dca5e65b00d90338008221002b0.jpg", image_content_type: "image/jpeg", image_file_size: 18213, image_updated_at: "2015-08-19 14:51:26", state: "moderating"},
  {title: "Forage aliqua Tumblr retro cupidatat drinking vinegar", description: "Veniam labore pariatur Godard plaid. Fingerstache viral dolore ullamco deserunt umami, voluptate velit American Apparel disrupt bitters. ", user_id: 2, image_file_name: "cool-john-ferguson_439157.jpg", image_content_type: "image/jpeg", image_file_size: 89293, image_updated_at: "2015-08-19 14:51:57", state: "moderating"},
  {title: "Thundercats ea Carles, labore fingerstache literally roof", description: " Est mollit crucifix, single-origin coffee culpa church-key do proident narwhal aliqua American Apparel actually roof party.", user_id: 2, image_file_name: "cool-handpaintings.jpg", image_content_type: "image/jpeg", image_file_size: 108315, image_updated_at: "2015-08-19 14:52:30", state: "moderating"},
  {title: "Carles delectus PBR occupy paleo", description: "Duis master cleanse aliquip literally, sed fashion axe Echo Park excepteur hashtag dreamcatcher. Dolore placeat typewriter, nulla Neutra proident adipisicing pariatur.", user_id: 2, image_file_name: "tumblr_lnfyybUD3Y1qlo9hgo1_500.jpg", image_content_type: "image/jpeg", image_file_size: 96037, image_updated_at: "2015-08-19 14:53:26", state: "moderating"},
  {title: " Forage nostrud PBR&B eiusmod", description: "Consequat tofu authentic et vero fashion axe iPhone nostrud. Skateboard cronut umami viral. ", user_id: 1, image_file_name: "piercings_are_cool_by_darkodev-d4chyfu.jpg", image_content_type: "image/jpeg", image_file_size: 126910, image_updated_at: "2015-08-19 14:49:07", state: "moderating"}
])
Comment.create!([
  {content: "Some time...", post_id: 12, user_id: 2}
])
Identity.create!([
  {user_id: 1, provider: "facebook", uid: "1003536853012071"}
])
