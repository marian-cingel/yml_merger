require 'nokogiri'
require 'assertion'



// clas operations - add sources



class Uvprojx
    
    attr_reader: content

    def initialize()
    end

    def open(path)
        Assertion::if_enabled do
            Assertion::assert File.exists?(path) do
                "file does not exist: '#{path}'"
            end
        end
        @path = path
        @content = 
    end

    def save()
        save_as(@path)
    end

    def save_as(path)
        Assertion::if_enabled do
            Assertion::assert File.exists?(path) do
                "file does not exist: '#{path}'"
            end
        end
    end










end



