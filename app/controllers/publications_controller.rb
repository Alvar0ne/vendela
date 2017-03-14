class PublicationsController < ApplicationController
  before_action :authenticate_user!, except: [:show , :index]
  before_action :set_publication, only: [:show, :edit, :update, :destroy, :publish]
  before_action :authenticate_admin!, only: [:publish]

  # GET /publications
  # GET /publications.json
  def index


  @q = Publication.ransack(params[:q])
  @publications = @q.result.paginate(page: params[:page],per_page:10).most_recent.published
  #@q.result.includes(:articles).page(params[:page]).to_a.uniq

  
 # @publications = Publication.paginate(page: params[:page],per_page:10).most_recent.published
  end

    def indexadmin
    @publications = Publication.most_recent.in_draft

  end

  def publish
      @publication.publish!
      redirect_to @publication
   end



  # GET /publications/1
  # GET /publications/1.json
  def show
  end

  # GET /publications/new
  def new
    @publication = Publication.new

  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = current_user.publications.new(publication_params)

    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: 'Publication was successfully created.' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url, notice: 'Publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:titulo, :region, :comuna, :precio, :tipo, :superficie, :dormitorio, :baño, :estacionamiento, :descripcion, :image, :state)
    end
end
