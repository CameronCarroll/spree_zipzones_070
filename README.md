SpreeZipzones070
================

(For the Spree eCommerce framework)

(Last updated against Spree 0.70.0.rc2 on 12/16/2011)

An implementation of spree_zip_zones for 0.70.0+; Based off of Niamtech and Andrewmp1's spree-zip-zones extension.
WARNING: Does NOT work with Ruby 1.9.3. (This is a Nokogiri / Deface upstream problem.)

This extension implements the equivalent of a state zone, but for zipcodes. This allows you to create zones based upon zipcode for use in shipping and taxation.


Example
=======

Start by adding the appropriate git reference to your Gemfile.

For Spree 0.70.0 and above:
___________________________

* gem 'spree_zipzones_070', :git => 'git://github.com/sanarothe/spree_zipzones_070.git'
* $ bundle install
* $ rake railties:install:migrations
* $ rake db:migrate
* $ rake spree_zipzones:copy_assets
* $ ruby script/rails s

For Spree 0.60.0 and below, use Andrewmp1's [spree_zip_zones](https://github.com/Andrewmp1/spree-zip-zones):
____________________________________________________________________________________________________________

* gem 'spree_zip_zones', :git => git://github.com/Andrewmp1/spree-zip-zones.git
* $ bundle install
* $ bundle exec rake spree_zipcode_zones:install
* $ bundle exec rake db:migrate
* $ ruby script/rails s


You should be all set! Open up admin/configurations menu and verify that 'zipcodes' appears at the bottom of the list and you're ready to start adding zipcode zones!


Issues
-------

* The asset import for javascript files inside of engine seems to not be working, at least for me. So I made a rake task to manually pull Zone.js from the engine into your app. This is already incorporated into the installation instructions.
* Deface doesn't seem to work with 1.9.3, so until that's fixed this extension is for 1.9.2 or lower.


Copyright (c) 2011 Cameron Carroll, released under the New BSD License

Copyright (c) 2011 PrintBear, LLC. released under the New BSD License

