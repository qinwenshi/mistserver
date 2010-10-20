default: client-local-install

client:
	cd Connector_HTTP; $(MAKE)
	cd Connector_RTMP; $(MAKE)
	#cd Connector_RTSP; $(MAKE)
	cd Buffer; $(MAKE)
client-clean:
	cd Connector_HTTP; $(MAKE) clean
	cd Connector_RTMP; $(MAKE) clean
	#cd Connector_RTSP; $(MAKE) clean
	cd Buffer; $(MAKE) clean
clean: client-clean
client-install: client	
	cp -f ./Connector_HTTP/Connector_HTTP /usr/bin/
	cp -f ./Connector_RTMP/Connector_RTMP /usr/bin/
	#cp -f ./Connector_RTSP/Connector_RTSP /usr/bin/
	cp -f ./Buffer/Buffer /usr/bin/
client-local-install: client
	mkdir -p ./bin
	cp -f ./Connector_HTTP/Connector_HTTP ./bin/
	cp -f ./Connector_RTMP/Connector_RTMP ./bin/
	#cp -f ./Connector_RTSP/Connector_RTSP ./bin/
	cp -f ./Buffer/Buffer ./bin/
