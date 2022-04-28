class ApplicationController < ActionController::Base

    private
    def after_sign_up_path_for(resource)
        if resource_or_scope == :shop
            shop_index_index_path
        elsif resource_or_scope == :customer
            customer_index_index_path
        else
            root_path
        end
    end

    def after_sign_in_path_for(resource)
        if resource_or_scope == :shop
            shop_index_index_path
        elsif resource_or_scope == :customer
            customer_index_index_path
        else
            root_path
        end
    end

    def after_sign_out_path_for(resource)
        root_path
    end

end
