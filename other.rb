class ArgumentTypeError < TypeError
  def initialize(msg="Data type must be in Array", exception_type = "type")
    @exception_type = exception_type
    super(msg)
  end
end