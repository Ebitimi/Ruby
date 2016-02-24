
require 'pp'
require_relative "Token.rb"
require_relative "symbol.rb"
class Tokenizer
  tk = Array.new


  def initialize(file)
    file = File.open("test.txt", "r")
    content = file.read.split("")
    s = String.new
    for i in 0 ..content.size
      if (content[i] =~ /[[:alnum:]]/)  || (content[i] == "_")
        s << content[i] #token[i] = new Token#make token class
      elsif !((content[i] =~ /[[:alnum:]]/)  || (content[i] == "_"))
        puts s
        #tk is an array for tokens
        if(s == "while" || "do" || "if" || "else" || "elsif")
          #:KEYWORD == s
          tk.push(new Token(s, KEYWORD))
          puts s
          #puts "success 1"
          s.clear
        else #(s != :KEYWORD)
          tk.push(new Token(s, IDENTIFIER))
          s.clear
        end
      elsif (content[i] =~ /[[:digit:]]/)
        s << content[i]
        puts s
        #puts "success digit"
        tk.push(new Token(s, INTEGER))
        s.clear

        # elsif !((content[i] =~ /[[:digit:]]/)) && s == "0" || s == "1"
        #   puts s
        #   puts "success 6"
        #   s.clear
      elsif(content[i] == ":") || (content[i] == "=") ||(content[i] == ";") || (content[i] == "+")  || (content[i] == "-") ||(content[i] == "*")  #content[i] =~ /[[:punct:]]/)
        s << content[i]
      elsif !((content[i] == ":") || (content[i] == "=")) && s == ":="
        puts s
        # puts "success 2"
        tk.push(new Token(s, ASSIGNMENT))
        s.clear
      elsif (s == ";")
        puts s
        #puts "success 3"
        tk.push(new Token(s, EOF))
        s.clear
      elsif (s == "+")
        puts s
        #puts "success 3"
        tk.push(new Token(s, ADDITION))
        s.clear

      elsif (s == "-")
        puts s
        #puts "success 3"
        tk.push(new Token(s, SUBRACTION))
        s.clear

      elsif (s == "*")
        puts s
        #puts "success 3"
        tk.push(new Token(s, MULTIPLICATION))
        s.clear

      else
        puts s
        puts "here3"
      end

    end
  end
