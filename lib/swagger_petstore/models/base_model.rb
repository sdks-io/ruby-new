# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SwaggerPetstore
  # Base model.
  class BaseModel < CoreLibrary::BaseModel
    # Returns a Hash representation of the current object.
    def to_hash
      # validating the model being serialized
      self.class.validate(self) if self.class.respond_to?(:validate)

      hash = {}
      instance_variables.each do |name|
        value = instance_variable_get(name)
        name = name[1..]
        key = self.class.names.key?(name) ? self.class.names[name] : name
        optional_fields = self.class.optionals
        nullable_fields = self.class.nullables
        if value.nil?
          next unless nullable_fields.include?(name)

          if !optional_fields.include?(name) && !nullable_fields.include?(name)
            raise ArgumentError,
                  "`#{name}` cannot be nil in `#{self.class}`. Please specify a valid value."
          end
        end

        hash[key] = nil
        unless value.nil?
          if respond_to?("to_#{name}")
            if (value.instance_of? Array) || (value.instance_of? Hash)
              params = [hash, key]
              hash[key] = send("to_#{name}", *params)
            else
              hash[key] = send("to_#{name}")
            end
          elsif respond_to?("to_union_type_#{name}")
            hash[key] = send("to_union_type_#{name}")
          elsif value.instance_of? Array
            hash[key] = value.map { |v| v.is_a?(BaseModel) ? v.to_hash : v }
          elsif value.instance_of? Hash
            hash[key] = {}
            value.each do |k, v|
              hash[key][k] = v.is_a?(BaseModel) ? v.to_hash : v
            end
          else
            hash[key] = value.is_a?(BaseModel) ? value.to_hash : value
          end
        end
      end
      hash
    end

    # Returns a JSON representation of the curent object.
    def to_json(options = {})
      hash = to_hash
      hash.to_json(options)
    end
  end
end
