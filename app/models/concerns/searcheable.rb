module Searcheable
  extend ActiveSupport::Concern

  module ClassMethods
    def search(searcheable_params)
      search_results = self.where(nil)
      searcheable_params.each do |key, fieldvalue|
        search_results = search_results.public_send("search_by_#{key}", fieldvalue) if fieldvalue.present?
      end
      search_results
    end
  end
end