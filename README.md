# Simple Tickets
Uma simples aplicação para geração de tickets

## Rotas 

### Tickets [/tickets]

#### Criar ticket [POST]

+ Request Criar um ticket
  
    + Headers

            Accept: application/json
            Content-Type: application/json
        
    + Attributes (Ticket)

+ Response 201 (application/json)

    + Attributes (Created)

#### Listar tickets [GET]

+ Response 200 (apllication/json)    
    + Attributes (array[Ticket])

+ Response 400 (application/json)
    + Attributes (Error)

### Tickets [/tickets/{id}]

+ Parameters
    + id: 1 (number, required) - Indentificador do ticket

#### Visualizar ticket [GET]

+ Response 200 (apllication/json)    
    + Attributes (Ticket)

+ Response 404 (application/json)
    + Attributes (Error)

#### Atualizar ticket [PUT]

+ Request Atualizar um ticket
  
    + Headers

            Accept: application/json
            Content-Type: application/json
        
    + Attributes (Ticket)

+ Response 201 (application/json)

    + Attributes (Created)

#### Excluir ticket [DELETE]

+ Response 204 (apllication/json)    

+ Response 404 (application/json)
    + Attributes (Error)



### Ticket Comment [/tickets/{ticket_id}/comments]

+ Parameters
    + ticket_id: 1 (number, required) - Indentificador do ticket


#### Criar comentário [POST]

+ Request Criar um comentário para ticket
  
    + Headers

            Accept: application/json
            Content-Type: application/json
        
    + Attributes (TicketComment)

+ Response 201 (application/json)

    + Attributes (Created)

#### Listar comentários [GET]

+ Response 200 (apllication/json)    
    + Attributes (array[TicketComment])

+ Response 400 (application/json)
    + Attributes (Error)


### Ticket Comment [/tickets/{ticket_id}/comments/{id}]

+ Parameters
    + ticket_id: 1 (number, required) - Indentificador do ticket
    + id: : 1 (number, required) - Indentificador do comentário

#### Visualizar comentário [GET]

+ Response 200 (apllication/json)    
    + Attributes (TicketComment)

+ Response 404 (application/json)
    + Attributes (Error)