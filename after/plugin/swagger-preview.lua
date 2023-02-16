local ok, swagger = pcall(require, 'swagger-preview')

if not ok then
  return
end
swagger.setup({
    -- The port to run the preview server on
    port = 8000,
    -- The host to run the preview server on
    host = "localhost",
})
