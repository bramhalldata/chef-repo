# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "bramhalldata"
client_key               "#{current_dir}/bramhalldata.pem"
validation_client_name   "dbh-validator"
validation_key           "#{current_dir}/dbh-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/dbh"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

cookbook_copyright "David Harris"
cookbook_license "apachev2"
cookbook_email "david.harris@bramhalldata.com"
