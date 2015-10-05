require 'mongoid'

class Content
	include Mongoid::Document

	field :userid, type: String
	field :ip, type: String
	field :contentid, type: String
	field :content, type: String
	field :time, type: String
end

class Metric
    include Mongoid::Document

    field :metricid, type: String
    field :metricstring, type: String
    field :userid, type: String
    field :ip, type: String
    field :codecontent, type: String
    field :codetime, type: String
end
