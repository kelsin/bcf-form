require 'slim'
require 'sinatra'

get '/' do
  slim :index
end

post '/' do
  content_type :text
  <<-TABLE
<table width="500" cellspacing="1" cellpadding="5" border="0" align="center"><tbody><tr><td height="20" bgcolor="#cccccc" colspan="2" align="center"><font color="#000000" family="Tahoma" size="2"><b>Upcoming Discussions:</b></font></td></tr><tr><td width="50%" align="center" style="text-align: center;" bgcolor="#efefef"><a href="#{params[:link1]}"><img alt="#{params[:title1]}" width="100" src="#{params[:image1]}" /></a><br /><strong>#{params[:date1]}</strong> - #{params[:note1]}</td><td width="50%" align="center" style="text-align: center;" bgcolor="#efefef"><a href="#{params[:link2]}"><img alt="#{params[:title2]}" src="#{params[:image2]}" width="100" /></a><br /><strong>#{params[:date2]}</strong> - #{params[:note2]}</td></tr><tr><td height="20" bgcolor="#cccccc" colspan="2" align="center"><font color="#000000" family="Tahoma" size="2"><b></b></font></td></tr></tbody></table>
TABLE
end
