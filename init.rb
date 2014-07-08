require 'redmine'

Redmine::Plugin.register :codebook do
  name 'Redmine Codebook plugin'
  author 'Steffen Roegner/Arkhitech'
  author_url 'http://www.arkhitech.com'
  description 'A knowledge and source code sharing plugin for Redmine'
  version '0.4.0'
  requires_redmine :version_or_higher => '2.0.0'

  settings(:partial => 'preferences/codebook_prefs',
           :default => {
             'show_line_numbers' => '0'
           })
  menu(:top_menu, :codebook, {:controller => "codebooks", :action => 'index'}, :caption => :codebook_title, :if => Proc.new{ User.current.logged? })
end
