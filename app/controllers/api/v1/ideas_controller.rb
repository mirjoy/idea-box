class Api::V1::IdeasController < ApplicationController
	respond_to :json

	def index
		respond_with Idea.all
	end

	def create
		respond_with :api, :v1, Idea.create(title: params[:title], body: params[:body])
	end

	def update
		respond_with Idea.update(params[:id], item_params)
	end

	def destroy
		respond_with Idea.destroy(params[:id])
	end

	private

	def item_params
		params.require(:idea).permit(:title, :body)
	end
end
