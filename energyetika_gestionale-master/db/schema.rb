# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180213103536) do

  create_table "acquired_energies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "energy_id"
    t.string "acquisti"
    t.string "unita_misura"
    t.string "note"
    t.string "quantita"
    t.string "costo"
    t.string "anno_riferimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["energy_id"], name: "index_acquired_energies_on_energy_id"
  end

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin", default: false, null: false
    t.boolean "admin", default: false, null: false
    t.boolean "agent", default: false, null: false
    t.boolean "consultant", default: false, null: false
    t.boolean "insider", default: false, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "admin_id"
    t.string "denominazione"
    t.string "codfisc"
    t.string "piva"
    t.string "indirizzo"
    t.string "cap"
    t.string "citta"
    t.string "provincia"
    t.string "telefono"
    t.string "fax"
    t.string "email"
    t.string "web"
    t.string "n_dipendenti"
    t.string "n_impianti_produttivi"
    t.string "fatturato"
    t.boolean "iscrizione_elenco_energivori", default: false, null: false
    t.text "descrizione"
    t.text "note"
    t.string "visura"
    t.string "bolletta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "visura_file_name"
    t.string "visura_content_type"
    t.integer "visura_file_size"
    t.datetime "visura_updated_at"
    t.string "bolletta_file_name"
    t.string "bolletta_content_type"
    t.integer "bolletta_file_size"
    t.datetime "bolletta_updated_at"
    t.index ["admin_id"], name: "index_companies_on_admin_id"
  end

  create_table "company_contact_people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.string "nome"
    t.string "cognome"
    t.string "titolo"
    t.string "codfisc"
    t.string "piva"
    t.string "indirizzo"
    t.string "cap"
    t.string "citta"
    t.string "provincia"
    t.string "telefono"
    t.string "cellulare"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_contact_people_on_company_id"
  end

  create_table "company_presidents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.string "nome"
    t.string "cognome"
    t.string "titolo"
    t.string "codfisc"
    t.string "piva"
    t.string "indirizzo"
    t.string "cap"
    t.string "citta"
    t.string "provincia"
    t.string "telefono"
    t.string "cellulare"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_presidents_on_company_id"
  end

  create_table "compressor_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "compressor_id"
    t.string "marca"
    t.string "modello"
    t.string "potenza"
    t.string "anno"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compressor_id"], name: "index_compressor_items_on_compressor_id"
  end

  create_table "compressors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_compressors_on_company_id"
  end

  create_table "energies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.text "descrizione"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_energies_on_company_id"
  end

  create_table "finished_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "raw_material_id"
    t.string "prodotto"
    t.string "unita_misura"
    t.string "origine_dato"
    t.text "note"
    t.string "ore_marcia"
    t.string "anno_riferimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["raw_material_id"], name: "index_finished_products_on_raw_material_id"
  end

  create_table "produced_energies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "energy_id"
    t.string "produzione"
    t.string "unita_misura"
    t.string "fonte"
    t.string "quantita"
    t.string "costo"
    t.string "anno_riferimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["energy_id"], name: "index_produced_energies_on_energy_id"
  end

  create_table "raw_material_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "raw_material_id"
    t.string "nome_materia"
    t.string "unita_misura"
    t.string "origine_dato"
    t.text "note"
    t.decimal "quantita", precision: 10, default: "0"
    t.string "anno_riferimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["raw_material_id"], name: "index_raw_material_items_on_raw_material_id"
  end

  create_table "raw_materials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.text "descrizione"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_raw_materials_on_company_id"
  end

  create_table "technical_data", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.decimal "superficie_totale", precision: 60, scale: 2, default: "0.0"
    t.decimal "superficie_produzione", precision: 60, scale: 2, default: "0.0"
    t.decimal "superficie_uffici", precision: 60, scale: 2, default: "0.0"
    t.decimal "superficie_magazzini", precision: 60, scale: 2, default: "0.0"
    t.decimal "volume_totale", precision: 60, scale: 2, default: "0.0"
    t.decimal "volume_produzione", precision: 60, scale: 2, default: "0.0"
    t.decimal "volume_uffici", precision: 60, scale: 2, default: "0.0"
    t.decimal "volume_magazzini", precision: 60, scale: 2, default: "0.0"
    t.decimal "dimensione_uffici", precision: 60, scale: 2, default: "0.0"
    t.integer "servizi_igenici", default: 0
    t.decimal "dimensione_piazzale", precision: 60, scale: 2, default: "0.0"
    t.integer "presenza_docce", default: 0
    t.integer "numero_impiegati", default: 0
    t.integer "numero_operai", default: 0
    t.text "descrizione"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_technical_data_on_company_id"
  end

  create_table "thermal_production_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "thermal_production_id"
    t.string "caldo_freddo"
    t.string "utenza"
    t.string "nome_generatore"
    t.string "matricola"
    t.string "potenza"
    t.string "dest_acs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["thermal_production_id"], name: "index_thermal_production_items_on_thermal_production_id"
  end

  create_table "thermal_productions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_thermal_productions_on_company_id"
  end

  create_table "transformer_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "transformer_id"
    t.string "trasformatore"
    t.string "marca"
    t.string "modello"
    t.string "tensione"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transformer_id"], name: "index_transformer_items_on_transformer_id"
  end

  create_table "transformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.boolean "cabine_media_tensione", default: false
    t.integer "numero_cabine", default: 0
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_transformers_on_company_id"
  end

  create_table "utilities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_utilities_on_company_id"
  end

  create_table "utility_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "utility_id"
    t.string "nome"
    t.string "marca"
    t.string "matricola"
    t.string "potenza"
    t.string "ore"
    t.string "vettore"
    t.string "funzione"
    t.string "ausiliari"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["utility_id"], name: "index_utility_items_on_utility_id"
  end

  create_table "ventilator_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "ventilator_id"
    t.string "marca"
    t.string "modello"
    t.string "potenza"
    t.string "anno"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ventilator_id"], name: "index_ventilator_items_on_ventilator_id"
  end

  create_table "ventilators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "company_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_ventilators_on_company_id"
  end

  create_table "walking_hours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "raw_material_id"
    t.string "veicolo"
    t.string "unita_misura"
    t.string "origine_dato"
    t.text "note"
    t.string "ore_marcia"
    t.string "anno_riferimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["raw_material_id"], name: "index_walking_hours_on_raw_material_id"
  end

  add_foreign_key "acquired_energies", "energies"
  add_foreign_key "companies", "admins"
  add_foreign_key "company_contact_people", "companies"
  add_foreign_key "company_presidents", "companies"
  add_foreign_key "compressor_items", "compressors"
  add_foreign_key "compressors", "companies"
  add_foreign_key "energies", "companies"
  add_foreign_key "finished_products", "raw_materials"
  add_foreign_key "produced_energies", "energies"
  add_foreign_key "raw_material_items", "raw_materials"
  add_foreign_key "raw_materials", "companies"
  add_foreign_key "technical_data", "companies"
  add_foreign_key "thermal_production_items", "thermal_productions"
  add_foreign_key "thermal_productions", "companies"
  add_foreign_key "transformer_items", "transformers"
  add_foreign_key "transformers", "companies"
  add_foreign_key "utilities", "companies"
  add_foreign_key "utility_items", "utilities"
  add_foreign_key "ventilator_items", "ventilators"
  add_foreign_key "ventilators", "companies"
  add_foreign_key "walking_hours", "raw_materials"
end
