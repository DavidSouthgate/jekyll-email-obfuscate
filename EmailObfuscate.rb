module Jekyll
  module EmailObfuscate
    module EmailObfuscateFilter
      def encode_email(input)
        return encode(input);
      end
      def encode_email_href(input)
        input.to_s.chars.inject(String.new) do |result, char|
          if char =~ /\p{Alnum}/
            char.bytes.inject(result) do |result, byte|
              result << '%%%02X' % byte
            end
          else
            result << char
          end
        end
      end
      private
      def encode(str)
        ret = "";
        str.each_byte do |i|
          if (i>=33 && i<=126)
            ret = ret + "&#" + i.to_s + ";";
          else
            ret = ret + i.chr;
          end
        end
        return ret;
      end
    end
  end
end
Liquid::Template.register_filter(Jekyll::EmailObfuscate::EmailObfuscateFilter)