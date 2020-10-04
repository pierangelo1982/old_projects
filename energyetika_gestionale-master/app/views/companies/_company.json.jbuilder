json.extract! company, :id, :admin_id, :denominazione, :codfisc, :piva, :indirizzo, :cap, :citta, :provincia, :telefono, :fax, :email, :web, :n_dipendenti, :n_impianti_produttivi, :fatturato, :iscrizione_elenco_energivori, :descrizione, :note, :visura, :bolletta, :created_at, :updated_at
json.url company_url(company, format: :json)
