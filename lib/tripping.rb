
class Trip

  @@trips = []
  attr_reader(:start_date, :availability_array, :minstay_array, :price_array, :inputted_date)

  define_method(:initialize) do |attributes|
      @start_date = attributes[:start_date]
      @availability_array = attributes[:availability_array]
      @minstay_array = attributes[:minstay_array]
      @price_array = attributes[:price_array]
      @inputted_date = attributes[:inputted_date]
    end
  input_hash = {
    start_date: "2015-01-01",
    availability: "NNNNYYNNNNNNNNNNYYYYYNNNNNNNNYYYNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNYYYYYYYYYNNNNYYYYYYYYNNNNNNNNNNYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY",
    minstay:
  "6,5,3,6,6,6,4,6,3,3,6,5,3,3,5,6,6,4,5,2,2,6,3,5,4,6,2,6,6,5,2,4,2,2,4,3,2,5,3,4,2,2,5,4,2,6,3,3,3,3,5,6,5,3,6,4,2,3,2,3,2,4,2,2,6,3,6,4,3,5,4,3,3,2,5,3,4,3,4,6,6,4,4,5,2,3,6,3,5,2,2,4,6,5,5,2,6,6,3,6,2,3,3,6,3,2,3,4,4,4,5,2,2,5,2,3,3,6,5,3,3,3,5,2,4,2,6,5,4,4,3,4,3,3,6,5,5,4,3,3,2,4,6,3,3,6,6,4,2,2,3,4,2,6,5,2,6,3,2,4,3,4,5,6,5,3,6,5,6,2,4,3,4,2,3,5,6,3,2,2,2,6,6,2,5,2,3,2,4,4,4,6,6,4,3,2,4,5,5,2,3,2,4,6,6,5,6,2,6,3,2,6,2,6,2,5,5,5,5,4,2,6,3,2,2,2,6,6,5,5,4,4,5,4,2,2,5,5,5,2,6,4,4,4,3,2,6,3,3,2,4,2,6,6,3,6,4,5,4,4,5,6,6,6,6,3,3,5,5,6,3,5,5,6,6,3,2,4,2,3,5,3,4,3,3,3,3,4,5,2,6,5,6,5,5,4,2,3,3,2,4,6,3,2,3,2,3,3,4,5,3,3,6,5,2,6,4,5,5,6,2,4,6,5,2,5,3,4,6,3,3,3,4,5,4,4,4,5,4,3,6,2,2,2,6,4,2,2,6,4,5,3,3,4,2,5,6,5,6,5,3,5,2,2,5",
    price:
  "248,109,138,227,104,207,163,119,249,261,162,286,235,205,210,215,259,227,203,183,181,153,140,258,103,198,253,286,254,133,202,142,163,261,205,133,113,152,130,193,153,140,174,282,128,268,114,199,168,254,296,267,224,249,200,207,160,124,108,165,259,293,143,282,267,129,114,268,249,186,255,124,161,247,297,100,113,170,201,239,283,180,142,220,105,294,226,228,101,108,104,187,238,251,106,259,262,120,174,141,231,207,270,193,292,121,250,166,171,287,220,142,176,195,180,215,155,243,116,249,265,164,172,213,151,132,215,235,116,181,260,199,203,189,251,124,128,152,128,188,140,273,176,208,143,143,108,265,269,273,265,182,275,237,188,183,108,234,137,270,106,273,122,105,171,236,213,278,281,102,117,163,277,104,294,252,210,124,203,253,100,220,205,226,100,236,101,150,148,104,205,110,249,175,131,185,210,262,290,271,214,247,158,210,220,156,137,284,245,212,137,237,235,112,158,278,127,132,272,104,103,274,199,260,154,209,186,260,251,247,180,106,107,102,164,290,166,243,234,244,108,182,249,118,99,131,191,231,247,152,120,146,154,223,209,111,116,194,101,212,163,110,257,196,230,250,273,152,116,185,158,276,293,285,219,101,119,159,170,168,147,104,211,137,235,136,136,152,281,176,134,144,130,298,269,272,101,168,141,198,184,154,186,109,230,185,195,282,265,210,290,265,194,120,122,240,256,280,289,164,109,136,213,267,161,265,162,162,182,196,251,204,191,280,199,243,214,255,180,183,200,114,250,159,267,217,213,263,151,115,223,221,244,261,190,166,112,266,291,283,249,135,102,151,113"
  }

  def tripping_input(input_hash)
    @start_date = start_date
    @inputted_date = inputted_date
    @availability_array = availability.split(" ")
    @minstay_array = minstay.split(" ")
    @price_array = price.split(" ")
  end

  define_singleton_method(:clear) do
    @@trips = []
  end
  # def available_day
  #   if @availability_array = ("Y")
  #     @availability_array = available_day
  #   else
  #     @availability_array = @availability_array
  #   end
  # end
  def generate_date_objects
    @availability.length.times do |date|
      index = date - 1
      Date.new(availabile: (@available_array[index] == "Y"), minstay: minstay_array[index], date: @start_date + index.day, price: price_array[index])
    end
  end
  def cost_of_booking(property, start_date, end_date)
   @cost =  @date + @minstay_array x @price_array
 end
end
