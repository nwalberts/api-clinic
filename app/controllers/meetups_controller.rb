class MeetupsController < ApplicationController
  # Ideally this is a API controller, not a regular controller!


# a simply version of how you would hit this endpoint
# http://localhost:3000/meetups?topic_query=foo

  def search
    topic = params[:topic_query]
    meetup_parser = MeetupParser.new
    meetup_parser.search(topic)

    render json: { data: meetup_parser.data }
  end

end
