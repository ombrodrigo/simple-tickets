help:
	@echo ""
	@echo "Utilização: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  docker-start       Cria e inicia o container"
	@echo "  docker-stop        Para o container"
	@echo "  clean              Limpa as dependências"
	@echo "  apidoc             Gera a documentação da API"
	@echo "  composer-update    Atualiza as dependências da API"

docker-start:
	docker-compose up --build -d

docker-stop:
	@docker-compose down -v
	@make clean

clean:
	@rm -Rf ${PWD}/api/composer.lock
	@rm -Rf ${PWD}/api/vendor
	@echo "" >> ${PWD}/docs/api/index.html 
apidoc:
	@docker run --rm -it -v ${PWD}/docs/api/api.apib:/api/api.apib -v ${PWD}/docs/api/index.html:/api/index.html simpletickets_apidoc -i api.apib -o index.html

composer-update:
	@docker run --rm -v $(PWD)/api:/api -w /api composer update


