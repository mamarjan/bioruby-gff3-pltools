module Bio
  module PL
    module GFF3
      def self.validate_file filename
        if !File.exists?(filename)
          raise Exception.new("No such file - #{filename}")
        end

        gff3_validate = IO.popen(["gff3-validate", "#{filename}", :err=>[:child, :out]])
        output = gff3_validate.read
        gff3_validate.close
        output
      end
    end
  end
end

