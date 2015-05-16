get '/crossdomain.xml' do
  content_type 'text/*'
  "<cross-domain-policy>
	<allow-access-from domain=\"\"*\"\"/>
</cross-domain-policy>"
end