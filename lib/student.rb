class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.send("name=", student_hash[:name])
    self.send("location=",student_hash[:location])
    @@all << self
  end

  def self.create_from_collection(students_array)
     students_array.each {|student_hash| self.new(student_hash)}
  end

  def add_student_attributes(attributes_hash)
    self.send("bio=", attributes_hash[:bio])
    self.send("blog=", attributes_hash[:blog])
    self.send("linkedin=", attributes_hash[:linkedin])
    self.send("twitter=", attributes_hash[:twitter])
    self.send("github=", attributes_hash[:github])
    self.send("profile_quote=", attributes_hash[:profile_quote])
  end

  def self.all
    @@all
  end
end

