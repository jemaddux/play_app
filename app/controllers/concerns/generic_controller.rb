module GenericController
  # GET /<model>
  # GET /<model>.json
  def index
    # @<model> = <Model>.all
    instance_variable_set("@#{controller_name}", controller_name.singularize.capitalize.constantize.all)
  end

  # GET /<model>/1
  # GET /<model>/1.json
  def show
  end

  # GET /<model>/new
  def new
    # @article = <Model>.new
    instance_variable_set("@#{controller_name.singularize}", controller_name.singularize.capitalize.constantize.new)
  end
  
  # GET /<model>/1/edit
  def edit
  end

  # PATCH/PUT /<model>/1
  # PATCH/PUT /<model>/1.json
  def update
    instance_variable = instance_variable_get("@#{controller_name.singularize}")
    model_name = self.params["controller"].singularize.capitalize

    respond_to do |format|
      if instance_variable.update(controller_params)
        format.html { redirect_to instance_variable, notice: "#{model_name} was successfully updated." }
        format.json { render :show, status: :ok, location: instance_variable }
      else
        format.html { render :edit }
        format.json { render json: instance_variable.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def controller_params
    if self.params && self.params["controller"] 
      params.require(self.params["controller"].singularize.to_sym).permit(:title, :body)
    else
      {}
    end
  end
end
