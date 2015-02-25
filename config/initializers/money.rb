MoneyRails.configure do |config|

  # To set the default currency
  
  config.default_currency = :inr

  # To handle the inclusion of validations for monetized fields
  # The default value is true
  
  config.include_validations = true

  # Default ActiveRecord migration configuration values for columns:
  #
  # config.amount_column = { prefix: '',           
  #                          postfix: '_paisa',    
  #                         column_name: nil,     
  #                          type: :integer,      
  #                          present: true,        
  #                          null: false,          
  #                          default: 0
  #                        }
  # 
  # config.currency_column = { prefix: '',
  #                            postfix: '_currency',
  #                           column_name: nil,
  #                            type: :string,
  #                            present: true,
  #                            null: false,
  #                            default: 'INR'
  #                          }
  # Register a custom currency


  #  config.register_currency = {
  #   :priority            => 1,
  #   :iso_code            => "INR",
  #   :name                => "Indian National Rupee",
  #   :symbol              => "₹",
  #   :symbol_first        => true,
  #   :subunit             => "paisa",
  #   :subunit_to_unit     => 100,
  #   :thousands_separator => ".",
  #   :decimal_mark        => ","
  # }

  # Specify a rounding mode
  # Any one of:
  # 
  # BigDecimal::ROUND_UP,
  # BigDecimal::ROUND_DOWN,
  # BigDecimal::ROUND_HALF_UP,
  # BigDecimal::ROUND_HALF_DOWN,
  # BigDecimal::ROUND_HALF_EVEN,
  # BigDecimal::ROUND_CEILING,
  # BigDecimal::ROUND_FLOOR
  # 
  # set to BigDecimal::ROUND_HALF_EVEN by default
   
  config.rounding_mode = BigDecimal::ROUND_HALF_UP 

  # Set money formatted output globally.
  # Default value is nil meaning "ignore this option".
  # Options are nil, true, false.
  
  # config.no_cents_if_whole = nil
  # config.symbol = nil
  # config.sign_before_symbol = nil
end
