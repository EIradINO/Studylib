# User.create!(
#   username: 'Sample',
#   email: 'sample@sample.com',
#   password: 'password',
#   password_confirmation: 'password'
# )

20.times do |n|
  Article.create!(
    title: "Article#{n + 1}",
    content: "ArticleContent#{n + 1}",
    user_id: 1
  )
end

20.times do |n|
  Tip.create!(
    content: "TipContent#{n + 1}",
    user_id: 1
  )
end