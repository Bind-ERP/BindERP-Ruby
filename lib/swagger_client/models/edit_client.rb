=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class EditClient
    attr_accessor :id

    attr_accessor :legal_name

    attr_accessor :commercial_name

    attr_accessor :rfc

    attr_accessor :credit_days

    attr_accessor :credit_amount

    attr_accessor :payment_method

    attr_accessor :payment_term

    attr_accessor :location_id

    attr_accessor :sales_employee_id

    attr_accessor :credit_employee_id

    attr_accessor :price_list_id

    attr_accessor :comment

    attr_accessor :telephone

    attr_accessor :email

    attr_accessor :account_number

    attr_accessor :default_discount

    attr_accessor :source

    attr_accessor :accounting_number


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'ID',
        :'legal_name' => :'LegalName',
        :'commercial_name' => :'CommercialName',
        :'rfc' => :'RFC',
        :'credit_days' => :'CreditDays',
        :'credit_amount' => :'CreditAmount',
        :'payment_method' => :'PaymentMethod',
        :'payment_term' => :'PaymentTerm',
        :'location_id' => :'LocationID',
        :'sales_employee_id' => :'SalesEmployeeID',
        :'credit_employee_id' => :'CreditEmployeeID',
        :'price_list_id' => :'PriceListID',
        :'comment' => :'Comment',
        :'telephone' => :'Telephone',
        :'email' => :'Email',
        :'account_number' => :'AccountNumber',
        :'default_discount' => :'DefaultDiscount',
        :'source' => :'Source',
        :'accounting_number' => :'AccountingNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'legal_name' => :'String',
        :'commercial_name' => :'String',
        :'rfc' => :'String',
        :'credit_days' => :'Integer',
        :'credit_amount' => :'Float',
        :'payment_method' => :'Integer',
        :'payment_term' => :'Integer',
        :'location_id' => :'String',
        :'sales_employee_id' => :'String',
        :'credit_employee_id' => :'String',
        :'price_list_id' => :'String',
        :'comment' => :'String',
        :'telephone' => :'String',
        :'email' => :'String',
        :'account_number' => :'String',
        :'default_discount' => :'Float',
        :'source' => :'String',
        :'accounting_number' => :'String'
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

      if attributes.has_key?(:'LegalName')
        self.legal_name = attributes[:'LegalName']
      end

      if attributes.has_key?(:'CommercialName')
        self.commercial_name = attributes[:'CommercialName']
      end

      if attributes.has_key?(:'RFC')
        self.rfc = attributes[:'RFC']
      end

      if attributes.has_key?(:'CreditDays')
        self.credit_days = attributes[:'CreditDays']
      end

      if attributes.has_key?(:'CreditAmount')
        self.credit_amount = attributes[:'CreditAmount']
      end

      if attributes.has_key?(:'PaymentMethod')
        self.payment_method = attributes[:'PaymentMethod']
      end

      if attributes.has_key?(:'PaymentTerm')
        self.payment_term = attributes[:'PaymentTerm']
      end

      if attributes.has_key?(:'LocationID')
        self.location_id = attributes[:'LocationID']
      end

      if attributes.has_key?(:'SalesEmployeeID')
        self.sales_employee_id = attributes[:'SalesEmployeeID']
      end

      if attributes.has_key?(:'CreditEmployeeID')
        self.credit_employee_id = attributes[:'CreditEmployeeID']
      end

      if attributes.has_key?(:'PriceListID')
        self.price_list_id = attributes[:'PriceListID']
      end

      if attributes.has_key?(:'Comment')
        self.comment = attributes[:'Comment']
      end

      if attributes.has_key?(:'Telephone')
        self.telephone = attributes[:'Telephone']
      end

      if attributes.has_key?(:'Email')
        self.email = attributes[:'Email']
      end

      if attributes.has_key?(:'AccountNumber')
        self.account_number = attributes[:'AccountNumber']
      end

      if attributes.has_key?(:'DefaultDiscount')
        self.default_discount = attributes[:'DefaultDiscount']
      end

      if attributes.has_key?(:'Source')
        self.source = attributes[:'Source']
      end

      if attributes.has_key?(:'AccountingNumber')
        self.accounting_number = attributes[:'AccountingNumber']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @legal_name.nil?
        invalid_properties.push("invalid value for 'legal_name', legal_name cannot be nil.")
      end

      if @commercial_name.nil?
        invalid_properties.push("invalid value for 'commercial_name', commercial_name cannot be nil.")
      end

      if @rfc.nil?
        invalid_properties.push("invalid value for 'rfc', rfc cannot be nil.")
      end

      if @rfc !~ Regexp.new(/[A-Z,a-z,ñ,Ñ,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,a-z,0-9]?[A-Z,a-z,0-9]?[0-9,A-Z,a-z]?/)
        invalid_properties.push("invalid value for 'rfc', must conform to the pattern /[A-Z,a-z,ñ,Ñ,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,a-z,0-9]?[A-Z,a-z,0-9]?[0-9,A-Z,a-z]?/.")
      end

      if @credit_days.nil?
        invalid_properties.push("invalid value for 'credit_days', credit_days cannot be nil.")
      end

      if @credit_amount.nil?
        invalid_properties.push("invalid value for 'credit_amount', credit_amount cannot be nil.")
      end

      if @price_list_id.nil?
        invalid_properties.push("invalid value for 'price_list_id', price_list_id cannot be nil.")
      end

      if @accounting_number.nil?
        invalid_properties.push("invalid value for 'accounting_number', accounting_number cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @legal_name.nil?
      return false if @commercial_name.nil?
      return false if @rfc.nil?
      return false if @rfc !~ Regexp.new(/[A-Z,a-z,ñ,Ñ,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,a-z,0-9]?[A-Z,a-z,0-9]?[0-9,A-Z,a-z]?/)
      return false if @credit_days.nil?
      return false if @credit_amount.nil?
      return false if @price_list_id.nil?
      return false if @accounting_number.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] rfc Value to be assigned
    def rfc=(rfc)
      if rfc.nil?
        fail ArgumentError, "rfc cannot be nil"
      end

      if rfc !~ Regexp.new(/[A-Z,a-z,ñ,Ñ,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,a-z,0-9]?[A-Z,a-z,0-9]?[0-9,A-Z,a-z]?/)
        fail ArgumentError, "invalid value for 'rfc', must conform to the pattern /[A-Z,a-z,ñ,Ñ,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,a-z,0-9]?[A-Z,a-z,0-9]?[0-9,A-Z,a-z]?/."
      end

      @rfc = rfc
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          legal_name == o.legal_name &&
          commercial_name == o.commercial_name &&
          rfc == o.rfc &&
          credit_days == o.credit_days &&
          credit_amount == o.credit_amount &&
          payment_method == o.payment_method &&
          payment_term == o.payment_term &&
          location_id == o.location_id &&
          sales_employee_id == o.sales_employee_id &&
          credit_employee_id == o.credit_employee_id &&
          price_list_id == o.price_list_id &&
          comment == o.comment &&
          telephone == o.telephone &&
          email == o.email &&
          account_number == o.account_number &&
          default_discount == o.default_discount &&
          source == o.source &&
          accounting_number == o.accounting_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, legal_name, commercial_name, rfc, credit_days, credit_amount, payment_method, payment_term, location_id, sales_employee_id, credit_employee_id, price_list_id, comment, telephone, email, account_number, default_discount, source, accounting_number].hash
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