class RolePermissionsController < ApplicationController
  # GET /role_permissions
  # GET /role_permissions.json
  def index
    @role_permissions = RolePermission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @role_permissions }
    end
  end

  # GET /role_permissions/1
  # GET /role_permissions/1.json
  def show
    @role_permission = RolePermission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @role_permission }
    end
  end

  # GET /role_permissions/new
  # GET /role_permissions/new.json
  def new
    @role_permission = RolePermission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @role_permission }
    end
  end

  # GET /role_permissions/1/edit
  def edit
    @role_permission = RolePermission.find(params[:id])
  end

  # POST /role_permissions
  # POST /role_permissions.json
  def create
    @role_permission = RolePermission.new(params[:role_permission])

    respond_to do |format|
      if @role_permission.save
        format.html { redirect_to @role_permission, notice: 'Role permission was successfully created.' }
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
        format.html { redirect_to @role_permission, notice: 'Role permission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @role_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_permissions/1
  # DELETE /role_permissions/1.json
  def destroy
    @role_permission = RolePermission.find(params[:id])
    @role_permission.destroy

    respond_to do |format|
      format.html { redirect_to role_permissions_url }
      format.json { head :no_content }
    end
  end
end
