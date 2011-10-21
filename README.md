SpreeZipzones070
================

An implementation of spree_zip_zones for 0.70.0; Based off of Niamtech and Andrewmp1's spree-zip-zones extension.



Example
=======

Start by adding the appropriate git reference to your Gemfile.

For Spree 0.70.0 and above:
___________________________

* gem 'spree_zipzones_070', :git => 'git://github.com/sanarothe/spree_zipzones_070.git'
* $ bundle install
* $ rake railties:install:migrations
* $ rake db:migrate
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

* The javascript file for zone form may not be included in the asset pipeline correctly. To fix this, simply copy zone.js from app/assets/javascripts/admin/ into the same path in your own application! (Otherwise the forms won't be hidden correctly.)gi


Copyright (c) 2011 Cameron Carroll, released under the New BSD License

Copyright (c) 2011 PrintBear, LLC. released under the New BSD License

