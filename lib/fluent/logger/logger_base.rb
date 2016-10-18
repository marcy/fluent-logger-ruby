#
# Fluent
#
# Copyright (C) 2011 FURUHASHI Sadayuki
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

module Fluent
  module Logger
    class LoggerBase

      def post(tag, map)
        raise ArgumentError.new("Second argument must be a kind of Hash (#{tag}: #{map})") unless map.kind_of? Hash
        post_with_time(tag, map, Time.now)
      end

      #def post_with_time(tag, map)
      #end

      def close
      end

      def self.open(*args, &block)
        Fluent::Logger.open(self, *args, &block)
      end
    end
  end
end
