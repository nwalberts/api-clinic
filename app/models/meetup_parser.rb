require 'httparty'
require 'pry'
class MeetupParser
  attr_reader :data

  def initialize
    @data = []
  end

  # def search(topic=nil)
  def search(query)
    # response = HTTParty.get("https://api.meetup.com/2/groups?key=#{ENV["MEETUP_KEY"]}&topic=#{query}")
    # response = HTTParty.get("https://api.meetup.com/2/groups?key=#{ENV["MEETUP_KEY"]}&topic=dogs")
    response = HTTParty.get("https://api.meetup.com/2/groups?key=#{ENV["MEETUP_KEY"]}&zip=02111&radius=5&topic=#{query}")

    # response["results"].each do |meetup|
    #   Meetup.create(
    #   name: meetup["name"],
    #   link: meetup["link"],
    #   city: meetup["city"],
    #   state: meetup["state"],
    #   description: meetup["description"],
    #   lon: meetup["lon"],
    #   lat: meetup["lat"]
    #   )
    # end

    # or

    meetup_data = response["results"][0]
    new_hash = {
      name: meetup_data["name"],
      link: meetup_data["link"],
      city: meetup_data["city"],
      state: meetup_data["state"],
      description: meetup_data["description"],
      lon: meetup_data["lon"],
      lat: meetup_data["lat"]
    }
    @data << new_hash
  end

  # What happens when no topics are found?

    # def search_events(query)
    #   # ...
    # end


end
