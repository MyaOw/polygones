# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Clean Database

Tab.delete_all
User.delete_all
Article.delete_all
Category.delete_all
Template.delete_all
Plugin.delete_all
Site.delete_all

### Paramettre par default

User.create(email: "superadmin@polygone.com", password: "superadmin", role: "superadmin")

# Products

# Product.delete_all
 p1 = Product.create(title: "red", image: "admin/dashboard/red.png", price: 9)
 p4 = Product.create(title: "hurst", image: "admin/dashboard/hurst.png", price: 9)
#
#
#
# # Template
# #templates = []
# #templates << Template.create(name: "zen", slug: "zen", purchased: true)
# #templates << Template.create(name: "nature", slug: "nature",purchased: false)
# #templates << Template.create(name: "red", slug: "red",purchased: false)
#
#
# # plugins
# ExtensionPlugin.delete_all
 e_plugins = []
 e_plugins << ExtensionPlugin.create(name:"mailchimp",slug:"mailchimp", price: 0,description: "mailchimp" )
 e_plugins << ExtensionPlugin.create(name:"analytics",slug:"analytics", price: 0,description: "analytics")
#
#
# #Superadmin
 User.create(email: "superadmin@polygone.com", password: "superadmin", role: "superadmin")
#
#
# # Site One
#
 user1 = User.create(email: "test@polygone.com", password: "testtest", role: "admin")
 site1 = Site.new(user: user1, name: "Mon Premier Blog", slogan: 'Mon slogan', meta_description: 'Meta descritpion', meta_title: 'meto title', url: "site1")
