=begin
#Bind ERP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class ProductDetails
    attr_accessor :id

    attr_accessor :code

    attr_accessor :title

    attr_accessor :description

    attr_accessor :creation_date

    attr_accessor :cost

    attr_accessor :sku

    attr_accessor :comments

    attr_accessor :cost_type

    attr_accessor :category1_id

    attr_accessor :category1

    attr_accessor :category2_id

    attr_accessor :category2

    attr_accessor :category3_id

    attr_accessor :category3

    attr_accessor :current_inventory

    attr_accessor :charge_vat

    attr_accessor :number

    attr_accessor :pricing_type

    attr_accessor :unit

    attr_accessor :currency_id

    attr_accessor :currency_code

    attr_accessor :purchase_type

    attr_accessor :ieps_rate

    attr_accessor :type

    attr_accessor :production_auto

    attr_accessor :prices

    attr_accessor :inventories

    attr_accessor :alternative_units


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'ID',
        :'code' => :'Code',
        :'title' => :'Title',
        :'description' => :'Description',
        :'creation_date' => :'CreationDate',
        :'cost' => :'Cost',
        :'sku' => :'SKU',
        :'comments' => :'Comments',
        :'cost_type' => :'CostType',
        :'category1_id' => :'Category1ID',
        :'category1' => :'Category1',
        :'category2_id' => :'Category2ID',
        :'category2' => :'Category2',
        :'category3_id' => :'Category3ID',
        :'category3' => :'Category3',
        :'current_inventory' => :'CurrentInventory',
        :'charge_vat' => :'ChargeVAT',
        :'number' => :'Number',
        :'pricing_type' => :'PricingType',
        :'unit' => :'Unit',
        :'currency_id' => :'CurrencyID',
        :'currency_code' => :'CurrencyCode',
        :'purchase_type' => :'PurchaseType',
        :'ieps_rate' => :'IEPSRate',
        :'type' => :'Type',
        :'production_auto' => :'ProductionAuto',
        :'prices' => :'Prices',
        :'inventories' => :'Inventories',
        :'alternative_units' => :'AlternativeUnits'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'code' => :'String',
        :'title' => :'String',
        :'description' => :'String',
        :'creation_date' => :'DateTime',
        :'cost' => :'Float',
        :'sku' => :'String',
        :'comments' => :'String',
        :'cost_type' => :'Integer',
        :'category1_id' => :'String',
        :'category1' => :'String',
        :'category2_id' => :'String',
        :'category2' => :'String',
        :'category3_id' => :'String',
        :'category3' => :'String',
        :'current_inventory' => :'Float',
        :'charge_vat' => :'BOOLEAN',
        :'number' => :'Integer',
        :'pricing_type' => :'Integer',
        :'unit' => :'String',
        :'currency_id' => :'String',
        :'currency_code' => :'String',
        :'purchase_type' => :'Integer',
        :'ieps_rate' => :'Float',
        :'type' => :'Integer',
        :'production_auto' => :'BOOLEAN',
        :'prices' => :'ProductPrices',
        :'inventories' => :'Array<ProductInventories>',
        :'alternative_units' => :'Array<ProductAlternativeUnits>'
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

      if attributes.has_key?(:'Code')
        self.code = attributes[:'Code']
      end

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'CreationDate')
        self.creation_date = attributes[:'CreationDate']
      end

      if attributes.has_key?(:'Cost')
        self.cost = attributes[:'Cost']
      end

      if attributes.has_key?(:'SKU')
        self.sku = attributes[:'SKU']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end

      if attributes.has_key?(:'CostType')
        self.cost_type = attributes[:'CostType']
      end

      if attributes.has_key?(:'Category1ID')
        self.category1_id = attributes[:'Category1ID']
      end

      if attributes.has_key?(:'Category1')
        self.category1 = attributes[:'Category1']
      end

      if attributes.has_key?(:'Category2ID')
        self.category2_id = attributes[:'Category2ID']
      end

      if attributes.has_key?(:'Category2')
        self.category2 = attributes[:'Category2']
      end

      if attributes.has_key?(:'Category3ID')
        self.category3_id = attributes[:'Category3ID']
      end

      if attributes.has_key?(:'Category3')
        self.category3 = attributes[:'Category3']
      end

      if attributes.has_key?(:'CurrentInventory')
        self.current_inventory = attributes[:'CurrentInventory']
      end

      if attributes.has_key?(:'ChargeVAT')
        self.charge_vat = attributes[:'ChargeVAT']
      end

      if attributes.has_key?(:'Number')
        self.number = attributes[:'Number']
      end

      if attributes.has_key?(:'PricingType')
        self.pricing_type = attributes[:'PricingType']
      end

      if attributes.has_key?(:'Unit')
        self.unit = attributes[:'Unit']
      end

      if attributes.has_key?(:'CurrencyID')
        self.currency_id = attributes[:'CurrencyID']
      end

      if attributes.has_key?(:'CurrencyCode')
        self.currency_code = attributes[:'CurrencyCode']
      end

      if attributes.has_key?(:'PurchaseType')
        self.purchase_type = attributes[:'PurchaseType']
      end

      if attributes.has_key?(:'IEPSRate')
        self.ieps_rate = attributes[:'IEPSRate']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'ProductionAuto')
        self.production_auto = attributes[:'ProductionAuto']
      end

      if attributes.has_key?(:'Prices')
        self.prices = attributes[:'Prices']
      end

      if attributes.has_key?(:'Inventories')
        if (value = attributes[:'Inventories']).is_a?(Array)
          self.inventories = value
        end
      end

      if attributes.has_key?(:'AlternativeUnits')
        if (value = attributes[:'AlternativeUnits']).is_a?(Array)
          self.alternative_units = value
        end
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
          id == o.id &&
          code == o.code &&
          title == o.title &&
          description == o.description &&
          creation_date == o.creation_date &&
          cost == o.cost &&
          sku == o.sku &&
          comments == o.comments &&
          cost_type == o.cost_type &&
          category1_id == o.category1_id &&
          category1 == o.category1 &&
          category2_id == o.category2_id &&
          category2 == o.category2 &&
          category3_id == o.category3_id &&
          category3 == o.category3 &&
          current_inventory == o.current_inventory &&
          charge_vat == o.charge_vat &&
          number == o.number &&
          pricing_type == o.pricing_type &&
          unit == o.unit &&
          currency_id == o.currency_id &&
          currency_code == o.currency_code &&
          purchase_type == o.purchase_type &&
          ieps_rate == o.ieps_rate &&
          type == o.type &&
          production_auto == o.production_auto &&
          prices == o.prices &&
          inventories == o.inventories &&
          alternative_units == o.alternative_units
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, code, title, description, creation_date, cost, sku, comments, cost_type, category1_id, category1, category2_id, category2, category3_id, category3, current_inventory, charge_vat, number, pricing_type, unit, currency_id, currency_code, purchase_type, ieps_rate, type, production_auto, prices, inventories, alternative_units].hash
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
