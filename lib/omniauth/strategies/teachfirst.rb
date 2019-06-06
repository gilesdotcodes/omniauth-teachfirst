require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class TeachFirst < OmniAuth::Strategies::OAuth2
      option :name, 'teachfirst'

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        site: 'https://dev.connect.teachfirst.org.uk',
        authorize_url: '/oauth/authorize',
        token_url: '/oauth/token' # do I need this?
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      # uid{ raw_info['id'] }

      info do
        {
          email: raw_info['mail']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/WhoAmI').parsed.first
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'teachfirst', 'TeachFirst'
