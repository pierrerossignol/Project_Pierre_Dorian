class PremiumsController < ApplicationController
    
    before_filter :authenticate_user!
    
    def new
    end
    
    def create
        token = params[:stripeToken]
        plan = Stripe::Plan.all.first
        
        unless current_user.premium_account
            customer = Stripe::Customer.create(
                card: token,
                email: current_user.email
            )
            
            current_user.premium_account = true
            current_user.stripeid = customer.id
            current_user.save
        else
            customer = Stripe::Customer.retrieve(current_user.stripeid)
        end
        
        plan = Stripe::Plan.all.first
        
        stripe_subscription = customer.subscriptions.create(plan: plan.id)
        
        
        redirect_to root_path
    end
    
end
