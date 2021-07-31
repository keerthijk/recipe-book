require 'contentful'
module Recipe
  module Operation
    class GetAll < Trailblazer::Operation
      step :set_client
      step :get_recipes

      def set_client(options, **)
        contentful_config = Rails.application.credentials.contentful
        options[:client] = Contentful::Client.new(
          space: contentful_config[:space_id],
          access_token: contentful_config[:access_token],
          environment: contentful_config[:environment_id],
          dynamic_entries: :auto,
        )
      end

      def get_recipes(options, **)
        options[:collection] = options[:client].entries(content_type: 'recipe')
      end
    end
  end
end
