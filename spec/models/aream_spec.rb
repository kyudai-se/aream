require 'spec_helper'

describe Aream do
  before do
    @aream = Aream.new
  end

  it { should respond_to(:entdate) }
  it { should respond_to(:entmcn) }
  it { should respond_to(:entclt) }
  it { should respond_to(:edtdate) }
  it { should respond_to(:edtmcn) }
  it { should respond_to(:edtclt) }
  it { should respond_to(:area_cd) }
  it { should respond_to(:area_j) }
  it { should respond_to(:area_a) }
  it { should respond_to(:area_k) }


  context 'entdateが空の場合' do
    before { @aream.entdate = " " }
    it{ should_not be_valid }
  end

  context 'entdateが文字数オーバーの場合' do
    before { @aream.entdate = "1"*15 }
    it { should_not be_valid }
  end

  context 'entmcnが文字数オーバーの場合' do
    before { @aream.entmcn = "a"*21 }
    it { should_not be_valid }
  end

  context 'entcltが文字数オーバーの場合' do
    before { @aream.entclt = "a"*21 }
    it { should_not be_valid }
  end

  context 'edtdateが文字数オーバーの場合' do
    before { @aream.edtdate = "1"*15 }
    it { should_not be_valid }
  end

  context 'edtmcnが文字数オーバーの場合' do
    before { @aream.edtmcn = "a"*21 }
    it { should_not be_valid }
  end

  context 'edtcltが文字数オーバーの場合' do
    before { @aream.edtclt = "a"*21 }
    it { should_not be_valid }
  end

  context 'area_cdが空の場合' do
    before { @aream.area_cd = " " }
    it { should_not be_valid }
  end

  context 'area_cdが文字数オーバーの場合' do
    before { @aream.area_cd = "1"*5 }
    it { should_not be_valid }
  end

  context '既に登録された地区コードの場合' do
    before do
      aream_with_same_area_cd = @aream.dup
      aream_with_same_area_cd.save
    end

    it { should_not be_valid }
  end

  context 'area_jが空の場合' do
    before { @aream.area_j = " " }
    it { should_not be_valid }
  end

  context 'area_jが文字数オーバーの場合' do
    before { @aream.area_j = "a"*41 }
    it { should_not be_valid }
  end

  context '既に登録された地区名の場合' do
    before do
      aream_with_same_area_j = @aream.dup
      aream_with_same_area_j.save
    end


    it { should_not be_valid }
  end

  context 'area_aが空の場合' do
    before { @aream.area_a = " " }
    it { should_not be_valid }
  end

  context 'area_aが文字数オーバーの場合' do
    before { @aream.area_a = "a"*41 }
    it { should_not be_valid }
  end

  context '既に登録された地区名(略称)の場合' do
    before do
      aream_with_same_area_a = @aream.dup
      aream_with_same_area_a.save
    end

    it { should_not be_valid }
  end

  context 'area_kが空の場合' do
    before { @aream.area_k = " " }
    it { should_not be_valid }
  end

  context 'area_kが文字数オーバーの場合' do
    before { @aream.area_k = "a"*41 }
    it { should_not be_valid }
  end

  context '既に登録された地区名(カナ)の場合' do
    before do
      aream_with_same_area_k = @aream.dup
      aream_with_same_area_k.save
    end

    it { should_not be_valid }
  end
end
