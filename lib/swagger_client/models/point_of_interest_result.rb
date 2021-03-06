=begin
#Amadeus Travel Innovation Sandbox

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SwaggerClient

  class PointOfInterestResult
    # Display name of a given point of interest
    attr_accessor :title

    # A link to an image of the given location
    attr_accessor :main_image

    attr_accessor :location

    attr_accessor :grades

    # Array of descriptions indicating what type of point of interest this is. You can filter the results to include only certain categories of point of interest using the category input parameter.
    attr_accessor :categories

    attr_accessor :details

    # Images taken at this point of interest. Note that these images might have nothing to do with the point itself, particularly if you have enabled the social_media parameter
    attr_accessor :contextual_images

    # The GeonamesID of this point of interest, if available
    attr_accessor :geoname_id

    # Time in minutes that it takes to walk from the searched coordinates to this Point of Interest
    attr_accessor :walk_time


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'title',
        :'main_image' => :'main_image',
        :'location' => :'location',
        :'grades' => :'grades',
        :'categories' => :'categories',
        :'details' => :'details',
        :'contextual_images' => :'contextual_images',
        :'geoname_id' => :'geoname_id',
        :'walk_time' => :'walk_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'title' => :'String',
        :'main_image' => :'String',
        :'location' => :'Geolocation',
        :'grades' => :'PointOfInterestResultGrades',
        :'categories' => :'Array<String>',
        :'details' => :'PointOfInterestDetails',
        :'contextual_images' => :'Array<ImageSize>',
        :'geoname_id' => :'Integer',
        :'walk_time' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'main_image')
        self.main_image = attributes[:'main_image']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'grades')
        self.grades = attributes[:'grades']
      end

      if attributes.has_key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.has_key?(:'details')
        self.details = attributes[:'details']
      end

      if attributes.has_key?(:'contextual_images')
        if (value = attributes[:'contextual_images']).is_a?(Array)
          self.contextual_images = value
        end
      end

      if attributes.has_key?(:'geoname_id')
        self.geoname_id = attributes[:'geoname_id']
      end

      if attributes.has_key?(:'walk_time')
        self.walk_time = attributes[:'walk_time']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @title.nil?
        invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end

      if @main_image.nil?
        invalid_properties.push("invalid value for 'main_image', main_image cannot be nil.")
      end

      if @location.nil?
        invalid_properties.push("invalid value for 'location', location cannot be nil.")
      end

      if @categories.nil?
        invalid_properties.push("invalid value for 'categories', categories cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      return false if @main_image.nil?
      return false if @location.nil?
      return false if @categories.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          main_image == o.main_image &&
          location == o.location &&
          grades == o.grades &&
          categories == o.categories &&
          details == o.details &&
          contextual_images == o.contextual_images &&
          geoname_id == o.geoname_id &&
          walk_time == o.walk_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [title, main_image, location, grades, categories, details, contextual_images, geoname_id, walk_time].hash
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
