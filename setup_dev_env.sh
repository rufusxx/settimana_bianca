RED='\033[1;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
CODE='\033[1;30;43m'
NC='\033[0m'

CONDA_PROJECT_ENV=settimana-bianca

# Install conda environments
echo -e "${YELLOW}installing ruby environment${NC}"
conda env create -f requirements/environment.yml
echo -e "${YELLOW}activate with ${CODE} conda activate ${CONDA_PROJECT_ENV} ${NC}\n"

# Activate dev env
echo -e "${YELLOW}activate development environment${NC}"
conda activate ${CONDA_PROJECT_ENV} ;
echo -e "\n${GREEN}environment activated${NC}\n" ;

echo -e "${YELLOW}install ruby gems${NC}"
gem install jekyll:"~> 4.3" bundler:"~> 2.5"
echo -e "\n${GREEN}gems installed${NC}\n" ;

echo -e "${YELLOW}fix ruby location with symlink${NC}"
ln -s "${CONDA_PREFIX}/bin/ruby" "${CONDA_PREFIX}/share/rubygems/bin/ruby"
echo -e "\n${GREEN}symlink created${NC}\n" ;

echo -e "${GREEN}done${NC}\n"

return 0