# frozen_string_literal: true

require 'cacchern'
require 'redis'
require_relative 'caches/search_log'

RSpec.describe Cacchern::List do
  # describe '.key' do
  #   it { expect(SearchLog.key(1)).to eq 'search_log:1' }
  # end

  # describe '.find' do
  #   before do
  #     Redis.current.set('token:1', 'hoge')
  #   end
  #
  #   it { expect(Token.find(1)).to be_kind_of(Token) }
  #   it { expect(Token.find(1).key).to eq 'token:1' }
  #   it { expect(Token.find(1).value).to eq 'hoge' }
  #
  #   it { expect(Token.find(2)).to be_nil }
  # end

  describe '#intialize' do
    it { expect(SearchLog.new(1, ['hoge']).key).to eq 'search_log:1' }
    # it { expect(Token.new(1, 'hoge').value).to eq 'hoge' }
    # it { expect(Token.new(1, 'hoge').id).to eq 1 }
  end
  # describe '#save' do
  #   let(:valid_instance1) { Token.new(1, 'hoge') }
  #   let(:valid_instance2) { Counter.new(1, '1') }
  #
  #   it { expect(valid_instance1.save).to be_truthy }
  #   it { expect(valid_instance2.save).to be_truthy }
  #
  #   context 'when called save method' do
  #     before { valid_instance1.save }
  #     it { expect(Token.find(valid_instance1.id)).to be_kind_of(Token) }
  #     it { expect(Token.find(2)).to be_nil }
  #   end
  #
  #   context 'when try saving invalid object' do
  #     let(:invalid_object_instance1) { Token.new(1, nil) }
  #     let(:invalid_object_instance2) { Counter.new(1, 'hoge') }
  #
  #     it { expect(invalid_object_instance1.save).to be_falsey }
  #     it { expect(invalid_object_instance2.save).to be_falsey }
  #   end
  #
  #   context 'when save with expire option' do
  #     let(:object_instance) { Token.new(1, 'hoge') }
  #     let(:ttl) { 1.hour.since }
  #
  #     it { expect(object_instance.save(expires_in: ttl)).to be_truthy }
  #
  #     it do
  #       object_instance.save(expires_in: ttl)
  #       expect(Redis.current.ttl(object_instance.key)).to eq ttl.to_i
  #     end
  #   end
  # end
  #
  # describe '#save!' do
  #   let(:valid_instance1) { Token.new(1, 'hoge') }
  #   let(:valid_instance2) { Counter.new(1, '1') }
  #
  #   it { expect(valid_instance1.save!).to be_truthy }
  #   it { expect(valid_instance2.save!).to be_truthy }
  #
  #   context 'when called save method' do
  #     before { valid_instance1.save! }
  #     it { expect(Token.find(valid_instance1.id)).to be_kind_of(Token) }
  #     it { expect(Token.find(2)).to be_nil }
  #   end
  #
  #   context 'when try saving invalid object' do
  #     let(:invalid_object_instance1) { Token.new(1, nil) }
  #     let(:invalid_object_instance2) { Counter.new(1, 'hoge') }
  #
  #     it { expect { invalid_object_instance1.save! }.to raise_error(ActiveModel::ValidationError) }
  #     it { expect { invalid_object_instance2.save! }.to raise_error(ActiveModel::ValidationError) }
  #   end
  #
  #   context 'when save with expire option' do
  #     let(:object_instance) { Token.new(1, 'hoge') }
  #     let(:ttl) { 1.hour.since }
  #
  #     it { expect(object_instance.save!(expires_in: ttl)).to be_truthy }
  #
  #     it do
  #       object_instance.save!(expires_in: ttl)
  #       expect(Redis.current.ttl(object_instance.key)).to eq ttl.to_i
  #     end
  #   end
  # end
  #
  # describe '#delete' do
  #   let(:object_instance) { Token.new(1, 'hoge') }
  #   before { object_instance.save }
  #
  #   it { expect(object_instance.delete).to be_truthy }
  #
  #   context 'when called delete method' do
  #     before { object_instance.delete }
  #
  #     it { expect(Token.find(object_instance.id)).to be_nil }
  #   end
  # end
end
