# module Jekyll
#     module ItalianMonths


#         def italianMonts( month )
#             puts month
#             MONTHS[ month ]
#         end

#     end
# end

# Liquid::Template.register_filter( Jekyll::ItalianMonths )

module Jekyll
  module Checked
    MONTHS = {
      "01" => "Gennaio", 
      "02" => "Febbraio", 
      "03" => "Marzo",
      "04" => "Aprile", 
      "05" => "Maggio", 
      "06" => "Giugno",
      "07" => "Luglio", 
      "08" => "Agosto", 
      "09" => "Settembre",
      "10" => "Ottobre", 
      "11" => "Novembre", 
      "12" => "Dicembre"}
    def italianMonths( text )
      MONTHS[ text ]
    end
  end
end

Liquid::Template.register_filter(Jekyll::Checked)