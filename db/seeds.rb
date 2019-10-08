# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).first_or_create!.
#
# Examples:
#
#   movies = Movie.where([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]).first_or_create!
#   Character.where(name: 'Luke', movie: movies.first).first_or_create!
dev1 = Developer.where(name: 'Developer1').first_or_create!
dev2 = Developer.where(name: 'Developer2').first_or_create!
pub1 = Publisher.where(name: 'Publisher1').first_or_create!
pub2 = Publisher.where(name: 'Publisher2').first_or_create!
zelda = Game.where(name: 'The Legend of Zelda: Breath of the Wild', 
                    genre: 'Action-adventure', 
                    developer: dev1, 
                    publisher: pub1, 
                    avg_length: 65, 
                    description: 'Wooooooow!').first_or_create!
splatoon2 = Game.where(name: 'Splatoon 2',
                    genre: 'Third-person shooter',
                    developer: dev2,
                    publisher: pub2,
                    avg_length: 34,
                    description: 'Something about game.').first_or_create! 
switch = Platform.where(name: 'Switch').first_or_create!
zeldaonswitch = PlatformGame.where(game: zelda,
                                    platform: switch,
                                    metacritic_score: 10).first_or_create!
splatoononswitch = PlatformGame.where(game: splatoon2,
                                       platform: switch,
                                       metacritic_score: 7).first_or_create!
screenzelda1 = PlatformGameAttachments::Screenshot.where(platform_game: zeldaonswitch,
                                                          url: 'https://s1.gaming-cdn.com/images/products/2616/screenshot/the-legend-of-zelda-breath-of-the-wild-switch-wallpaper-4.jpg').first_or_create!
screenzelda2 = PlatformGameAttachments::Screenshot.where(platform_game: zeldaonswitch,
                                                          url: 'https://assets.pcmag.com/media/images/445837-the-legend-of-zelda-breath-of-the-wild.jpg?width=810&height=456').first_or_create!
screensplatoon1 = PlatformGameAttachments::Screenshot.where(platform_game: splatoononswitch,
                                                             url: 'https://assets.pcmag.com/media/images/458576-splatoon-2.jpg?width=810&height=456').first_or_create!
zeldaonswitchreleasedigital1 = PlatformGameReleases::Digital.where(platform_game: zeldaonswitch,
                                                                   name: 'The Legend of Zelda: Breath of the Wild',
                                                                   edition_type: 1,
                                                                   dlc: false).first_or_create!
zeldaonswitchreleasephysical1 = PlatformGameReleases::Physical.where(platform_game: zeldaonswitch,
                                                                     name: 'The Legend of Zelda: Breath of the Wild',
                                                                     edition_type: 1,
                                                                     dlc: false).first_or_create!
zeldaonswitchreleasephysical2 = PlatformGameReleases::Physical.where(platform_game: zeldaonswitch,
                                                                     name: 'The Legend of Zelda: Breath of the Wild',
                                                                     edition_type: 2,
                                                                     dlc: false).first_or_create!
splatoononswitchreleasephysical1 = PlatformGameReleases::Physical.where(platform_game: splatoononswitch,
                                                                        name: 'Splatoon 2',
                                                                        edition_type: 1, 
                                                                        dlc: false).first_or_create!
splatoononswitchreleasedigital1 = PlatformGameReleases::Digital.where(platform_game: splatoononswitch,
                                                                      name: 'Splatoon 2',
                                                                      edition_type: 2,
                                                                      dlc: false).first_or_create!
                                                                  

