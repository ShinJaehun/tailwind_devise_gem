#class TailwindDevise
  #def self.say_hi
    #puts "hi"
  #end
#end
require 'rails/generators/base'

#class TailwindDeviseGenerator < Rails::Generators::Base
module TailwindDevise
  class ViewsGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)
    desc "This generator adds the devise views styled with Tailwind CSS"

    #def views
      #template 'render-build.sh', 'bin/render-build.sh'
      #chmod 'bin/render-build.sh', 0755
    #end

    def copy_tailwind_devise_folders_into_app
      #devise_folder = File.dirname("#{Rails.root}/app/views/devise")
      devise_folder_path = "#{Rails.root}/app/views/devise"
      #FileUtils.mkdir_p(devise_folder) unless File.directory?(devise_folder)
      FileUtils.rm_rf(devise_folder_path)
      FileUtils.mkdir_p(devise_folder_path)
      directory 'devise', devise_folder_path
    end
  end
end
