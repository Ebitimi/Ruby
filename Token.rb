
class Token

  def initialize(pattern, Symbol.kind)
    @pattern = pattern
    @kind = kind
  end


  public
  def get_pattern
    return @pattern
  end

  public
  def getTokenKind
    return @type
  end


  def getTokenText
    puts "Token text " #{@pattern}
  end


$end
