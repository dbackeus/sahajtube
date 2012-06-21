require 'open-uri'

class CaptionsController < ApplicationController
  def show
    srt = open("http://sahajtube-test-us.s3.amazonaws.com/videos/#{params[:youtube_id]}/#{params[:locale]}.srt")
    send_data srt.read, :filename => "#{params[:locale]}.srt", :type => "text/plain"
  end
end
