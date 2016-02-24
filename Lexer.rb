class Lexer
	def initialize(file)
		@symbol = symbol
		@type = type
		@file = file
	end


def fileReader(file)
	file = File.open("test", "r")
	cont = file.read.split//

	for i in 0 ..cont.size
		if (cont[i] =~ /[[:alnum:]]/)  || (cont[i] == "_")
			s << cont[i]
			 #token[i] = new Token#make token class
		end

	elsif (cont[i] == ":") || (cont[i] == ":=" || cont[i] =~ /[[:punct:]]/)

end


	def breakLine(line)


		word1 = line[/^([a-zA-Z][a-zA-Z0-9]*)/,1]
		if (word1 == "while" || "do" || "if" || "else" || "elsif")
			:KEYWORD= word1
		end
	elsif (!word1 == :KEYWORD)
		:IDENTIFIER = word
	end
	word2 = line.split (/[[:punct:]]/)
	if()





		if ()
		elsif(line.split ("/^(-)?[0-9]*)/))

		end"





end
