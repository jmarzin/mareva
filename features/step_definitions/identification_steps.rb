# encoding: utf-8

Quand /^je suis sur la page (\/.*)$/ do |page|
  visit page
end

Alors(/^je vois le texte "(.*?)"$/) do |texte|
  page.text.should =~ Regexp.new(Regexp.escape(texte))
end

Quand(/^je suis le lien (.+)$/) do |lien|
  click_link(lien)
end

Quand(/^je saisis (?:l'|mon )adresse (.+) et (|2 fois )(?:le|mon) mot de passe (.+)$/) do |compte,creation,mdp|
  fill_in 'user_email', :with => compte
  fill_in 'user_password', :with => mdp
  if creation =~ /2 fois/ then fill_in 'user_password_confirmation', :with => mdp end
end

Quand(/^je clique sur le bouton (.+)$/) do |bouton|
  click_button(bouton)
end

Alors /^(?:|je )me retrouve sur la page (.+)$/ do |page_name|
  current_path.should eq page_name
end

Etantdonné(/^que j'ai le compte (.+) avec le mot de passe (.+) dans le système$/) do |compte, mdp|
  User.new(:email => compte, :password => mdp, :password_confirmation => mdp).save!
end

Etantdonné(/^que j'ai un compte dans le système$/) do
  compte = 'jacques.marzin@free.fr'
  mdp = '51julie2'
  User.new(:email => compte, :password => mdp, :password_confirmation => mdp).save!
end

Quand(/^je saisis mon adresse et mon mot de passe$/) do
  pending # express the regexp above with the code you wish you had
end

Etantdonné(/^que je suis connecté au système$/) do
  compte = 'jacques.marzin@free.fr'
  mdp = '51julie2'
  User.new(:email => compte, :password => mdp, :password_confirmation => mdp).save!

  visit '/my/users/sign_in'
  fill_in "user_email", :with => compte
  fill_in "user_password", :with => mdp
  click_button "Se connecter"
end
