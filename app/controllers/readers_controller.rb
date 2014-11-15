class ReadersController < ApplicationController
	def index
		@readers = Reader.all
	end

	def show
		@reader = Reader.find(params[:id])
	end

	def new
		@reader = Reader.new
	end

	def create
		@reader = Reader.new(reader_params)
		if @reader.save
			redirect_to readers_path, :notice => "New reader has been created.", :color => "valid"
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
                                       :mid_date, :mid_location, :mid_initial, :end_date, :end_location, :end_initial)
	end
end
