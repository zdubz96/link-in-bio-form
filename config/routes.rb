Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor", { :controller => "items", :action => "new" })
  post("/process_inputs",{:controller=>"items",:action=> "add_item"})
end
