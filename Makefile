help:
	@echo ""
	@echo "Utilização: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  docker-start        Cria e inicia o container"
	@echo "  docker-stop         Para o container"
	@echo "  apidoc              Gera a documentação da API"

clean:
	@rm -Rf 

docker-start:
	docker-compose up --build -d

docker-stop:
	@docker-compose down -v
	@make clean

apidoc:
	@docker run --rm -it -v ${PWD}/docs/api/api.apib:/api/api.apib -v ${PWD}/docs/api/index.html:/api/index.html simpletickets_apidoc -i api.apib -o index.html

