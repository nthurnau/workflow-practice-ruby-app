#Create a set that cpntains a set of objects, allows no repetition, and can
#do Intersection with other sets to find common items with the other. It
#can do Union with another set to come up wiht a new set with all of the members
#from both sets.

class MySet


  def initialize
    @store = []
  end

  def to_s #to string
    @store.to_s
  end

  def insert(something)
    #check if the thing is already in storage
      if @store.include? (something)
        #if it is, do nothing
        #otherwise, insert something in storage
      else
        @store << something
      end
  end
#here is a different way to do the same insert as above
  def insert(member)
    #check if the thing is already in storage
    @store << member unless @store.include? (member)
  end

  def members
    @store
  end

  def union(another_set)
    #return a new set with all the members from both sets but no repetitions
    #you won't have repetitions because there is an insert method run, and that
    #checks for repetition
    result = MySet.new #or self.class.new

      @store.each do |member|  #or self.members.each do |member|
        result.insert(member)
      end

      another_set.members.each do |member|
        result.insert(member) #members gives you back another_set's array data
      end

    return result
  end

  def intersection 
  end


end

# Create Birds
birds = MySet.new
birds.insert("gouldian finch")
birds.insert("blue jay")
birds.insert("sea gull")
birds.insert("big bird")

#Create Sea Birds
sea_birds = MySet.new
sea_birds.insert("pelican")
sea_birds.insert("sea gull")
sea_birds.insert("piping plover")
sea_birds.insert("minty manatee")

#Print Out Sets here::
all_birds = birds.union(sea_birds)
p "first set: " + birds.to_s
p "seond set: " + sea_birds.to_s
p "union set: " + all_birds.to_s
