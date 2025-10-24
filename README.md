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
	https://github.com/kraim21/fresh-price-backend.git
	```

5. **Set environment variables**  
	Inside `fpdocker`, create a new file `.env` and copy the following:
	```env
	POSTGRES_USER=admin
	POSTGRES_PASSWORD=admin
	POSTGRES_DB=freshprice
	POSTGRES_HOST=postgres
	POSTGRES_PORT=5432

	JWT_SECRET=9Ao39DDCf7adIcMKrmixt1DrQHCBjIAO
	ALLOWED_ORIGINS=http://localhost:8083
	```

    Do the same with `fresh-price-front` and `fresh-price-backend`. Please refer to the repository README.md

