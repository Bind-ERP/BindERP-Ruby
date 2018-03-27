=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class EditOrder
    attr_accessor :id

    attr_accessor :address_id

    attr_accessor :client_id

    attr_accessor :comments

    attr_accessor :currency_id

    attr_accessor :discount_amount

    attr_accessor :discount_type

    attr_accessor :doc_number_id

    attr_accessor :exchange_rate

    attr_accessor :isr_rate

    attr_accessor :location_id

    attr_accessor :order_date

    attr_accessor :price_list_id

    attr_accessor :purchase_order

    attr_accessor :vat_rate

    attr_accessor :vat_ret_rate

    attr_accessor :warehouse_id

    attr_accessor :emails

    attr_accessor :products

    attr_accessor :services


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'ID',
        :'address_id' => :'AddressID',
        :'client_id' => :'ClientID',
        :'comments' => :'Comments',
        :'currency_id' => :'CurrencyID',
        :'discount_amount' => :'DiscountAmount',
        :'discount_type' => :'DiscountType',
        :'doc_number_id' => :'DocNumberID',
        :'exchange_rate' => :'ExchangeRate',
        :'isr_rate' => :'ISRRate',
        :'location_id' => :'LocationID',
        :'order_date' => :'OrderDate',
        :'price_list_id' => :'PriceListID',
        :'purchase_order' => :'PurchaseOrder',
        :'vat_rate' => :'VATRate',
        :'vat_ret_rate' => :'VATRetRate',
        :'warehouse_id' => :'WarehouseID',
        :'emails' => :'Emails',
        :'products' => :'Products',
        :'services' => :'Services'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'address_id' => :'String',
        :'client_id' => :'String',
        :'comments' => :'String',
        :'currency_id' => :'String',
        :'discount_amount' => :'Float',
        :'discount_type' => :'Integer',
        :'doc_number_id' => :'String',
        :'exchange_rate' => :'Float',
        :'isr_rate' => :'Float',
        :'location_id' => :'String',
        :'order_date' => :'DateTime',
        :'price_list_id' => :'String',
        :'purchase_order' => :'String',
        :'vat_rate' => :'Float',
        :'vat_ret_rate' => :'Float',
        :'warehouse_id' => :'String',
        :'emails' => :'Array<String>',
        :'products' => :'Array<NewOrderProduct>',
        :'services' => :'Array<NewOrderService>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ID')
        self.id = attributes[:'ID']
      end

      if attributes.has_key?(:'AddressID')
        self.address_id = attributes[:'AddressID']
      end

      if attributes.has_key?(:'ClientID')
        self.client_id = attributes[:'ClientID']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end

      if attributes.has_key?(:'CurrencyID')
        self.currency_id = attributes[:'CurrencyID']
      end

      if attributes.has_key?(:'DiscountAmount')
        self.discount_amount = attributes[:'DiscountAmount']
      end

      if attributes.has_key?(:'DiscountType')
        self.discount_type = attributes[:'DiscountType']
      end

      if attributes.has_key?(:'DocNumberID')
        self.doc_number_id = attributes[:'DocNumberID']
      end

      if attributes.has_key?(:'ExchangeRate')
        self.exchange_rate = attributes[:'ExchangeRate']
      end

      if attributes.has_key?(:'ISRRate')
        self.isr_rate = attributes[:'ISRRate']
      end

      if attributes.has_key?(:'LocationID')
        self.location_id = attributes[:'LocationID']
      end

      if attributes.has_key?(:'OrderDate')
        self.order_date = attributes[:'OrderDate']
      end

      if attributes.has_key?(:'PriceListID')
        self.price_list_id = attributes[:'PriceListID']
      end

      if attributes.has_key?(:'PurchaseOrder')
        self.purchase_order = attributes[:'PurchaseOrder']
      end

      if attributes.has_key?(:'VATRate')
        self.vat_rate = attributes[:'VATRate']
      end

      if attributes.has_key?(:'VATRetRate')
        self.vat_ret_rate = attributes[:'VATRetRate']
      end

      if attributes.has_key?(:'WarehouseID')
        self.warehouse_id = attributes[:'WarehouseID']
      end

      if attributes.has_key?(:'Emails')
        if (value = attributes[:'Emails']).is_a?(Array)
          self.emails = value
        end
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

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @address_id.nil?
        invalid_properties.push("invalid value for 'address_id', address_id cannot be nil.")
      end

      if @client_id.nil?
        invalid_properties.push("invalid value for 'client_id', client_id cannot be nil.")
      end

      if @currency_id.nil?
        invalid_properties.push("invalid value for 'currency_id', currency_id cannot be nil.")
      end

      if @location_id.nil?
        invalid_properties.push("invalid value for 'location_id', location_id cannot be nil.")
      end

      if @order_date.nil?
        invalid_properties.push("invalid value for 'order_date', order_date cannot be nil.")
      end

      if @price_list_id.nil?
        invalid_properties.push("invalid value for 'price_list_id', price_list_id cannot be nil.")
      end

      if @warehouse_id.nil?
        invalid_properties.push("invalid value for 'warehouse_id', warehouse_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @address_id.nil?
      return false if @client_id.nil?
      return false if @currency_id.nil?
      return false if @location_id.nil?
      return false if @order_date.nil?
      return false if @price_list_id.nil?
      return false if @warehouse_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          address_id == o.address_id &&
          client_id == o.client_id &&
          comments == o.comments &&
          currency_id == o.currency_id &&
          discount_amount == o.discount_amount &&
          discount_type == o.discount_type &&
          doc_number_id == o.doc_number_id &&
          exchange_rate == o.exchange_rate &&
          isr_rate == o.isr_rate &&
          location_id == o.location_id &&
          order_date == o.order_date &&
          price_list_id == o.price_list_id &&
          purchase_order == o.purchase_order &&
          vat_rate == o.vat_rate &&
          vat_ret_rate == o.vat_ret_rate &&
          warehouse_id == o.warehouse_id &&
          emails == o.emails &&
          products == o.products &&
          services == o.services
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, address_id, client_id, comments, currency_id, discount_amount, discount_type, doc_number_id, exchange_rate, isr_rate, location_id, order_date, price_list_id, purchase_order, vat_rate, vat_ret_rate, warehouse_id, emails, products, services].hash
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