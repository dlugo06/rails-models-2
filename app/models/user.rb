class User < ActiveRecord::Base
  belongs_to :code_school
  has_one :profile #with has_one we do not get an empty association collection proxy like we do when has_many, we get nil.
  has_many :projects

  scope :active, -> { where(active: true) } # '->' can be replaced by 'lambda'. This is called a closure.
  scope :cohort, ->(number) { where(cohort: number) }
  scope :active_cohort, ->(number) { active.cohort(number) }

  #Everything here can be changed by scopes! See above!
  # def self.active
  #   where(active:true)
  # end
  #
  # def self.cohort(number)
  #   where(cohort: number)
  # end

  # def self.current_cohort
  #   current = Cohort.all.map(&:number).sort
  #   #This is an alternative.
  #   current = Cohort.pluck(:number)
  #   cohort(current)
  # end

end
