class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"
  
  get "/" do
    'Home'
  end

  get "/workzones" do
    workzones = Workzone.all
    workzones.to_json
  end

  get "/employees" do
    employees = Employee.all
    employees.to_json
  end

  get "/workzones/:id/employees" do 
    employees = Workzone.find(params[:id]).employees
    employees.to_json
  end

  post "/employees" do
    new_employee = Employee.create(
      name: params[:name],
    )
    new_employee.to_json
  end

  delete "/employees/:id" do
    del_employee = Employee.find(params[:id])
    del_employee.destroy
    del_employee.to_json
  end

end
