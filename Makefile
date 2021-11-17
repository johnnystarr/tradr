APP = tradr
.DEFAULT_GOAL := build

minifier.py:
	@wget -q https://raw.githubusercontent.com/precious/bash_minifier/HEAD/minifier.py

build: minifier.py
	@cat env/*.sh lib/*.sh app/*.sh > compiled.sh
	@python minifier.py compiled.sh >> $(APP).sh
	@chmod +x $(APP).sh
	@/bin/bash $(APP).sh

clean:
	@rm -f minifier.py
	@rm -f compiled.sh $(APP).sh

docker: build
	@docker build . -t tradr
	@docker run -it --rm tradr
