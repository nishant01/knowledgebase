module ApplicationHelper

    def log_seperator
        return "***************************************************"
    end

    def log_error(message)
        logger.error(log_seperator);
        logger.error(controller_name + '.' + action_name + ":  " + message)
    end
end
