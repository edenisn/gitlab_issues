require "gitlab_issues/client/issues"

module GitlabIssues
	class Client
		include HTTParty
		include GitlabIssues::Client::Issues

    base_uri "https://gitlab.com/api/v3"
    format :json

	  def initialize(private_token = nil)
	  	private_token ||= ENV["GITLAB_PRIVATE_TOKEN"]
	  	self.class.default_options.merge!(headers: { 'PRIVATE-TOKEN' => "#{private_token}" })
	  end
	end
end
