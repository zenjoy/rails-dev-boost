require "bundler/gem_tasks"

module Bundler
  class GemHelper
    unless method_defined?(:rubygem_push)
      raise NoMethodError, "Monkey patching Bundler::GemHelper#rubygem_push failed: did the Bundler API change???"
    end

    def rubygem_push(path)
      sh %{gem inabox #{path}}

      Bundler.ui.confirm "Pushed #{name} #{version}"
    end
  end
end
