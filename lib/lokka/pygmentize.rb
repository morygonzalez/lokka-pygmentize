module Lokka
  module Pygmentize
    def self.registered(app)
      app.post '/pygmentize' do
        snipet = Pygments.highlight(params['snippet'], :lexar => params['lexar'])
      end

      app.put '/admin/plugins/amazon_associate' do
        Option.associate_tag = params['associate_tag']
        Option.access_key_id = params['access_key_id']
        Option.secret_key = params['secret_key']
        flash[:notice] = 'Updated.'
        redirect '/admin/plugins/amazon_associate'
      end
    end
  end
end
