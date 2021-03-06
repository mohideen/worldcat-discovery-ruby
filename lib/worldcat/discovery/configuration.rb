# Copyright 2014 OCLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "singleton"

module WorldCat
  module Discovery
    
    # == Configuring for WorldCat::Discovery
    #
    # A singleton used to store the OCLC::Auth::WSKey (API key).
    
    class Configuration
      
      include Singleton
      attr_accessor :api_key, :access_token, :authenticating_institution_id, 
          :context_institution_id
      
    end
  end
end