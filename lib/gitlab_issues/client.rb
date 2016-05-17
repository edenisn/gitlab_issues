module GitlabIssues
	class Client
	  def initialize(private_token = nil)
	  	@private_token = private_token || ENV["GITLAB_PRIVATE_TOKEN"]
	  end

	  def perform_request(path)
	  	url = "https://gitlab.com/api/v3/#{path}"

	  	response = HTTParty.get(url, headers: { 'PRIVATE-TOKEN' => "#{@private_token}" })

	  	JSON.parse(response.body)
	  end
	end
end
