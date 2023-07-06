# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
require 'json'
require 'apimatic_core_interfaces'
require 'apimatic_core'
require 'apimatic_faraday_client_adapter'
# rubocop:disable Style/MixinUsage
include CoreLibrary
# rubocop:enable Style/MixinUsage

require_relative 'swagger_petstore/api_helper'
require_relative 'swagger_petstore/client'

# Utilities
require_relative 'swagger_petstore/utilities/file_wrapper'
require_relative 'swagger_petstore/utilities/date_time_helper'

# Http
require_relative 'swagger_petstore/http/http_call_back'
require_relative 'swagger_petstore/http/http_method_enum'
require_relative 'swagger_petstore/http/http_request'
require_relative 'swagger_petstore/http/http_response'
require_relative 'swagger_petstore/http/auth/custom_auth'

# Models
require_relative 'swagger_petstore/models/base_model'
require_relative 'swagger_petstore/models/api_response'
require_relative 'swagger_petstore/models/category'
require_relative 'swagger_petstore/models/pet'
require_relative 'swagger_petstore/models/tag'
require_relative 'swagger_petstore/models/order'
require_relative 'swagger_petstore/models/user'
require_relative 'swagger_petstore/models/status_enum'
require_relative 'swagger_petstore/models/status1_enum'
require_relative 'swagger_petstore/models/status2_enum'

# Exceptions
require_relative 'swagger_petstore/exceptions/api_exception'

require_relative 'swagger_petstore/configuration'

# Controllers
require_relative 'swagger_petstore/controllers/base_controller'
require_relative 'swagger_petstore/controllers/pet_controller'
require_relative 'swagger_petstore/controllers/store_controller'
require_relative 'swagger_petstore/controllers/user_controller'