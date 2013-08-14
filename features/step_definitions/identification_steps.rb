Quand /^je suis sur la page (\/.*)$/ do |page|
  visit page
end

Alors(/^je vois le texte "(.*?)"$/) do |texte|
  page.text.should =~ Regexp.new(Regexp.escape(texte))
end

Quand(/^je suis le lien (.+)$/) do |lien|
  click_link(lien)
end

