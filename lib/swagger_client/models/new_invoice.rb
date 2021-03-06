=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class NewInvoice
    attr_accessor :currency_id

    attr_accessor :client_id

    attr_accessor :location_id

    attr_accessor :warehouse_id

    attr_accessor :cfdi_use

    attr_accessor :invoice_date

    attr_accessor :price_list_id

    attr_accessor :exchange_rate

    attr_accessor :isr_ret_rate

    attr_accessor :vat_ret_rate

    attr_accessor :comments

    attr_accessor :vat_rate

    attr_accessor :discount_type

    attr_accessor :discount_amount

    attr_accessor :products

    attr_accessor :services

    attr_accessor :emails

    attr_accessor :purchase_order

    attr_accessor :credit_days

    attr_accessor :is_fiscal_invoice

    attr_accessor :show_ieps

    attr_accessor :number

    attr_accessor :account

    attr_accessor :payments

    attr_accessor :serie


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'currency_id' => :'CurrencyID',
        :'client_id' => :'ClientID',
        :'location_id' => :'LocationID',
        :'warehouse_id' => :'WarehouseID',
        :'cfdi_use' => :'CFDIUse',
        :'invoice_date' => :'InvoiceDate',
        :'price_list_id' => :'PriceListID',
        :'exchange_rate' => :'ExchangeRate',
        :'isr_ret_rate' => :'ISRRetRate',
        :'vat_ret_rate' => :'VATRetRate',
        :'comments' => :'Comments',
        :'vat_rate' => :'VATRate',
        :'discount_type' => :'DiscountType',
        :'discount_amount' => :'DiscountAmount',
        :'products' => :'Products',
        :'services' => :'Services',
        :'emails' => :'Emails',
        :'purchase_order' => :'PurchaseOrder',
        :'credit_days' => :'CreditDays',
        :'is_fiscal_invoice' => :'IsFiscalInvoice',
        :'show_ieps' => :'ShowIEPS',
        :'number' => :'Number',
        :'account' => :'Account',
        :'payments' => :'Payments',
        :'serie' => :'Serie'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'currency_id' => :'String',
        :'client_id' => :'String',
        :'location_id' => :'String',
        :'warehouse_id' => :'String',
        :'cfdi_use' => :'Integer',
        :'invoice_date' => :'DateTime',
        :'price_list_id' => :'String',
        :'exchange_rate' => :'Float',
        :'isr_ret_rate' => :'Float',
        :'vat_ret_rate' => :'Float',
        :'comments' => :'String',
        :'vat_rate' => :'Float',
        :'discount_type' => :'Integer',
        :'discount_amount' => :'Float',
        :'products' => :'Array<NewInvoiceProduct>',
        :'services' => :'Array<NewInvoiceService>',
        :'emails' => :'Array<String>',
        :'purchase_order' => :'String',
        :'credit_days' => :'Integer',
        :'is_fiscal_invoice' => :'BOOLEAN',
        :'show_ieps' => :'BOOLEAN',
        :'number' => :'Integer',
        :'account' => :'String',
        :'payments' => :'Array<NewInvoicePayment>',
        :'serie' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'CurrencyID')
        self.currency_id = attributes[:'CurrencyID']
      end

      if attributes.has_key?(:'ClientID')
        self.client_id = attributes[:'ClientID']
      end

      if attributes.has_key?(:'LocationID')
        self.location_id = attributes[:'LocationID']
      end

      if attributes.has_key?(:'WarehouseID')
        self.warehouse_id = attributes[:'WarehouseID']
      end

      if attributes.has_key?(:'CFDIUse')
        self.cfdi_use = attributes[:'CFDIUse']
      end

      if attributes.has_key?(:'InvoiceDate')
        self.invoice_date = attributes[:'InvoiceDate']
      end

      if attributes.has_key?(:'PriceListID')
        self.price_list_id = attributes[:'PriceListID']
      end

      if attributes.has_key?(:'ExchangeRate')
        self.exchange_rate = attributes[:'ExchangeRate']
      end

      if attributes.has_key?(:'ISRRetRate')
        self.isr_ret_rate = attributes[:'ISRRetRate']
      end

      if attributes.has_key?(:'VATRetRate')
        self.vat_ret_rate = attributes[:'VATRetRate']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end

      if attributes.has_key?(:'VATRate')
        self.vat_rate = attributes[:'VATRate']
      end

      if attributes.has_key?(:'DiscountType')
        self.discount_type = attributes[:'DiscountType']
      end

      if attributes.has_key?(:'DiscountAmount')
        self.discount_amount = attributes[:'DiscountAmount']
      end

      if attributes.has_key?(:'Products')
        if (value = attributes[:'Products']).is_a?(Array)
          self.products = value
        end
      end

      if attributes.has_key?(:'Services')
        if (value = attributes[:'Services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.has_key?(:'Emails')
        if (value = attributes[:'Emails']).is_a?(Array)
          self.emails = value
        end
      end

      if attributes.has_key?(:'PurchaseOrder')
        self.purchase_order = attributes[:'PurchaseOrder']
      end

      if attributes.has_key?(:'CreditDays')
        self.credit_days = attributes[:'CreditDays']
      end

      if attributes.has_key?(:'IsFiscalInvoice')
        self.is_fiscal_invoice = attributes[:'IsFiscalInvoice']
      end

      if attributes.has_key?(:'ShowIEPS')
        self.show_ieps = attributes[:'ShowIEPS']
      end

      if attributes.has_key?(:'Number')
        self.number = attributes[:'Number']
      end

      if attributes.has_key?(:'Account')
        self.account = attributes[:'Account']
      end

      if attributes.has_key?(:'Payments')
        if (value = attributes[:'Payments']).is_a?(Array)
          self.payments = value
        end
      end

      if attributes.has_key?(:'Serie')
        self.serie = attributes[:'Serie']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @currency_id.nil?
        invalid_properties.push("invalid value for 'currency_id', currency_id cannot be nil.")
      end

      if @client_id.nil?
        invalid_properties.push("invalid value for 'client_id', client_id cannot be nil.")
      end

      if @location_id.nil?
        invalid_properties.push("invalid value for 'location_id', location_id cannot be nil.")
      end

      if @warehouse_id.nil?
        invalid_properties.push("invalid value for 'warehouse_id', warehouse_id cannot be nil.")
      end

      if @cfdi_use.nil?
        invalid_properties.push("invalid value for 'cfdi_use', cfdi_use cannot be nil.")
      end

      if @invoice_date.nil?
        invalid_properties.push("invalid value for 'invoice_date', invoice_date cannot be nil.")
      end

      if @price_list_id.nil?
        invalid_properties.push("invalid value for 'price_list_id', price_list_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @currency_id.nil?
      return false if @client_id.nil?
      return false if @location_id.nil?
      return false if @warehouse_id.nil?
      return false if @cfdi_use.nil?
      return false if @invoice_date.nil?
      return false if @price_list_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          currency_id == o.currency_id &&
          client_id == o.client_id &&
          location_id == o.location_id &&
          warehouse_id == o.warehouse_id &&
          cfdi_use == o.cfdi_use &&
          invoice_date == o.invoice_date &&
          price_list_id == o.price_list_id &&
          exchange_rate == o.exchange_rate &&
          isr_ret_rate == o.isr_ret_rate &&
          vat_ret_rate == o.vat_ret_rate &&
          comments == o.comments &&
          vat_rate == o.vat_rate &&
          discount_type == o.discount_type &&
          discount_amount == o.discount_amount &&
          products == o.products &&
          services == o.services &&
          emails == o.emails &&
          purchase_order == o.purchase_order &&
          credit_days == o.credit_days &&
          is_fiscal_invoice == o.is_fiscal_invoice &&
          show_ieps == o.show_ieps &&
          number == o.number &&
          account == o.account &&
          payments == o.payments &&
          serie == o.serie
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [currency_id, client_id, location_id, warehouse_id, cfdi_use, invoice_date, price_list_id, exchange_rate, isr_ret_rate, vat_ret_rate, comments, vat_rate, discount_type, discount_amount, products, services, emails, purchase_order, credit_days, is_fiscal_invoice, show_ieps, number, account, payments, serie].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
