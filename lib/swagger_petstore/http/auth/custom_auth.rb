# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SwaggerPetstore
  # Utility class for custom authorization.
  class CustomAuth < CoreLibrary::HeaderAuth
    # Display error message on occurrence of authentication failure in CustomAuthentication.
    # @returns [String] The oAuth error message.
    def error_message
      # TODO: Add your error message here in case of failure in authentication
      #
      # Example:
      # 'CustomAuth: password is undefined.'
    end

    # Initialization constructor.
    def initialize(password, config)
      auth_params = {}

      # TODO: Add your custom authentication here
      # auth_params['Password'] = password

      super auth_params
      @_password = password
      @_config = config
    end

    # Validate arguments for authentication.
    # @return [Boolean] true if the auth parameters are present.
    def valid
      # TODO: Add your validation checks here
      #
      # Example:
      # return false unless @_password.nil?
      true
    end
  end
end
