class DemoController < ApplicationController
  
  layout false

  def index
  	#render(:template => 'demo/hello')
  	#render('demo/hello')
  	#render('hello')
  end

  def hello
  	#render('index')
  	@array =[1, 2, 3, 4, 5]
  	@id = params['id']
  	#@id = params[:id]
  	@page = params[:page]
  	#@page = params['page']
  end	

  def other_hello
  	redirect(:controller => 'demo', :action => 'index')
  end

  def lynda
  	redirect_to("http://lynda.com")
  end
end
