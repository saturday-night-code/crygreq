require "http/client"
require "json"

module Crygreq
  VERSION = "0.1.0"

  class Profile
    include JSON::Serializable

    @[JSON::Field(key: "name")]
    property name : String

    @[JSON::Field(key: "login")]
    property username : String

    @[JSON::Field(key: "avatar_url")]
    property picture : String

    @[JSON::Field(key: "public_repos")]
    property repositories : Int32

    @[JSON::Field(key: "followers")]
    property followers : Int32

    @[JSON::Field(key: "following")]
    property following : Int32
  end

  def self.format(user : String)
    data = Profile.from_json(user)

    print("\tname: #{data.name}\n\tusername: #{data.username}\n\tpicture: #{data.picture}\n\trepositories: #{data.repositories}\n\tfollowers: #{data.followers}\n\tfollowing: #{data.following}\n")
  end

  def self.request(username : String)
    response = HTTP::Client.get "https://api.github.com/users/#{username}"

    response.body
  end
end

print("Welcome! Type your Github username: ")
username = gets.not_nil!.to_s

Crygreq.format(Crygreq.request(username))
