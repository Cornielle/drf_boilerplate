from rest_framework.views import APIView
from rest_framework.response import Response

# This is an specific way to show a kind of "swagger" for python
class TestView(APIView):
    def get(self, request, *args, **kwargs):
        return Response("Hola mundo")