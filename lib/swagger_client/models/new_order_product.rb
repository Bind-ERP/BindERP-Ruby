=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class NewOrderProduct
    attr_accessor :id

    attr_accessor :price

    attr_accessor :qty

    attr_accessor :vat

    attr_accessor :index_number

    attr_accessor :ieps

    attr_accessor :ieps_type

    attr_accessor :comments

    attr_accessor :vat_exempt

    attr_accessor :require_lot

    attr_accessor :selected_imports

    attr_accessor :order_item_id

    attr_accessor :unit


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'ID',
        :'price' => :'Price',
        :'qty' => :'Qty',
        :'vat' => :'VAT',
        :'index_number' => :'IndexNumber',
        :'ieps' => :'IEPS',
        :'ieps_type' => :'IEPSType',
        :'comments' => :'Comments',
        :'vat_exempt' => :'VATExempt',
        :'require_lot' => :'RequireLot',
        :'selected_imports' => :'SelectedImports',
        :'order_item_id' => :'OrderItemID',
        :'unit' => :'Unit'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'price' => :'Float',
        :'qty' => :'Float',
        :'vat' => :'Float',
        :'index_number' => :'Integer',
        :'ieps' => :'Float',
        :'ieps_type' => :'Integer',
        :'comments' => :'String',
        :'vat_exempt' => :'BOOLEAN',
        :'require_lot' => :'BOOLEAN',
        :'selected_imports' => :'Array<String>',
        :'order_item_id' => :'String',
        :'unit' => :'String'
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

      if attributes.has_key?(:'Price')
        self.price = attributes[:'Price']
      end

      if attributes.has_key?(:'Qty')
        self.qty = attributes[:'Qty']
      end

      if attributes.has_key?(:'VAT')
        self.vat = attributes[:'VAT']
      end

      if attributes.has_key?(:'IndexNumber')
        self.index_number = attributes[:'IndexNumber']
      end

      if attributes.has_key?(:'IEPS')
        self.ieps = attributes[:'IEPS']
      end

      if attributes.has_key?(:'IEPSType')
        self.ieps_type = attributes[:'IEPSType']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end

      if attributes.has_key?(:'VATExempt')
        self.vat_exempt = attributes[:'VATExempt']
      end

      if attributes.has_key?(:'RequireLot')
        self.require_lot = attributes[:'RequireLot']
      end

      if attributes.has_key?(:'SelectedImports')
        if (value = attributes[:'SelectedImports']).is_a?(Array)
          self.selected_imports = value
        end
      end

      if attributes.has_key?(:'OrderItemID')
        self.order_item_id = attributes[:'OrderItemID']
      end

      if attributes.has_key?(:'Unit')
        self.unit = attributes[:'Unit']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @price.nil?
        invalid_properties.push("invalid value for 'price', price cannot be nil.")
      end

      if @qty.nil?
        invalid_properties.push("invalid value for 'qty', qty cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @price.nil?
      return false if @qty.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          price == o.price &&
          qty == o.qty &&
          vat == o.vat &&
          index_number == o.index_number &&
          ieps == o.ieps &&
          ieps_type == o.ieps_type &&
          comments == o.comments &&
          vat_exempt == o.vat_exempt &&
          require_lot == o.require_lot &&
          selected_imports == o.selected_imports &&
          order_item_id == o.order_item_id &&
          unit == o.unit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, price, qty, vat, index_number, ieps, ieps_type, comments, vat_exempt, require_lot, selected_imports, order_item_id, unit].hash
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
