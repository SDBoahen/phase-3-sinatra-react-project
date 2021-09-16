class UserController < ApplicationController


    get "/cute_critters" do 
        CuteCritter.all.to_json
    end


    post "/cute_critters" do 

        critter_to_create_hash = params
        # Remember Folks! This is LEGIT - What You Wrote in the Form
        ## The ParamsHash => params

            binding.pry

            if(critter_to_create_hash[:user_id].class == String)

                string_to_find_user_by = critter_to_create_hash[:user_id]
                user_found = User.find_by(name: string_to_find_user_by)

                critter_to_create_hash[:user_id] = user_found.id

            elsif(critter_to_create_hash[:user_id].class == Integer)

                integer_to_find_user_by = critter_to_create_hash[:user_id]
                user_found = User.find_by(id: integer_to_find_user_by)

                critter_to_create_hash[:user_id] = user_found.id

                puts "This Should Be Fine Sam.... Relax 😐"

            end
        

        critter_that_was_created = CuteCritter.create( critter_to_create_hash )


        # With params
            # critter_that_was_created = CuteCritter.create( params )

        # With Key:Value Pair Written Out
            # CuteCritter.create(
            #     {
            #         name: params[:name], 
            #         image: params[:image], 
            #         user_id: params[:user_id]
            #     }
            # )
        

        critter_that_was_created.to_json

    end




#### END OF FILE
end