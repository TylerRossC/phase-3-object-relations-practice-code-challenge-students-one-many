class Student < ActiveRecord::Base
  belongs_to :cohort
  
    def current_mod
        self.cohort.current_mod
    end
    
end