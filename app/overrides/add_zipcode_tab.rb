Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "add_zipcode_tab",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     :text => "<li<%== ' class=\"active\"' if controller.controller_name == 'zipcodes' %>><%= link_to t(\"Zipcodes\"), admin_zipcodes_path %></li>")
