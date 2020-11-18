# frozen_string_literal: true

require 'test_helper'

module Jekyll
  module KargWare
    class PlugInTemplate < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil Jekyll::KargWare::PlugInTemplate::VERSION
      end

      def test_it_does_something_useful
        assert true
      end
    end
  end
end
