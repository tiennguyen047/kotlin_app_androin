import json
import logging
from http.server import SimpleHTTPRequestHandler
from http import HTTPStatus
from enum import Enum


logger = logging.getLogger(__name__)

class NCDHTTPRequestHandler(SimpleHTTPRequestHandler):

    def end_headers(self):
        self.send_header("NCD project")
        return super().end_headers()
    
    def version_string(self):
        return "NCD service"
    
    def _send_HTTP_response(self, status: HTTPStatus, header: dict, body: str):
        """send HTTP response code service

        Args:
            status (HTTPStatus): code 200 400
            header (dict): restful api
            body (str)
        """
        self.send_response(status)
        for key, value in header.items():
            self.send_header(key, value)
        self.end_headers()
        self.wfile.write(body)
    
    def __send_response(self, code: int, body=""):
        code = HTTPStatus(code)
        if not body:
            body = {" message: {} {} {}".format(code.value, code.phrase, code.description)}
        self._send_HTTP_response(code)


class RequestType(Enum):
    CONVER_JSON = "conver_json"
    UPDATE_DATA = "update_data"
    
    def __str__(self) -> str:
        return self.value

    def __eq__(self, __o: object) -> bool:
        return __o == self.value