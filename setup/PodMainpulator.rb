module Pod

  class PodMainpulator
    attr_reader :configurator, :pod_path, :string_replacements, :prefix

    def initialize(options)
      @pod_path = options.fetch(:pod_path)
      @configurator = options.fetch(:configurator)
      @prefix = options.fetch(:prefix)
    end

    def run
      @string_replacements = {
        "PROJECT_OWNER" => @configurator.user_name,
        "TODAYS_DATE" => @configurator.date,
        "TODAYS_YEAR" => @configurator.year,
        "PROJECT" => @configurator.pod_name,
        "CPD" => @prefix
      }
      replace_internal_project_settings
      rename_files
    end

    def rename_files
      # change app file prefixes
     Dir.glob(pod_path + "/**/**/**/**").each do |filename|
        before = Pathname.new(filename)
        primary_name = before.basename
        next unless File.exists? before

        after = primary_name + filename.gsub("CPD", prefix)
        File.rename before, after
      end
    end

    def replace_internal_project_settings
      Dir.glob(pod_path + "/**/**/**/**").each do |name|
        next if Dir.exists? name
        text = File.read(name)

        for find, replace in @string_replacements
            text = text.gsub(find, replace)
        end

        File.open(name, "w") { |file| file.puts text }
      end
    end

  end

end
