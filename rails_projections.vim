let g:rails_projections = {
\ "config/projections.json": {
\   "command": "projections"
\ },
\ "app/services/*.rb": {
\   "command": "service",
\   "affinity": "model",
\   "test": "spec/services/%s_spec.rb",
\   "related": "app/models/%s.rb",
\   "template": "class %S\n\n  def run\n  end\nend"
\ },
\ "app/admin/*.rb": {
\   "command": "admin",
\   "affinity": "model",
\   "related": "app/models/%s.rb",
\   "template":
\   "ActiveAdmin.register %S do\n\n  # form do\n  # end\n\n  #menu parent: '', label: ''\n\n  # index do\n  # end\n\nend\n"
\ },
\ "config/*.rb": { "command": "config"  },
\ "spec/support/*.rb": {"command": "support"},
\ "spec/features/*_spec.rb": {
\   "command": "feature",
\   "template": "require 'spec_helper'\n\nfeature '%h' do\n\nend",
\ }}


let g:rails_gem_projections = {
\ "cells": {
  \ "app/cells/*_cell.rb": {
  \   "command": "cell",
  \   "related": "app/cells/%s/%d*",
  \   "template":
  \   "ActiveAdmin.register %S do\n\n  # form do\n  # end\n\n  #menu parent: '', label: ''\n\n  # index do\n  # end\n\nend\n"
  \ }
\ },
\ "carrierwave": {
\   "app/uploaders/*_uploader.rb": {
\   "command": "uploader",
\   "template":
\   "class %SUploader < CarrierWave::Uploader::Base\nend"
\   }
\ },
\ "resque": {
\   "app/workers/*_job.rb": {
\   "command": "worker",
\   "template": "class %SJob\n\n  \n@queue = :main\ndef self.perform\n  end\nend"
\   }
\ },
\ "draper": {
\   "app/decorators/*_decorator.rb": {
\   "command": "decorator",
\   "affinity": "model",
\   "test": "spec/decorators/%s_spec.rb",
\   "related": "app/models/%s.rb",
\   "template": "class %SDecorator < Draper::Decorator\nend"
\   }
\  }
\ }
