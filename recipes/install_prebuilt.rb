log 'downloading skpark prebuilt package'

remote_file 'spark' do
  path '/tmp/spark.tgz'
  source node['spark']['url']
end

log 'extracting spark tgz'

bash 'extract_spark' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    tar zxvf spark.tgz -C /opt
EOH
  action :run
end
