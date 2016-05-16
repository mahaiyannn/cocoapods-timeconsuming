require "cocoapods-timeconsuming/version"

if Pod::VERSION=='1.0.0'
  module Pod
    class Installer
      def install!
        start_time = Time.new
        prepare
        cost_time = Time.new.to_i-start_time.to_i
        p 'prepare cost: '+cost_time.to_s
        end_time = Time.new

        resolve_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'resolve_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        download_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'download_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        verify_no_duplicate_framework_names
        cost_time = Time.new.to_i-end_time.to_i
        p 'verify_no_duplicate_framework_names cost: '+cost_time.to_s
        end_time = Time.new

        verify_no_static_framework_transitive_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'verify_no_static_framework_transitive_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        verify_framework_usage
        cost_time = Time.new.to_i-end_time.to_i
        p 'verify_framework_usage cost: '+cost_time.to_s
        end_time = Time.new

        generate_pods_project
        cost_time = Time.new.to_i-end_time.to_i
        p 'generate_pods_project cost: '+cost_time.to_s
        end_time = Time.new

        integrate_user_project if installation_options.integrate_targets?
        cost_time = Time.new.to_i-end_time.to_i
        p 'integrate_user_project cost: '+cost_time.to_s
        end_time = Time.new

        perform_post_install_actions
        cost_time = Time.new.to_i-end_time.to_i
        p 'perform_post_install_actions cost: '+cost_time.to_s
        p 'total cost: '+(Time.new.to_i-start_time.to_i).to_s
      end
    end
  end
elsif Pod::VERSION=='0.39.0'
  module Pod
    class Installer
      def install!
        start_time = Time.new
        prepare
        cost_time = Time.new.to_i-start_time.to_i
        p 'prepare cost: '+cost_time.to_s
        end_time = Time.new

        resolve_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'resolve_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        download_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'download_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        determine_dependency_product_types
        cost_time = Time.new.to_i-end_time.to_i
        p 'determine_dependency_product_types cost: '+cost_time.to_s
        end_time = Time.new

        verify_no_duplicate_framework_names
        cost_time = Time.new.to_i-end_time.to_i
        p 'verify_no_duplicate_framework_names cost: '+cost_time.to_s
        end_time = Time.new

        verify_no_static_framework_transitive_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'verify_no_static_framework_transitive_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        verify_framework_usage
        cost_time = Time.new.to_i-end_time.to_i
        p 'verify_framework_usage cost: '+cost_time.to_s

        generate_pods_project
        cost_time = Time.new.to_i-end_time.to_i
        p 'generate_pods_project cost: '+cost_time.to_s


        integrate_user_project if config.integrate_targets?
        cost_time = Time.new.to_i-end_time.to_i
        p 'integrate_targets? cost: '+cost_time.to_s

        perform_post_install_actions
        cost_time = Time.new.to_i-end_time.to_i
        p 'perform_post_install_actions cost: '+cost_time.to_s

        p 'total cost: '+(Time.new.to_i-start_time.to_i).to_s

      end
    end
  end
elsif Pod::VERSION=='0.35.0'
  module Pod
    class Installer
      def install!
        start_time = Time.new
        prepare
        cost_time = Time.new.to_i-start_time.to_i
        p 'prepare cost: '+cost_time.to_s
        end_time = Time.new

        resolve_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'resolve_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        download_dependencies
        cost_time = Time.new.to_i-end_time.to_i
        p 'download_dependencies cost: '+cost_time.to_s
        end_time = Time.new

        generate_pods_project
        cost_time = Time.new.to_i-end_time.to_i
        p 'generate_pods_project cost: '+cost_time.to_s
        end_time = Time.new

        integrate_user_project if config.integrate_targets?
        cost_time = Time.new.to_i-end_time.to_i
        p 'integrate_user_project cost: '+cost_time.to_s
        end_time = Time.new

        perform_post_install_actions
        cost_time = Time.new.to_i-end_time.to_i
        p 'perform_post_install_actions cost: '+cost_time.to_s
        p 'total cost: '+(Time.new.to_i-start_time.to_i).to_s
      end
    end
  end


end

