build: ## Build the website into the /dist folder
	@hugo -d ./dist
clean: ## Clean the /dist folder
	@rm -r dist/*
post: ## Create new post
	@hugo new "posts/${POST_NAME}.md"
	@sed -i 's/title: ".*"/title: "${POST_TITLE}"/' "content/posts/${POST_NAME}.md"
help: ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
%:
	@:
