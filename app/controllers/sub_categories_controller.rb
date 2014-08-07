class SubCategoriesController < ApplicationController
    layout "admin"
    before_filter :authenticate_user!
    def index
        @sub_categories = SubCategory.all

        respond_to do |format|
            format.html
            format.json {render json: @sub_categories}
        end
    end

    def new
        @sub_category = SubCategory.new
        respond_to do |format|
            format.html
            format.json {render json: @sub_category}
        end
    end

    def create
        @sub_category = SubCategory.new(params[:sub_category])
        respond_to do |format|
            if @sub_category.save
                format.html {redirect_to @sub_category, notice: 'Category was successfully created.'}
                format.json {render @sub_category, status: :created, location: @sub_category}
            else
                format.html { render action: "new" }
                format.json { render json: @sub_category.errors, status: :unprocessable_entity }
            end
        end
    end

    def show
        @sub_category = SubCategory.find(params[:id])
        respond_to do |format|
            format.html
            format.json {render json: @sub_category}
        end
    end

    def edit
        @sub_category = SubCategory.find(params[:id])
    end

    def update
        @sub_category = SubCategory.find(params[:id])

        respond_to do |format|
            if @sub_category.update_attributes(params[:sub_category])
                format.html { redirect_to @sub_category, notice: 'Category was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: "edit" }
                format.json { render json: @sub_category.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @sub_category = SubCategory.find(params[:id])
        @sub_category.destroy

        respond_to do |format|
            format.html { redirect_to sub_categories_url }
            format.json { head :no_content }
        end
    end


end
