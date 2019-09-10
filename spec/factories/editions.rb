FactoryBot.define do
  factory :edition do
    book
    publication
    version  { "1.1."+ rand(1..124).to_s }
    published_date { "2014-12-1" }
    cover_type  { rand(1...99)%2 ? "Paper Back" : "Hard Cover" }
    no_of_pages { rand(400...2000) }
    price { rand(999...9999) }
    count { rand(1..50) } 
  end
end