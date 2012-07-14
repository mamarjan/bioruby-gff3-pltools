module Bio
  module PL
    module GFF3
      # Runs the gff3-validate utility with the specified filename
      # as argument. Returns error messages if the utility found
      # issues in the file.
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

