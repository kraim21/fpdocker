# pcdocker
PriceCheck's dockerized set-up for development

## Setup Steps

1. **Download Docker**  
	[Download Docker Desktop](https://www.docker.com/products/docker-desktop/)

2. **Check GitHub Access**  
	- [fresh-price-backend](https://github.com/kraim21/fresh-price-backend)  
	- [fresh-price-front](https://github.com/kraim21/fresh-price-front)  
	- [fpdocker](https://github.com/kraim21/fpdocker)

3. **Check if you have Git**  
	Open terminal and type:
	```sh
	git --version
	```
	If there is no git available:
	- Download Git using Homebrew  
	- Download Homebrew, then install Git

	**Homebrew download:**
	```sh
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	```

	**Git download:**
	```sh
	brew install git
	```

4. **Clone project files**  
	Create a new folder `freshprice` in your chosen directory.  
	Run the following:
	```sh
	git clone https://github.com/kraim21/fpdocker.git
	git clone https://github.com/kraim21/fresh-price-front.git
	git clone https://github.com/kraim21/fresh-price-backend.git
	```

5. **Set environment variables**  
	Inside `fpdocker`, create a new file `.env` and copy the following:
	```env
	# Backend URL for the React frontend to communicate with
	REACT_APP_BACKEND_URL=http://localhost:4000
	
	# Ports for the backend and frontend services
	BACKEND_PORT=4000
	FRONTEND_PORT=5173
	
	# POSTGRES
	POSTGRES_USER=admin
	POSTGRES_PASSWORD=admin
	POSTGRES_DB=freshprice
	POSTGRES_HOST=postgres
	POSTGRES_PORT=5432
	
	# Full database URL
	DATABASE_URL=postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:5432/${POSTGRES_DB}
	
	# NGINX
	NGINX_PORT=8083
	```

    Do the same with `fresh-price-front` and `fresh-price-backend`. Please refer to the repository README.md

