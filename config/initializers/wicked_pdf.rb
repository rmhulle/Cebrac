WickedPdf.config = {
	WKHTMLTOPDF_PATH = File.expand_path ("../../bin/wkhtmltopdf-linux-amd64", __FILE__)
	:wkhtmltopdf => WKHTMLTOPDF_PATH,
#:layout => "pdf.html",
	:exe_path => WKHTMLTOPDF_PATH,
	:page_size =>'A4',
	:margin =>  {  	top: 1,                     # default 10 (mm)
                	bottom: 1,
                	left: 1,
                	right: 1 }
	}
