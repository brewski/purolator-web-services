module PurolatorWebServices
  module Test
    TEST_FILES = Dir.glob(File.expand_path("../../../test/*.rb", __FILE__))
    TEST_FILES.each(&method(:require))
  end
end