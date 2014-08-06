require 'spec_helper'

RSpec.describe AreamsController, :type => :controller do
  render_views
  before(:each) do
    @aream = create :aream
  end

  describe '#index' do
    let(:request) { get :index }
    it 'ステータスコード200を返し、indexをrenderする' do
      request
      response.status.should == 200
      response.should render_template('index')
    end

    it '登録されたareamを返す' do
      request
      assigns(:aream).should eq(@areams)
    end
  end

  describe '#show' do
    let(:request) { get :show, id: @aream.id }
    it 'ステータスコード200を返し、showをrenderする' do
      request
      response.status.should == 200
      response.should render_template('show')
    end

    it '選択されたareamを返す' do
      request
      assigns(:aream).should eq(@aream)
    end
  end

  describe '#new' do
    let(:request) { get :new }
    it 'ステータスコード200を返しnewをrenderする' do
      request
      response.status.should == 200
      response.should render_template('new')
    end
  end

  describe '#create' do
    let(:request) { post :create, params }
    context '正しい値を入力した場合' do
      let(:params) { { aream: attributes_for(:aream) } }
      it 'ステータスコード200を返しAreamをrenderする' do
        request
        response.status.should == 200
        response.should render_template('show')
      end

      it '新しいレコードが生成される' do
        request
        assigns(:aream).errors.should be_empty
        assigns(:aream).should be_persisted
      end
    end


    context '異常な値を入力した場合' do
      let(:params) { { aream: attributes_for(:aream, area_a: '') } }
      it 'ステータスコード200を返しnewをrenderする' do
        request
        response.status.should == 200
        response.should render_template('new')
      end

      it 'バリデーションエラーとなる' do
        request
        assigns(:aream).errors.should_not be_empty
        assigns(:aream).should_not be_persisted
      end
    end
  end


  describe '#edit' do
    let(:request) { get :edit, params }
    let(:params)  { { id: @aream.id } }
 
    it 'ステータスコード200を返し、editをrenderする' do
      request
      response.status.should == 200
      response.should render_template('edit')
    end
 
    it '編集するAreamが選択したものと一致する' do
      request
      assigns(:aream).should == @aream
    end
  end


  describe '#update' do
    let(:request) { put :update, params}
    context '正しい値を入力した場合' do
      let(:params) { { id: @aream.id, aream: attributes_for(:aream) } }
      it 'ステータスコード302を返し、showをrenderする' do
        request
        response.status.should == 302
        response.should render_template('show')
      end
 
      it '編集するAreamが選択したものと一致する' do
        request
        assigns(:aream).should == @aream
      end
 
      it 'エラーが発生しない' do
        request
        assigns(:aream).errors.should be_empty
      end
    end
 
    context '異常な値を入力した場合' do
      let(:params) { { id: @aream.id, aream: attributes_for(:aream, entdate: '') } }
      it 'ステータスコード200を返し、editをrenderする' do
        request
        response.status.should == 200
        response.should render_template('edit')
      end
 
      it '編集するAreamが選択したものと一致する' do
        request
        assigns(:aream).should == @aream
      end


      it 'バリデーションエラーとなる' do
        request
        assigns(:aream).errors.should_not be_empty
      end
    end
  end


  describe '#destroy' do
    let(:request) { delete :destroy, params }
    let(:params)  { { id: @aream.id } }
 
    describe 'DELETE /Aream/:id' do
      it 'Areamのindexへリダイレクトする' do
        request
        response.should redirect_to(areams_path)
      end
 
      it '編集するAreamが選択したものと一致する' do
        request
        assigns(:aream).should eq(@aream)
      end
 
      it '削除されてAreamの数が1件減る' do
        expect { request }.to change(Aream, :count).by(-1)
      end
    end
  end
end
