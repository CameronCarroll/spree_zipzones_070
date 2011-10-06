
Deface::Override.new(:virtual_path => "admin/configurations/index",
                    :name => "admin_config_zipzone_override",
                    :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                    :partial => "admin/partials/admin_config",
                    :disabled => false)
                  