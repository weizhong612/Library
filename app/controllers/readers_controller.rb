class ReadersController < ApplicationController
	def index
		if params[:search]
			@readers = Reader.search(params[:search]).order("created_at DESC")			
		else 
			if params[:program]
			@readers = Reader.all.select{|reader| reader.program==params[:program]}
			else
			@readers = Reader.all.order('created_at DESC')
			end
		end
	end

	def show
		@reader = Reader.find(params[:id])
	end

	def new
		@reader = Reader.new
	end
	
	def report
		@readers = Reader.all	
	end

	def create
		@reader = Reader.new(reader_params)
		if @reader.save
			redirect_to readers_path, :notice => "New reader has been created."
		else
			render "new"
		end
	end

	def edit
		@reader = Reader.find(params[:id])
	end

	def update
		@reader = Reader.find(params[:id])
		if @reader.update_attributes(reader_params)
			redirect_to readers_path, :notice => "Reader status has been updated."
		else
			render "edit"
		end
	end

	def destroy
		@reader = Reader.find(params[:id])
		@reader.destroy
		redirect_to readers_path, :notice => "Reader has been deleted."
	end

	private

	def reader_params
        params.require(:reader).permit(:first_name, :last_name, :date_of_birth, :program, :reg_location, :reg_date,
                                       :mid_date, :halfway_check, :finish_check, :mid_location, :mid_initial, :end_date, :end_location, :end_initial, :note)
	end
end
