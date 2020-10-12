class Project

  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def project_backers
    ProjectBacker.all.select { |project| project.project == self }
  end

  def backers
    project_backers.map { |project| project.backer }
  end

end