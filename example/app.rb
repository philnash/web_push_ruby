get "/" do
  File.read(File.join('public', 'index.html'))
end

get "/sub" do
  $endpoint = params["endpoint"]
  200
end

post "/push" do
  if $endpoint
    WebPush.send_notification($endpoint)
  else
    403
  end
end