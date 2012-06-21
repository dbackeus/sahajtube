SahajTube::Application.routes.draw do
  get "embed/:youtube_id", :to => "videos#embed"
  get "captions/:youtube_id/:locale", :to => "captions#show"
end
