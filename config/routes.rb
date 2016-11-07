Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:num", {:controller => "calculations", :action => "square"})
  get("/square_root/:num", {:controller => "calculations", :action => "square_root"})
  get("/random/:min/:max", {:controller => "calculations", :action => "random_num"})
  get("/payment/:int_rate/:duration/:amount", {:controller => "calculations", :action => "payment"})
end
