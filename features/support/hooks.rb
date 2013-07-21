# features/support/hooks.rb

Before do |scenario|
  Mongoid.purge!
  import = `mongoimport -d mareva_test -c parametrages --file test/fixtures/new_export`
end


