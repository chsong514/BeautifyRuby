require 'htmlbeautifier'

def beautify(input, output)
  dest = ""
  beautifier = HtmlBeautifier::Beautifier.new(dest)
  begin
    beautifier.scan(input)
    dest << "\n"
  rescue
    dest = ""
  end
  output.write(dest)
end

beautify $stdin.read.force_encoding('utf-8'), $stdout
