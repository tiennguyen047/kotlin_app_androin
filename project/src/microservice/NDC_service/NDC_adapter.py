#!/usr/bin/env python
import json
import os
import sys
import time
import logging

from http import HTTPStatus

from Common.RequestHandler import NCDHTTPRequestHandler

logger = logging.getLogger(__name__)

class MainHandler(NCDHTTPRequestHandler):

    def do_PUT(self):
        logger.info("NCD adapter - PUT request: {}".format(self.path))
        self.__send_response(HTTPStatus.NOT_IMPLEMENTED)
    
    def do_GET(self):
        """Handler GET request
        """
        logger.info("NCD adapter - GET request: {}".format(self.path))
        try:
            if self.path == '/':
                self._send_HTTP_response(HTTPStatus.OK,
                                         )
            
        except Exception:
            logger.exception("NCD adapter - GET request Exception when request handler")
            self.__send_response(HTTPStatus.INTERNAL_SERVER_ERROR)
            
            
    def http_logging(self):
        pass