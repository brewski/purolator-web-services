require "bundler/gem_tasks"

namespace :soap do
  task :generate_definitions do
    require 'wsdl/soap/wsdl2ruby'
    require 'fileutils'

    module_path = File.join(%w(lib purolator_web_services soap))

    Dir.glob(File.expand_path("../wsdl/*.wsdl", __FILE__)).each do |wsdl_file|
      worker = WSDL::SOAP::WSDL2Ruby.new
      worker.basedir = FileUtils.mkdir_p(File.join(module_path)).first
      worker.location = File.new(wsdl_file).path
      worker.logger.level = Logger::WARN
      worker.opt.update(
          "module_path"      => "PurolatorWebServices::Soap",
          "mapping_registry" => nil,
          "driver"           => nil,
          "classdef"         => nil
      )
      worker.run
    end
  end
end

task :test do
  require 'purolator_web_services/test'
end