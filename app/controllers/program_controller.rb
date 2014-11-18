class ProgramController < ApplicationController
    def index
        
    end
	def report
	    @readers = Reader.all
	    @program = [{:name=>'Adult', :total=>0, :halfway=>0, :finished=>0}, {:name=>'Teen', :total=>0, :halfway=>0, :finished=>0}, 
	    {:name=>'Kid', :total=>0, :halfway=>0, :finished=>0}]
	    @program.each do |p|
	    	p[:total] = @readers.find_all{|r| r.program==p[:name]}.size
	    	p[:halfway] = @readers.find_all{|r| r.program==p[:name]&&r.mid_date}.size
	    	p[:finished] = @readers.find_all{|r| r.program==p[:name]&&r.end_date}.size
	    end
	   # @program[:Adult][:total] = @readers.find_all{|r| r.program=="Adult"}.size
	   # @program[:Adult][:halfway] = @readers.find_all{|r| r.program=="Adult" && r.mid_date}.size
	   # @program[:Adult][:finished] = @readers.find_all{|r| r.program=="Adult" && r.end_date}.size
	   ## @readers.each do |reader|
	   #     @program[reader.program][total]=@program[reader.program][total]+1
	   # end
	    return @program
	end
	
	def about
	end

	private

	def reader_params
        params.require(:reader).permit(:first_name, :last_name, :date_of_birth, :program, :reg_location, :reg_date,
                                       :mid_date, :mid_location, :mid_initial, :end_date, :end_location, :end_initial)
	end
end
