# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jeremy_kobe_create_params = {:title => "Jeremy Lin vs Kobe Bryant", :user_id => 1, :media1_type => "picture", :media1_content => "http://www.jamesjn.com/shouttwo/assets/mock/lin.jpg", :media2_type => "picture", :media2_content => "http://www.jamesjn.com/shouttwo/assets/mock/kobe.jpg", :tags => "no tags"}

Shout.create(jeremy_kobe_create_params)
