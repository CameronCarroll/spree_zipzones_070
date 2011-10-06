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

* git://github.com/Andrewmp1/spree-zip-zones.git
* $ bundle install
* bundle exec rake spree_zipcode_zones:install
* bundle exec rake db:migrate
* ruby script/rails s


You should be all set! Open up admin/configurations menu and verify that 'zipcodes' appears at the bottom of the list and you're ready to start adding zipcode zones!


Issues
-------

* The zone form has a minor issue where the javascript to disable the non selected doesn't disable zipcodes. This causes a cosmetic error where phantom "zipcodes" may be displayed, but don't worry! The only data associated with your zone is that inside the form that is supposed to be displayed. For example, if you select 'country based' both country and zipcode forms are displayed. But only the country counts, even though it may display some zipcodes in the second form. Likewise, when you select zipcode based, the form doesn't change... but the zipcodes save, whereas the form that didn't disappear doesn't matter!

Copyright (c) 2011 Cameron Carroll, released under the New BSD License
Copyright (c) 2011 PrintBear, LLC. released under the New BSD License

