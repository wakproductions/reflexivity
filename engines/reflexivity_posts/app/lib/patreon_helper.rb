module PatreonHelper
  module_function

  def connect_to_patreon_link(link_text='', &block)
    if block_given?
      link_to("https://www.patreon.com/oauth2/authorize?response_type=code&client_id=" \
              "#{ENV.fetch('PATREON_CLIENT_ID')}&redirect_uri=#{PATREON_REDIRECT_URI}"
          # state: # make this a csrf token
      ) { yield }
    else
      link_to(
        link_text,
        'https://www.patreon.com/oauth2/authorize',
        html_options: {
          params: {
            response_type: 'code',
            client_id: ENV.fetch('PATREON_CLIENT_ID'),
            redirect_uri: PATREON_REDIRECT_URI,
            # state: # make this a csrf token
          }
        }
      )
    end
  end

end