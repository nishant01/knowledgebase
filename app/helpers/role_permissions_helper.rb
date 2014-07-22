module RolePermissionsHelper

    def index_helper
        if params[:role_id].nil?
            if params[:role_permission][:role_id].nil?
                log_error " role_id parameter is invalid!"
            else
                @the_role_id = params[:role_permission][:role_id]
            end
        else
            @the_role_id = params[:role_id]
        end
        begin
            @role_permissions = RolePermission.find.where("role_id=?",@the_role_id)
        rescue ActiveRecord::RecordNotFound
            log_error "record not found role_id=" + params[:role_id]
        end
    end

    def prepare
        Rails.application.eager_load!
        @roles = Role.all
        @regulators = get_models
        @conducts = get_actions
    end

    def get_models
        regulators = Array.new
        ActiveRecord::Base.descendants.each{ |model|
            regulators[regulators.length] = model.name
        }
        return regulators
    end

    def get_actions
        conducts = Array.new
        ApplicationController.descendants.each { |regulator|
            the_actions = regulator.action_methods
            the_actions.each {|the_action|
                conducts[conducts.length] = the_action
            }
        }
        return conducts  endend
    end
end
