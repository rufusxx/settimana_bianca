# Colors
YELLOW := \033[1;33m
GREEN := \033[1;32m
RED := \033[1;31m
CYAN := \033[1;36m
ORANGE := \033[0;33m
PURPLE := \033[1;35m
WHITE := \033[1;37m
NC := \033[0m

help:
	@echo " ${PURPLE}                                  LIST OF AVAILABLE COMMANDS                                    ${NC}"
	@echo " ${RED}======================|=========================================================================${NC}"
	@echo " ${RED}Command               | Description                                                             ${NC}"
	@echo " ${RED}======================|=========================================================================${NC}"
	@echo " ${YELLOW}SETUP ------------------------------------------------------------------------------------------${NC}"
	@echo " ${WHITE}  help                :${NC} prints this help message"
	@echo " ${WHITE}  jekyll-new          :${NC} create a new Jekyll project folder (use only in empty projects)"
	@echo " ${YELLOW}JEKYLL -----------------------------------------------------------------------------------------${NC}"
	@echo " ${WHITE}  jekyll-serve        :${NC} run the website locally"
	@echo " ${WHITE}  jekyll-build        :${NC} build the website"
	@echo " ${YELLOW}CLEAN ------------------------------------------------------------------------------------------${NC}"
	@echo " ${WHITE}  clean-folders       :${NC} cleans all folders and caches"
	@echo " ${WHITE}  clean               :${NC} runs all clean rules"
	@echo " ${YELLOW}MISC -------------------------------------------------------------------------------------------${NC}"
	@echo "   NO COMMANDS!"
	@echo "${RED}=======================|=========================================================================${NC}"
	@echo ""

default: help

# Utilities -------------------------------------------------------------------
#Intentionally left void

# Setup rules -----------------------------------------------------------------

jekyll-new:
	@echo -e "${YELLOW}creating new project${NC}"
	jekyll new docs
	@echo -e "${GREEN}done${NC}"

# Jekyll rules ----------------------------------------------------------------

jekyll-serve:
	@echo -e "${YELLOW}start jekyll server${NC}"
	BUNDLE_GEMFILE=docs/Gemfile bundle exec jekyll serve --source docs --destination docs/_site
	@echo -e "${GREEN}done${NC}"

jekyll-build:
	@echo -e "${YELLOW}build website${NC}"
	BUNDLE_GEMFILE=docs/Gemfile bundle exec jekyll build --source docs --destination docs/_site
	@echo -e "${GREEN}done${NC}"

# Clean rules -----------------------------------------------------------------

clean-folders:
	@echo -e "${YELLOW}clean folders${NC}"
	rm -rf docs/_site/ docs/.sass-cache/ docs/.jekyll-cache/ docs/.jekyll-metadata docs/.bundle/
	@echo -e "${GREEN}done${NC}"

clean: clean-folders

# Other rules -----------------------------------------------------------------

# Intentionally left void
