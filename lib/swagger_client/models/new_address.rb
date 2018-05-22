=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class NewAddress
    attr_accessor :street_name

    attr_accessor :interior_number

    attr_accessor :exterior_number

    attr_accessor :colonia

    attr_accessor :comments

    attr_accessor :zip_code

    attr_accessor :localidad

    attr_accessor :city

    attr_accessor :state


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'street_name' => :'StreetName',
        :'interior_number' => :'InteriorNumber',
        :'exterior_number' => :'ExteriorNumber',
        :'colonia' => :'Colonia',
        :'comments' => :'Comments',
        :'zip_code' => :'ZipCode',
        :'localidad' => :'Localidad',
        :'city' => :'City',
        :'state' => :'State'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'street_name' => :'String',
        :'interior_number' => :'String',
        :'exterior_number' => :'String',
        :'colonia' => :'String',
        :'comments' => :'String',
        :'zip_code' => :'String',
        :'localidad' => :'String',
        :'city' => :'String',
        :'state' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'StreetName')
        self.street_name = attributes[:'StreetName']
      end

      if attributes.has_key?(:'InteriorNumber')
        self.interior_number = attributes[:'InteriorNumber']
      end

      if attributes.has_key?(:'ExteriorNumber')
        self.exterior_number = attributes[:'ExteriorNumber']
      end

      if attributes.has_key?(:'Colonia')
        self.colonia = attributes[:'Colonia']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end

      if attributes.has_key?(:'ZipCode')
        self.zip_code = attributes[:'ZipCode']
      end

      if attributes.has_key?(:'Localidad')
        self.localidad = attributes[:'Localidad']
      end

      if attributes.has_key?(:'City')
        self.city = attributes[:'City']
      end

      if attributes.has_key?(:'State')
        self.state = attributes[:'State']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @street_name.nil?
        invalid_properties.push("invalid value for 'street_name', street_name cannot be nil.")
      end

      if @exterior_number.nil?
        invalid_properties.push("invalid value for 'exterior_number', exterior_number cannot be nil.")
      end

      if @colonia.nil?
        invalid_properties.push("invalid value for 'colonia', colonia cannot be nil.")
      end

      if @zip_code.nil?
        invalid_properties.push("invalid value for 'zip_code', zip_code cannot be nil.")
      end

      if @city.nil?
        invalid_properties.push("invalid value for 'city', city cannot be nil.")
      end

      if @state.nil?
        invalid_properties.push("invalid value for 'state', state cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @street_name.nil?
      return false if @exterior_number.nil?
      return false if @colonia.nil?
      return false if @zip_code.nil?
      return false if @city.nil?
      return false if @state.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          street_name == o.street_name &&
          interior_number == o.interior_number &&
          exterior_number == o.exterior_number &&
          colonia == o.colonia &&
          comments == o.comments &&
          zip_code == o.zip_code &&
          localidad == o.localidad &&
          city == o.city &&
          state == o.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [street_name, interior_number, exterior_number, colonia, comments, zip_code, localidad, city, state].hash
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
