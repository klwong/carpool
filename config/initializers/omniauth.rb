Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '413395505351658', '592b76bfa8a73ac2bb18cab5e4f2803b'
end
