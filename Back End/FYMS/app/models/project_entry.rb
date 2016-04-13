class ProjectEntry < ActiveRecord::Base
    belongs_to :admin
    validates :Project_ID, :project_name, :student_no, :firstReader, :secondReader, :presence => true
    validates :Project_ID, :student_no, :numericality => {:only_integer => true}

    end
