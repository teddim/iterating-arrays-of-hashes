class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Darnum"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [
      {name: "Fido",     size: :large,  owner: joe},
      {name: "Yapper",   size: :small,  owner: joe},
      {name: "Bruiser",  size: :large,  owner: joe},
      {name: "Tank",     size: :huge,   owner: sarah},
      {name: "Beast",    size: :large,  owner: sarah},
      {name: "Harleigh", size: :medium, owner: andrew},
      {name: "Trixie",   size: :small,  owner: andrew}
    ]
  end

  # only edit below this line
  def small_dogs
    small = []
    @dogs.each do |dog|
      if dog[:size] == :small
        small << dog
      end
    end
    return small
  end

  def huge_dog
    huge =[]
    @dogs.each do |dog|
      if dog[:size] == :huge
        huge << {name: dog[:name]}
      end
    end
    return huge
  end

  def large_dog_names
    names = []
    @dogs.each do |dog|
      if dog[:size] == :large
        names << dog[:name]
      end
    end
    return names
  end

  def joes_large_dogs
    joes_dogs = []
    @dogs.each do |dog|
      if dog[:size] == :large && dog[:owner][:name][:first] == "Joe"
        joes_dogs << dog[:name]
      end
    end
    return joes_dogs
  end

  def sizes
    sizes = []
    @dogs.each do |dog|
      if sizes.index(dog[:size]) == nil
        sizes << dog[:size]
      end
    end
    return sizes
  end

  def owners
    owners = []
    @dogs.each do |dog|
      full_name = "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
      if owners.index(full_name) == nil
        owners << full_name
      end
    end
    return owners
  end

  def average_owners
    owners = []
    @dogs.each do |dog|
      full_name = "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
      if owners.index(full_name) == nil && dog[:owner][:owner_quality] == AVERAGE
        owners << full_name
      end
    end
    owners
  end

  def owner_dogs(owner)
    owner_dogs = []
    @dogs.each do |dog|
      if dog[:owner][:name][:first] == owner
        owner_dogs << dog[:name]
      end
    end
    return owner_dogs
  end

  def to_s
    
  end
end
