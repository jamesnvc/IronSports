# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone
Mime::Type.register 'font/opentype', :font

# Address horrific RoR bug
ActionDispatch::ParamsParser::DEFAULT_PARSERS.delete(Mime::XML)
