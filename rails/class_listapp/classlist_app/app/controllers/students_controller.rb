class StudentsController < ApplicationController
  def index
    @students=Student.all #this is loading up the collection of all the students
                          #from the Student database  model

  end
end
