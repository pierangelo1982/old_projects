module EnergiesHelper

  def energia_acquistata_array
    myArray = ["Energia Elettrica",
              "Energia termica",
              "Gas naturale",
              "Biogas (inserire PCI nelle note con relativa u.m.)",
              "Gasolio (no autotrazione)",
              "Olio combustibile",
              "Biomassa (inserire PCI nelle note con relativa u.m.)",
              "Altro (specificare)",
              "Gasolio autotrazione"
            ]
    return myArray
  end


  def energia_prodotta_array
    myArray = ["Energia Elettrica Netta", "Energia termica netta"]
    return myArray
  end

  def energia_unita_misura
    myArray = ["kWh", "Sm3", "kg", "kWh"]
    return myArray
  end
end
