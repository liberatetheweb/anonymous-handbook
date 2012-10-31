all:
	xelatex --jobname=HowToBypassGreatFirewallOfRussia howtobypass.tex
	mat HowToBypassGreatFirewallOfRussia.pdf
forsite:
	xelatex --jobname=HowToBypassGreatFirewallOfRussia howtobypass.tex
	mat HowToBypassGreatFirewallOfRussia.pdf
	convert -quality 100 -alpha off -density 300x300 -resize 2480x3508 HowToBypassGreatFirewallOfRussia.pdf HowToBypassGreatFirewallOfRussia.png
	optipng -o7 HowToBypassGreatFirewallOfRussia-0.png HowToBypassGreatFirewallOfRussia-1.png HowToBypassGreatFirewallOfRussia-2.png HowToBypassGreatFirewallOfRussia-3.png HowToBypassGreatFirewallOfRussia-4.png
	mat HowToBypassGreatFirewallOfRussia-0.png HowToBypassGreatFirewallOfRussia-1.png HowToBypassGreatFirewallOfRussia-2.png HowToBypassGreatFirewallOfRussia-3.png HowToBypassGreatFirewallOfRussia-4.png
	pdf2svg HowToBypassGreatFirewallOfRussia.pdf HowToBypassGreatFirewallOfRussia%d.svg all
	-mkdir HowToBypassGreatFirewallOfRussia
	-mkdir HowToBypassGreatFirewallOfRussia/PNG
	-mkdir HowToBypassGreatFirewallOfRussia/SVG
	mv -f HowToBypassGreatFirewallOfRussia-0.png HowToBypassGreatFirewallOfRussia-1.png HowToBypassGreatFirewallOfRussia-2.png HowToBypassGreatFirewallOfRussia-3.png HowToBypassGreatFirewallOfRussia-4.png HowToBypassGreatFirewallOfRussia/PNG
	mv -f HowToBypassGreatFirewallOfRussia1.svg HowToBypassGreatFirewallOfRussia2.svg HowToBypassGreatFirewallOfRussia3.svg HowToBypassGreatFirewallOfRussia4.svg HowToBypassGreatFirewallOfRussia5.svg HowToBypassGreatFirewallOfRussia/SVG
	mv -f HowToBypassGreatFirewallOfRussia.pdf HowToBypassGreatFirewallOfRussia
	mktorrent -a "udp://tracker.openbittorrent.com:80" -a "udp://tracker.publicbt.com:80" -a "udp://tracker.ccc.de:80" -a "udp://tracker.istole.it:80" -c "http://anonhandbook.org" -d -v -o "HowToBypassGreatFirewallOfRussia.torrent" HowToBypassGreatFirewallOfRussia
	mat HowToBypassGreatFirewallOfRussia.torrent
	7z a HowToBypassGreatFirewallOfRussia-all.7z HowToBypassGreatFirewallOfRussia
	7z a HowToBypassGreatFirewallOfRussia-svg.7z HowToBypassGreatFirewallOfRussia/SVG
	7z a HowToBypassGreatFirewallOfRussia-png.7z HowToBypassGreatFirewallOfRussia/PNG
clean:
	rm -rf HowToBypassGreatFirewallOfRussia.out HowToBypassGreatFirewallOfRussia.aux HowToBypassGreatFirewallOfRussia.log HowToBypassGreatFirewallOfRussia.toc HowToBypassGreatFirewallOfRussia.blg HowToBypassGreatFirewallOfRussia.bbl i2p.aux proxy.aux tor.aux vpnssh.aux jondo.aux
