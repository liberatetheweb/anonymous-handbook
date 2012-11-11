all:
	xelatex --jobname=HowToBypassGreatFirewallOfRussia howtobypass.tex
	exiftool -overwrite_original -all= -Title="Обходим Великий Российский Файрволл" -Author="Anonymous" -AttributionURL="http://anonhandbook.org" -License="CC0 1.0" -URL="http://anonhandbook.org" HowToBypassGreatFirewallOfRussia.pdf
forsite:
	xelatex --jobname=HowToBypassGreatFirewallOfRussia howtobypass.tex
	exiftool -overwrite_original -all= -Title="Обходим Великий Российский Файрволл" -Author="Anonymous" -AttributionURL="http://anonhandbook.org" -License="http://creativecommons.org/publicdomain/zero/1.0/" -URL="http://anonhandbook.org" HowToBypassGreatFirewallOfRussia.pdf
	gs -q -dNOPAUSE -dBATCH -sDEVICE=png16m -r300 -dEPSCrop -dFirstPage=1 -dLastPage=5 -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -sOutputFile=HowToBypassGreatFirewallOfRussia-%d.png HowToBypassGreatFirewallOfRussia.pdf
	optipng -o7 HowToBypassGreatFirewallOfRussia-1.png HowToBypassGreatFirewallOfRussia-2.png HowToBypassGreatFirewallOfRussia-3.png HowToBypassGreatFirewallOfRussia-4.png HowToBypassGreatFirewallOfRussia-5.png
	exiftool -overwrite_original -all= -Title="Обходим Великий Российский Файрволл" -Author="Anonymous" -AttributionURL="http://anonhandbook.org" -License="https://creativecommons.org/publicdomain/zero/1.0/" -URL="http://anonhandbook.org" HowToBypassGreatFirewallOfRussia-1.png HowToBypassGreatFirewallOfRussia-2.png HowToBypassGreatFirewallOfRussia-3.png HowToBypassGreatFirewallOfRussia-4.png HowToBypassGreatFirewallOfRussia-5.png
	pdf2svg HowToBypassGreatFirewallOfRussia.pdf HowToBypassGreatFirewallOfRussia-%d.svg all
	#svg_annotate --author="Anonymous" --license="https://creativecommons.org/publicdomain/zero/1.0/" --owner="http://anonhandbook.org" --title="Обходим Великий Российский Файрволл"  HowToBypassGreatFirewallOfRussia-1.svg HowToBypassGreatFirewallOfRussia-2.svg HowToBypassGreatFirewallOfRussia-3.svg HowToBypassGreatFirewallOfRussia-4.svg HowToBypassGreatFirewallOfRussia-5.svg
	-mkdir HowToBypassGreatFirewallOfRussia
	-mkdir HowToBypassGreatFirewallOfRussia/PNG
	-mkdir HowToBypassGreatFirewallOfRussia/SVG
	mv -f HowToBypassGreatFirewallOfRussia-1.png HowToBypassGreatFirewallOfRussia-2.png HowToBypassGreatFirewallOfRussia-3.png HowToBypassGreatFirewallOfRussia-4.png HowToBypassGreatFirewallOfRussia-5.png HowToBypassGreatFirewallOfRussia/PNG
	mv -f HowToBypassGreatFirewallOfRussia-1.svg HowToBypassGreatFirewallOfRussia-2.svg HowToBypassGreatFirewallOfRussia-3.svg HowToBypassGreatFirewallOfRussia-4.svg HowToBypassGreatFirewallOfRussia-5.svg HowToBypassGreatFirewallOfRussia/SVG
	mv -f HowToBypassGreatFirewallOfRussia.pdf HowToBypassGreatFirewallOfRussia
	-rm HowToBypassGreatFirewallOfRussia.torrent
	mktorrent -a "udp://tracker.openbittorrent.com:80" -a "udp://tracker.publicbt.com:80" -a "udp://tracker.ccc.de:80" -a "udp://tracker.istole.it:80" -c "http://anonhandbook.org" -d -v -o "HowToBypassGreatFirewallOfRussia.torrent" HowToBypassGreatFirewallOfRussia
	mat HowToBypassGreatFirewallOfRussia.torrent
	7z a HowToBypassGreatFirewallOfRussia-all.7z HowToBypassGreatFirewallOfRussia
	7z a HowToBypassGreatFirewallOfRussia-svg.7z HowToBypassGreatFirewallOfRussia/SVG
	7z a HowToBypassGreatFirewallOfRussia-png.7z HowToBypassGreatFirewallOfRussia/PNG
clean:
	rm -rf HowToBypassGreatFirewallOfRussia.out HowToBypassGreatFirewallOfRussia.aux HowToBypassGreatFirewallOfRussia.log HowToBypassGreatFirewallOfRussia.toc HowToBypassGreatFirewallOfRussia.blg HowToBypassGreatFirewallOfRussia.bbl i2p.aux proxy.aux tor.aux vpnssh.aux jondo.aux
