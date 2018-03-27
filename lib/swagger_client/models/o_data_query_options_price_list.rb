=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class ODataQueryOptionsPriceList
    attr_accessor :if_match

    attr_accessor :if_none_match

    attr_accessor :context

    attr_accessor :request

    attr_accessor :raw_values

    attr_accessor :select_expand

    attr_accessor :filter

    attr_accessor :order_by

    attr_accessor :skip

    attr_accessor :top

    attr_accessor :inline_count

    attr_accessor :validator


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'if_match' => :'IfMatch',
        :'if_none_match' => :'IfNoneMatch',
        :'context' => :'Context',
        :'request' => :'Request',
        :'raw_values' => :'RawValues',
        :'select_expand' => :'SelectExpand',
        :'filter' => :'Filter',
        :'order_by' => :'OrderBy',
        :'skip' => :'Skip',
        :'top' => :'Top',
        :'inline_count' => :'InlineCount',
        :'validator' => :'Validator'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'if_match' => :'Object',
        :'if_none_match' => :'Object',
        :'context' => :'ODataQueryContext',
        :'request' => :'Object',
        :'raw_values' => :'ODataRawQueryOptions',
        :'select_expand' => :'SelectExpandQueryOption',
        :'filter' => :'FilterQueryOption',
        :'order_by' => :'OrderByQueryOption',
        :'skip' => :'SkipQueryOption',
        :'top' => :'TopQueryOption',
        :'inline_count' => :'InlineCountQueryOption',
        :'validator' => :'ODataQueryValidator'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'IfMatch')
        self.if_match = attributes[:'IfMatch']
      end

      if attributes.has_key?(:'IfNoneMatch')
        self.if_none_match = attributes[:'IfNoneMatch']
      end

      if attributes.has_key?(:'Context')
        self.context = attributes[:'Context']
      end

      if attributes.has_key?(:'Request')
        self.request = attributes[:'Request']
      end

      if attributes.has_key?(:'RawValues')
        self.raw_values = attributes[:'RawValues']
      end

      if attributes.has_key?(:'SelectExpand')
        self.select_expand = attributes[:'SelectExpand']
      end

      if attributes.has_key?(:'Filter')
        self.filter = attributes[:'Filter']
      end

      if attributes.has_key?(:'OrderBy')
        self.order_by = attributes[:'OrderBy']
      end

      if attributes.has_key?(:'Skip')
        self.skip = attributes[:'Skip']
      end

      if attributes.has_key?(:'Top')
        self.top = attributes[:'Top']
      end

      if attributes.has_key?(:'InlineCount')
        self.inline_count = attributes[:'InlineCount']
      end

      if attributes.has_key?(:'Validator')
        self.validator = attributes[:'Validator']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          if_match == o.if_match &&
          if_none_match == o.if_none_match &&
          context == o.context &&
          request == o.request &&
          raw_values == o.raw_values &&
          select_expand == o.select_expand &&
          filter == o.filter &&
          order_by == o.order_by &&
          skip == o.skip &&
          top == o.top &&
          inline_count == o.inline_count &&
          validator == o.validator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [if_match, if_none_match, context, request, raw_values, select_expand, filter, order_by, skip, top, inline_count, validator].hash
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
