class StepByStepController < ApplicationController

	include Wicked::Wizard

  	steps :companies, :technical_datum, :raw_material, :energy, :transformer, :thermal_production, :utility, :compressor, :ventilator

  	def show
  		@companies = Company.all
  		#@technical_datum = @company.build_technical_datum
  		case step
    	when :companies
      		params[:company].present?
      		session[:azienda] = params[:company]
      		if params[:company].present?
      			session[:azienda] = params[:company]
      			skip_step
      		end
    	end
    	case step
    	when :technical_datum
    		@company = Company.find(session[:azienda])
    	end
    	case step
    	when :raw_material
    		@company = Company.find(session[:azienda])
    	end
    	case step
    	when :energy
    		@company = Company.find(session[:azienda])
    	end
    	case step
    	when :transformer
    		@company = Company.find(session[:azienda])
    	end
    	case step
    	when :thermal_production
    		@company = Company.find(session[:azienda])
    	end
    	case step
    	when :utility
    		@company = Company.find(session[:azienda])
    	end
    	case step
    	when :compressor
    		@company = Company.find(session[:azienda])
    	end
    	case step
    	when :ventilator
    		@company = Company.find(session[:azienda])
    	end
    	render_wizard
  	end


  	def update
  		case step
    	when :companies
        	@company = Company.find(params[:azienda])
        	render_wizard @company
        end
        case step
        when :technical_datum
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
        case step
    	when :raw_material
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
        case step
    	when :energy
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
        case step
        when :transformer
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
        case step
        when :thermal_production
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
        case step
        when :utility
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
        case step
        when :compressor
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
        case step
        when :ventilator
        	@company = Company.find(session[:azienda])
        	@company.update_attributes(company_params)
        	render_wizard @company
        end
  	end


  	def company_params
      params.require(:company).permit(:admin_id, :denominazione, :codfisc, :piva, :indirizzo, :cap, :citta, :provincia, :telefono, :fax, :email, :web, :n_dipendenti, :n_impianti_produttivi, :fatturato, :iscrizione_elenco_energivori, :descrizione, :note, :visura, :bolletta,
      company_president_attributes: [:id, :nome, :cognome, :titolo, :codfisc, :piva, :indirizzo, :cap, :citta, :provincia, :telefono, :cellulare, :email, :_destroy],
      company_contact_person_attributes: [:id, :nome, :cognome, :titolo, :codfisc, :piva, :indirizzo, :cap, :citta, :provincia, :telefono, :cellulare, :email, :_destroy],
      technical_datum_attributes: [:id, :superficie_totale, :superficie_produzione, :superficie_uffici, :superficie_magazzini, :volume_totale, :volume_produzione, :volume_uffici, :volume_magazzini, :dimensione_uffici, :servizi_igenici, :dimensione_piazzale, :presenza_docce, :numero_impiegati, :numero_operai, :descrizione, :_destroy],
      
      raw_material_attributes: [:id, :company_id, :descrizione, :_destroy, 
      raw_material_items_attributes: [:id, :raw_material_id, :nome_materia, :unita_misura, :origine_dato, :note, :quantita, :anno_riferimento, :_destroy],
      walking_hours_attributes: [:id, :raw_material_id, :veicolo, :unita_misura, :origine_dato, :note, :ore_marcia, :anno_riferimento, :_destroy],
      finished_products_attributes: [:id, :raw_material_id, :prodotto, :unita_misura, :origine_dato, :note, :ore_marcia, :anno_riferimento, :_destroy]],
      
      energy_attributes: [:id, :company_id, :descrizione,:_destroy, 
      acquired_energies_attributes: [:id, :energy_id, :acquisti, :unita_misura, :note, :quantita, :costo, :anno_riferimento, :_destroy],
      produced_energies_attributes: [:id, :energy_id, :produzione, :unita_misura, :fonte, :quantita, :costo, :anno_riferimento, :_destroy]],

      transformer_attributes: [:id, :company_id, :cabine_media_tensione, :numero_cabine, :note, :_destroy,
      transformer_items_attributes: [:id, :transformer_id, :trasformatore, :marca, :modello, :tensione, :note, :_destroy]],

      thermal_production_attributes: [:id, :company_id, :note, :_destroy,
      thermal_production_items_attributes: [:id, :thermal_production_id, :caldo_freddo, :utenza, :nome_generatore, :matricola, :potenza, :dest_acs, :_destroy]],
      
      utility_attributes: [:id, :company_id, :note, :_destroy,
      utility_items_attributes: [:id, :utility_id, :nome, :marca, :matricola, :potenza, :ore, :vettore, :funzione, :ausiliari, :_destroy]],

      compressor_attributes: [:id, :company_id, :note, :_destroy,
      compressor_items_attributes: [:id, :compressor_id, :marca, :modello, :potenza, :anno, :note, :_destroy]],

      ventilator_attributes: [:id, :company_id, :note, :_destroy,
      ventilator_items_attributes: [:id, :ventilator_id, :trasformatore, :marca, :modello, :tensione, :note, :_destroy]]
      )
    end

end
