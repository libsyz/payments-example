# db/seeds.rb
puts 'Cleaning database...'
Order.destroy_all
Teddy.destroy_all
Category.destroy_all

puts 'Creating categories...'
geek = Category.create!(name: 'geek')
kids = Category.create!(name: 'kids')

puts 'Creating teddies...'
Teddy.create!(sku: 'original-teddy-bear',
              name: 'Teddy bear',
              category: kids,
              photo_url: 'https://m.media-amazon.com/images/I/61NQc9ZZ+mL._AC_SX679_.jpg',
              price: 6_000)
Teddy.create!(sku: 'prima-sku',
              name: 'Prima Aulia - Le Wagon',
              category: geek,
              photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large',
              price: 7_000)
Teddy.create!(sku: 'miguel-sku',
              name: 'miguel-octo -  GitHub',
              category: geek,
              photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg',
              price: 8_000)
puts 'Finished!'
