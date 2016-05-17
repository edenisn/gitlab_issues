module GitlabIssues
	class Client
		module Issues
			def issues(options = {})
				response = self.class.get("/issues", { query: options })
				if response.parsed_response.any?
				  response.parsed_response["issues"]
				else
					[]
				end
			end
		end
	end
end
