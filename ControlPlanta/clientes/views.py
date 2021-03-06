from django.shortcuts import render

# Create your views here.
from rest_framework import serializers,viewsets
from clientes.filters import ClientFilter
from clientes.models import Cliente


class ClientSerializer(serializers.ModelSerializer):

    class Meta:
        model = Cliente
        fields =('id','code','name','last_name','identification','discount','credit','credit_limit','associated','associated_code','clienttype')


# ViewroductSets define the view behavior.
class ClientViewSet(viewsets.ModelViewSet):

    serializer_class = ClientSerializer
    queryset = Cliente.objects.all()
    lookup_field = 'id'
    #filter_fields= ('id','category','product_code','description')
    filter_class=ClientFilter