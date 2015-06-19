from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from lotes.models import Lote


class LoteSerializer(ModelSerializer):
    #canales = serializers.ListField(child=serializers.CharField)
    class Meta:
        model=Lote
        fields =('date','lotenum','fierro','canalesqty','canales','totalweight','tipo')

