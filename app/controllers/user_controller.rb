class UserController < ApplicationController


    get "/users" do 
        User.all.to_json(

            methods: :cute_critters

        )
        # { we_in: "👀" }.to_json
    end

    
    # random
    get "/users/:id" do
        puts "In: get '/users/:id' "

            u = User.find( params[:id] )
            # u = "Woobly"

         # binding.pry

            user_for_front_end = u.to_json

         # binding.pry

        user_for_front_end

    end
    #X# Pry.start


    delete "/users/:id" do
        
        user_to_delete = User.find( params[:id] )
        user_to_delete.destroy

        binding.pry

        user_deleted_return_to_front_end = user_to_delete.to_json
        
    end








    # post

    # patch




####  END OF CONTROLLER
end










########################################
########################################
########################################
########################################




# get "/users/:id" do 

#     u = User.find(params[:id])
#     u_in_json = User.find(params[:id]).to_json

#     binding.pry
#     # Pry.start
#     ##  Uses the  (irb)  style Pry
#     ####  irb  =  interactive ruby

#     u_in_json

# end


#  add sparkly - instance method
##  Interact with a Pet Name




########################################
########################################
########################################
########################################