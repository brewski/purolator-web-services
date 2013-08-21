module PurolatorWebServices
  class DefinitionsGenerator < ::Rails::Generators::Base
    PUROLATOR_INITIALIZER_FILE = File.join(Rails.root, 'config', 'initializers', 'purolator_web_services.rb')

    class_option :wsdl_dir,
        default: File.join(%w(lib purolator_web_services wsdl)),
        type:    :string,
        desc:    "directory where the Purolator wsld file is stored"


    class_option :skip_initializer,
        default: false,
        type:    :boolean,
        desc:    "install a rails initializer to load the wsdl definitions"

    desc "Generate the PurolatorWebServices class definitions and create an initializer to load them"

    def install
      wsdl_dir = options[:wsdl_dir]
      wsdl_files = Dir.glob(File.join(wsdl_dir, '*.wsdl'))
      target_lib_dir = File.join(Rails.root, 'lib')

      if (wsdl_files.empty?)
        say("Could not find any wsdl files in #{wsdl_dir}", :red)
      else
        PurolatorWebServices::Definitions.generate_definitions(target_lib_dir, *wsdl_files)
        say("Added #{File.join(target_lib_dir, PurolatorWebServices::Definitions::MODULE_PATH)}", :green)

        unless (options[:skip_initializer])
          create_file(PUROLATOR_INITIALIZER_FILE,
              "PurolatorWebServices::Definitions.load_definitions('lib')")
        end
      end
    end
  end
end