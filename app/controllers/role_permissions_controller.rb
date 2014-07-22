class RolePermissionsController < ApplicationController
    layout nil
    # GET /role_permissions
    # GET /role_permissions.json

    def index
        index_helper
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @role_permissions }
        end
    end

    # GET /role_permissions/1
    # GET /role_permissions/1.json


    def show
        @role_permission = RolePermission.find(params[:id])
        #authorize! :show, @role_permission
        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @role_permission }
        end
    end

    # GET /role_permissions/new
    # GET /role_permissions/new.json


    def new    prepare
        @role_permission = RolePermission.new
        @role_permission.role_id = params[:role_id]
        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @role_permission }
        end
    end

    # GET /role_permissions/1/edit

    def edit
        prepare
        @role_permission = RolePermission.find(params[:id])
    end

    # POST /role_permissions
    # POST /role_permissions.json

    def create
        @role_permission = RolePermission.new(params[:role_permission])
        respond_to do |format|
            if @role_permission.save
                format.html {           index_helper          render :action => 'index'        }
                format.json { render json: @role_permission, status: :created, location: @role_permission }
            else
                format.html { render action: "new" }
                format.json { render json: @role_permission.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /role_permissions/1
    # PUT /role_permissions/1.json


    def update
        @role_permission = RolePermission.find(params[:id])
        respond_to do |format|
            if @role_permission.update_attributes(params[:role_permission])
                format.html {          index_helper          render :action => 'index'        }
                format.json { head :ok }
            else

                format.html { render action: "edit" }
                format.json { render json: @role_permission.errors, status: :unprocessable_entity }
            end
        end
    end

    #DELETE /role_permissions/1
    # DELETE /role_permissions/1.json

    def destroy
        @role_permission = RolePermission.find(params[:id])
        @role_permission.destroy
        respond_to do |format|
            format.html {        index_helper        render :action => 'index'      }
            format.json { head :ok }
        end
    end

    private :prepareend

end
