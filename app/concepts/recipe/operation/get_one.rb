require 'contentful'
module Recipe
  module Operation
    class GetOne < Trailblazer::Operation
      step :set_client
      step :get_recipe

      def set_client(options, **)
        contentful_config = Rails.application.credentials.contentful
        options[:client] = Contentful::Client.new(
          space: contentful_config[:space_id],
          access_token: contentful_config[:access_token],
          environment: contentful_config[:environment_id],
          dynamic_entries: :auto,
        )
      end

      def get_recipe(options, id:, **)
        options[:response] = options[:client].entry(id)
      end
    end
  end
end
