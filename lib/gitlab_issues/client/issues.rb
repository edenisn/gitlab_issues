module GitlabIssues
	class Client
		module Issues
			def issues(options = {})
				get("/issues", { query: options })
			end
		end
	end
end
