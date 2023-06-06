# frozen_string_literal: true

require 'spec_helper'

describe OmniAuth::Strategies::Douyin do
  subject do
    OmniAuth::Strategies::Douyin.new({})
  end

  context 'when fetch client options' do
    it 'have correct site' do
      expect(subject.options.client_options.site).to eq('https://open.douyin.com')
    end

    it 'have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('https://open.douyin.com/platform/oauth/connect')
    end

    it 'have correct token url' do
      expect(subject.options.client_options.token_url).to eq('https://open.douyin.com/oauth/access_token')
    end
  end
end
