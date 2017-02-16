Pod::Spec.new do |s|
  s.name         = "PodZHH"
  s.version      = "1.0.0"
  s.summary      = "PodZHH 一个简单的打印方法."
  s.description  = <<-DESC
text将会是我的第一次试验这次应该会比较长了.哈哈哈
                   DESC
  s.homepage     = "https://github.com/GitHubZHH/PodZHH"
  s.license      = "MIT"
  s.author       = { "iOS-朱鸿" => "zhuhong@bbdtek.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/GitHubZHH/PodZHH.git", :tag => "#{s.version}" }
  s.source_files  = "PodZHH", "PodZHH/*.{h,m}"
  s.requires_arc = true
end
