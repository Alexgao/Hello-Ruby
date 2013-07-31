# -*- coding:utf-8 -*-
class Reader
  require "rexml/document"
  include REXML
  def reader (documentName)

    puts "-- BEGIN --"

    path = "../TestResources/"
    file = path + documentName
    if (documentName.include? ".xml")
      readXML(file)
    elsif(documentName.include? ".txt")
      readTXT(file)
    elsif(documentName.include? ".docx" or documentName.include? ".doc")
      readWord(file)
    elsif(documentName.include? ".xlsx" or documentName.include? "xls")
      readExcel(file)
    end

    puts "--  END  --"
  end

# -- 此处解析xml --
  def readXML(file)
    doc = Document.new(File.open(file))
    doc.elements.each("Resources/Resource"){ |elem|
      puts "Resource Name: \"" + elem.attributes["name"] + "\""
      puts "Resource Type: \"" + elem.attributes["type"] + "\""
      puts "Resource Value: \"" + elem.text + "\""
    }
  end

# -- 此处解析Excel --
  def readExcel(file)
    # 等待完成...
  end

# -- 此处解析TXT --
  def readTXT(file)
    txt = Document.new(File.open(file))
    puts txt
  end
# -- 此处解析word --
  def readWord(file)
    # 等待完成...
  end

end