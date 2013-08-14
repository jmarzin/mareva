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

Quand(/^je saisis l'adresse (.+) et le mot de passe (.+)$/) do |adresse,mdp|
  fill_in 'user_email', :with => adresse
  fill_in 'user_password', :with => mdp
  fill_in 'user_password_confirmation', :with => mdp
end

Quand(/^je clique sur le bouton Créer le compte$/) do
  click_button('Créer le compte')
end

Alors /^(?:|je )me retrouve sur la page (.+)$/ do |page_name|
  current_path.should eq page_name
end

