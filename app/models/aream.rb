class Aream < ActiveRecord::Base
self.table_name = 'aream'
self.primary_key = 'area_cd'

validates :entdate, presence: true, length: { maximum: 14 }
validates :entmcn,  length: { maximum: 20 }
validates :entclt,  length: { maximum: 20 }
validates :edtdate, length: { maximum: 14 }
validates :edtmcn,  length: { maximum: 20 }
validates :edtclt,  length: { maximum: 20 }
validates :area_cd, presence: true, length: { maximum: 04 }, uniqueness: true
validates :area_j,  presence: true, length: { maximum: 40 }, uniqueness: true
validates :area_a,  presence: true, length: { maximum: 40 }, uniqueness: true
validates :area_k,  presence: true, length: { maximum: 40 }, uniqueness: true
end
