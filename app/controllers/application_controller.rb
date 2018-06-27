require 'protobuf'
require 'google/transit/gtfs-realtime.pb'
require 'net/http'
require 'uri'

class ApplicationController < ActionController::API

  def index
    data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=" + Rails.application.secrets.mta_key + "_id=21"))
    feed = Transit_realtime::FeedMessage.decode(data)
    for entity in feed.entity do
      if entity.field?(:trip_update)
        p entity.trip_update
      end
    end
  end

end
