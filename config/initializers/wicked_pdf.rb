WKHTMLTOPDF_PATH = File.expand_path('../../bin/wkhtmltopdf-linux-amd64',__FILE__)

WickedPdf.config = {
	
	:wkhtmltopdf => '/usr/local/bin/wkhtmltopdf',
#:layout => "pdf.html",
	:exe_path => '/usr/local/bin/wkhtmltopdf',
	:page_size =>'A4',
	:margin =>  {  	top: 1,                     # default 10 (mm)
                	bottom: 1,
                	left: 1,
                	right: 1 }
	}
