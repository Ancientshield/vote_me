class CandidatesController < ApplicationController
    def index
        # render html: '<h1>this is controller</h1>'.html_safe
    end
    def new
        @candidate = Candidate.new
    end
        def create
        @candidate = Candidate.new(candidate_params)
        if @candidate.save
            flash[:notice] = '新增成功'
            redirect_to "/"
        else
            flash[:notice] = '新增失敗'
            render :new
        end
        # 中斷點
        # binding.pry
        # render html: 'abc'
    end
    private
    def candidate_params
        params.require(:candidate).permit(:name, :age, :party, :platform)
    end
end
