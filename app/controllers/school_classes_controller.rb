class SchoolClassesController < ApplicationController

    def new 
        @class = SchoolClass.new
    end 

    def create
        @class = SchoolClass.new(school_class_params(:school_class_title, :room_number))
        @class.save
        redirect_to school_class_path(@class)
    end 

    def show
        
        @class = SchoolClass.find(params[:id])
    end 

    def edit
        @class = SchoolClass.find(params[:id])
    end 

    def updated
      @class = SchoolClass.find(params[:id])
      @class.updated(school_class_params(:school_class_title, :room_numer))
    end 


    def school_class_params(*args)
        #binding.pry
        params.require(:school_class).permit(*args)
    end 

end 