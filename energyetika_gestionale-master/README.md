# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## docker

### mysql & PhpMyAdmin

```
docker run --name energyetika-mysql -e MYSQL_ROOT_PASSWORD=mypassword -p 0.0.0.0:3306:3306 -d mysql
```

```
docker run --name energyetika-phpmyadmin -d --link energyetika-mysql:db -p 8081:80 phpmyadmin/phpmyadmin
```

```
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS              PORTS                    NAMES
191529e1b72e        phpmyadmin/phpmyadmin   "/run.sh phpmyadmin"     6 seconds ago       Up 2 seconds        0.0.0.0:8081->80/tcp     energyetika-phpmyadmin
b6c31b72d3f5        mysql                   "docker-entrypoint..."   29 seconds ago      Up 26 seconds       0.0.0.0:3306->3306/tcp   energyetika-mysql
```

## .env file example
```
DEFAULT_MYSQL_USERNAME = 'root'
DEFAULT_MYSQL_PASSWORD = '123456'
DEFAULT_MYSQL_HOST = '0.0.0.0'
DEFAULT_MYSQL_PORT = '3310'

PRODUCTION_MYSQL_USERNAME = 'root'
DELBARBA_BACKEND_DATABASE_PASSWORD = '123456'
PRODUCTION_MYSQL_HOST = 'db'
PRODUCTION_MYSQL_PORT = '3306'
SECRET_KEY_BASE = c27b046xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

## gem 'rails_db_info' - Rails database info
http://localhost:3000/rails/info/db/tables/admins

## ADMINS - (gestione ruoli utenti)
```
rails generate migration add_roles_to_admins superadmin:boolean admin:boolean agent:boolean consultant:boolean insider:boolean
```
### livelli - ruoli:
* agent = Agente A (agente): potrà caricare tutti i suoi fino al mod A e non oltre
* consultant = Agente B (consulente): potrà caricare tutti i suoi fino al mod. B
* insider = Agente C (tecnico interno): vede tutto e può compilare tutto
* admin = può tutto, aggiunto per eventuali sviluppi
* superadmin = aggiunto per eventuali sviluppi

## aziende
```
rails g scaffold company admin:belongs_to denominazione:string codfisc:string piva:string indirizzo:string cap:string citta:string provincia:string telefono:string fax:string email:string web:string n_dipendenti:string n_impianti_produttivi:string fatturato:string iscrizione_elenco_energivori:boolean descrizione:text note:text visura:string bolletta:string
```

## rappresentante legale
```
rails g model company_president company:belongs_to nome:string cognome:string titolo:string codfisc:string piva:string indirizzo:string cap:string citta:string provincia:string telefono:string cellulare:string email:string
```
## persona di riferimento - contatto
```
rails g model company_contact_person company:belongs_to nome:string cognome:string titolo:string codfisc:string piva:string indirizzo:string cap:string citta:string provincia:string telefono:string cellulare:string email:string
```

## dati tacnici (stabilimento)
rails g scaffold technical_data company:belongs_to superficie_totale:decimal superficie_produzione:decimal superficie_uffici:decimal superficie_magazzini:decimal volume_totale:decimal volume_produzione:decimal volume_uffici:decimal volume_magazzini:decimal dimensione_uffici:decimal servizi_igenici:integer dimensione_piazzale:decimal presenza_docce:integer numero_impiegati:integer numero_operai:integer descrizione:text

# materie prime
rails g scaffold raw_material company:belongs_to descrizione:text

rails g scaffold raw_material_item raw_material:belongs_to nome_materia:string unita_misura:string origine_dato:string note:text quantita:decimal anno_riferimento:string

rails g scaffold walking_hours raw_material:belongs_to veicolo:string unita_misura:string origine_dato:string note:text  ore_marcia:string anno_riferimento:string

rails g scaffold finished_product raw_material:belongs_to vprodotto:string unita_misura:string origine_dato:string note:text ore_marcia:string anno_riferimento:string

# energia s4
rails g scaffold acquired_energy company:belongs_to acquisti:string unita_misura:string note:string quantita:string costo:string anno_riferimento:string

rails g scaffold produced_energy company:belongs_to produzione:string unita_misura:string fonte:string quantita:string costo:string anno_riferimento:string

# trasformatori
rails g scaffold transformer company:belongs_to cabine_media_tensione:boolean numero_cabine:integer note:text

rails g scaffold transformer_item transformer:belongs_to trasformatore:string marca:string modello:string tensione:string note:text

# Produzione energia termica – S.6
rails g scaffold thermal_production company:belongs_to note:text

rails g scaffold thermal_production_items thermal_production:belongs_to caldo_freddo:string utenza:string nome_generatore:string matricola:string potenza:string dest_acs:string

# utenze
rails g scaffold utility company:belongs_to note:text

rails g scaffold utility_item utility:belongs_to nome:string marca:string matricola:string potenza:string ore:string vettore:string funzione:string ausiliari:string

# compressori
rails g scaffold compressor company:belongs_to note:text

rails g scaffold compressor_item compressor:belongs_to marca:string modello:string potenza:string anno:string note:text

# ventilatori
rails g scaffold ventilator company:belongs_to note:text

rails g scaffold ventilator_item compressor:belongs_to marca:string modello:string potenza:string anno:string note:text


## paperclip
generate field in companies
```
rails generate paperclip company visura
```
