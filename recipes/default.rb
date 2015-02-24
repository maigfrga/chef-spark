node['spark']['extra_packages'].each do |pkg|
  log 'installing ' + pkg
  package pkg
end

include_recipe 'chef-spark::install_prebuilt'
