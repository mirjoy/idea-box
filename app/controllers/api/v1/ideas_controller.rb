class Api::V1::IdeasController < ApplicationController
	respond_to :json

	def index
		respond_with Idea.all
	end

	def create
		respond_with :api, :v1, Idea.create(item_params)
	end

	def update
		respond_with Item.update(params[:id], item_params)
	end

	def destroy
		respond_with Item.destroy(params[:id])
	end

	private

	def item_params
		params.require(:item).permit(:title, :body)
	end
end
