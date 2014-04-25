require "carrierwave/unique_filename/version"
module CarrierWave
  module UniqueFilename
    def filename
      if original_filename.present?
         @name ||= unique_filename
        "#{@name}.#{file.extension}"
      end
    end

    private
    def unique_filename
      if version_name
        original_name = current_path.gsub("#{version_name}_","")
      else
        original_name = current_path
      end
      Digest::MD5.hexdigest(original_name)
    end
  end
end