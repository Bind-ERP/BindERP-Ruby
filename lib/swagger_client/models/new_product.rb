=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class NewProduct
    attr_accessor :title

    attr_accessor :cost

    attr_accessor :price

    attr_accessor :currency_id

    attr_accessor :exchange_rate

    attr_accessor :code

    attr_accessor :description

    attr_accessor :sku

    attr_accessor :category1_id

    attr_accessor :category2_id

    attr_accessor :category3_id

    attr_accessor :ieps


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'Title',
        :'cost' => :'Cost',
        :'price' => :'Price',
        :'currency_id' => :'CurrencyId',
        :'exchange_rate' => :'ExchangeRate',
        :'code' => :'Code',
        :'description' => :'Description',
        :'sku' => :'SKU',
        :'category1_id' => :'Category1Id',
        :'category2_id' => :'Category2Id',
        :'category3_id' => :'Category3Id',
        :'ieps' => :'IEPS'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'title' => :'String',
        :'cost' => :'Float',
        :'price' => :'Float',
        :'currency_id' => :'String',
        :'exchange_rate' => :'Float',
        :'code' => :'String',
        :'description' => :'String',
        :'sku' => :'String',
        :'category1_id' => :'String',
        :'category2_id' => :'String',
        :'category3_id' => :'String',
        :'ieps' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'Cost')
        self.cost = attributes[:'Cost']
      end

      if attributes.has_key?(:'Price')
        self.price = attributes[:'Price']
      end

      if attributes.has_key?(:'CurrencyId')
        self.currency_id = attributes[:'CurrencyId']
      end

      if attributes.has_key?(:'ExchangeRate')
        self.exchange_rate = attributes[:'ExchangeRate']
      end

      if attributes.has_key?(:'Code')
        self.code = attributes[:'Code']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'SKU')
        self.sku = attributes[:'SKU']
      end

      if attributes.has_key?(:'Category1Id')
        self.category1_id = attributes[:'Category1Id']
      end

      if attributes.has_key?(:'Category2Id')
        self.category2_id = attributes[:'Category2Id']
      end

      if attributes.has_key?(:'Category3Id')
        self.category3_id = attributes[:'Category3Id']
      end

      if attributes.has_key?(:'IEPS')
        self.ieps = attributes[:'IEPS']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @title.nil?
        invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end

      if @cost.nil?
        invalid_properties.push("invalid value for 'cost', cost cannot be nil.")
      end

      if @price.nil?
        invalid_properties.push("invalid value for 'price', price cannot be nil.")
      end

      if @currency_id.nil?
        invalid_properties.push("invalid value for 'currency_id', currency_id cannot be nil.")
      end

      if @code.nil?
        invalid_properties.push("invalid value for 'code', code cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      return false if @cost.nil?
      return false if @price.nil?
      return false if @currency_id.nil?
      return false if @code.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          cost == o.cost &&
          price == o.price &&
          currency_id == o.currency_id &&
          exchange_rate == o.exchange_rate &&
          code == o.code &&
          description == o.description &&
          sku == o.sku &&
          category1_id == o.category1_id &&
          category2_id == o.category2_id &&
          category3_id == o.category3_id &&
          ieps == o.ieps
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [title, cost, price, currency_id, exchange_rate, code, description, sku, category1_id, category2_id, category3_id, ieps].hash
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