# #menu1 = Menu.new(site: site1)
category1 = Category.create(title: "Catégorie par defaut",slug: "default", site: site1)
article1 = Article.create(user: user1, image: "http://www.grandlieuvoyages.fr/wp-content/uploads/2014/10/voyages-iles1.jpg", title: "Sample blog post",
    content: "<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>

      <p>Curabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>

  <p>Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>", slug: "one", category: category1, site: site1 )


 t = Template.create(site: site1, product: p4, slug: p4.title)

 site1.template = t

 site1.templates << t

 tab = Tab.create(title: "Accueil", order: 1, site:  site1, item: category1, home: true,url: site1.url)

 site1.save
 user1.update(site: site1)
 article1.update(site: site1)
 category1.update(site: site1)

# tab11 = Tab.create(title: "Accueil", order: 1, site:  site1, item: category1, home: true,url: site1.url)
#
#
# # Category.create(site: site1,slug: "test", title: "test")
# # Category.create(site: site1,slug: "essai",title: "essai")
# #
#  article1 = Article.create(user: user1, title: "Sample blog post",
#    content: "<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
#
#      <p>Curabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
#
#  <p>Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>", slug: "one", id_article: 1,category: category1, site: site1 )
#
#
# tab11.update(item: article1)
# #menu1.update(tab: tab11)
# tab11.save
# #tab12 = Tab.create(title: "Mes articles", order: 2, site:  site1, item: article1, home: false)
# #tab13 = Tab.create(title: "Contact", order: 3, site:  site1, item: article1, home: false)
#
#
#
# article2 = Article.create(user: user1, title: "Another blog post",
#   content: "
#
#             <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
#             <blockquote>
#               <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
#             </blockquote>
#             <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
#             <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
#          ", slug: "two", id_article: 1,category: category1, site: site1 )
#
#
# article3 = Article.create(user: user1, title: "New feature",
#   content: " <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
#             <ul>
#               <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
#               <li>Donec id elit non mi porta gravida at eget metus.</li>
#               <li>Nulla vitae elit libero, a pharetra augue.</li>
#             </ul>
#             <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
#             <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
#          ", slug: "three", id_article: 1,category: category1, site: site1 )
#
# #menu1.save
#
#
#
# user1.site = site1
# user1.save
#
# for eplugin in e_plugins
#   Plugin.create(site: site1, extension_plugin: eplugin, name: eplugin.name )
# end

##################################
# Site Two

# user2 = User.create(email: "demo@polygone.com", password: "demodemo", role: "admin")
# site2 = Site.new(user: user2, name: "Mon Site de Demo",url: "site2")
# #user2.update(site: site2)
#
# #site2.templates << templates[0]
# #site2.templates << templates[1]
# #site2.template = templates[0]
# site2.save
# user2.update(site: site2)
#
# #for plugin in plugins
#   #site2.plugins << plugin
# #end
#
#
#
# category2 = Category.create(title: "Category par defaut", site: site2,slug: "default")
# Category.create(site: site2,slug: "test",title: "test")
# Category.create(site: site2,slug: "essai",title: "essai")
#
# article4 = Article.create(user: user1, title: "Article site 2",
#   content: " <p>HEY HE HE Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
#             <ul>
#               <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
#               <li>Donec id elit non mi porta gravida at eget metus.</li>
#               <li>Nulla vitae elit libero, a pharetra augue.</li>
#             </ul>
#             <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
#             <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
#          ", slug: "one", id_article: 1,category: category2, site: site2 )
#
# article42 = Article.create(user: user1, title: "Article site 2",
#            content: " <p>HEY HE HE Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
#                      <ul>
#                        <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
#                        <li>Donec id elit non mi porta gravida at eget metus.</li>
#                        <li>Nulla vitae elit libero, a pharetra augue.</li>
#                      </ul>
#                      <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
#                      <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
#                   ", slug: "two", id_article: 1,category: category2, site: site2 )
#
#
# menu2 = Menu.create(site: site2)
# tab21 = Tab.new(title: "Accueil", order: 1, menu:  menu2,item: category2)
# menu2.update(tab: tab21)
# tab21.save
# tab22 = Tab.create(title: "Mon blog", order: 2, menu:  menu2,item: article4)
# tab23 = Tab.create(title: "Mes autres sites", order: 3, menu:  menu2,item: article4)
#
# #############################################
# # Site Three / template zen
#
# user3 = User.create(email: "user@polygone.com", password: "useruser", role: "admin")
# site3 = Site.new(user: user3, name: "Mon Site ZEN ",url: "site3")
# #user3.update(site: site3)
#
# category3 = Category.create(title: "Category par defaut", site: site3,slug: "default")
# category4 = Category.create(site: site3,slug: "home",title: "Home")
# category5 = Category.create(site: site3,slug: "fashion",title: "Fashion")
#
# article5 = Article.create(user: user3, title: "Article site 2",
#   content: " <p>HEY HE HE Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
#             <ul>
#               <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
#               <li>Donec id elit non mi porta gravida at eget metus.</li>
#               <li>Nulla vitae elit libero, a pharetra augue.</li>
#             </ul>
#             <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
#             <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
#          ", slug: "one", id_article: 1,category: category4, site: site3 )
#
#          article6 = Article.create(user: user3, title: "Article site 2",
#            content: " <p>HEY HE HE Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
#                      <ul>
#                        <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
#                        <li>Donec id elit non mi porta gravida at eget metus.</li>
#                        <li>Nulla vitae elit libero, a pharetra augue.</li>
#                      </ul>
#                      <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
#                      <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
#                   ", slug: "one", id_article: 2,category: category5, site: site3 )
#
#
#
# menu3 = Menu.new(site: site3)
# tab31 = Tab.new(title: "Home", order: 1, menu:  menu3,item: category4)
# menu3.update(tab: tab31)
# tab31.save
# tab32 = Tab.create(title: "Fashion", order: 2, menu:  menu3,item: category5)
# tab33 = Tab.create(title: "Social", order: 3, menu:  menu3,item: article5)
# tab34 = Tab.create(title: "Features", order: 4, menu:  menu3,item: article6)
#site3.menu = menu3




#site1.templates << templates[0]
#site2.templates << templates[0]
#site3.templates << templates[0]


#site2.templates << templates[1]
#site2.templates << templates[2]



#site1.template = templates[0]
#site2.template = templates[0]
#site3.template = templates[0]


#site1.save
#site2.save
#site3.save
#user2.update(site: site2)
#user3.update(site: site3)
