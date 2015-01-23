require "cocoapods-timeconsuming/version"

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
