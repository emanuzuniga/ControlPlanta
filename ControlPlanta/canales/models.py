# -*- coding: utf-8 -*-
from django.db import models

# Create your models here.
from productos.models import FamiliaDelProducto
from proveedores.models import Proveedor


class Canal(models.Model):

    date=models.DateField(verbose_name='Fecha')
    consecutive=models.PositiveIntegerField(verbose_name='Consecutivo Matadero')
    weight=models.FloatField(verbose_name='Peso del canal Kg')
    qualification=models.CharField(max_length=255,choices=((u'AA', u'AA'), (u'A', u'A'), (u'B', u'B'), (u'C', u'C') , (u'D', u'D') , (u'E', u'E')),verbose_name='Clasificación')
    preciokilo=models.FloatField(default=0,verbose_name='Precio del canal por kilogramo')
    fierro=models.ForeignKey(Proveedor, verbose_name='# de Fierro')
    isonlote=models.BooleanField(default=False,verbose_name='Pertenece a lote?')
    vendido=models.BooleanField(default=False,verbose_name='vendido entero?')
    mediovendido=models.BooleanField(default=False,verbose_name='Ya se vendió medio?')
    tipo=models.ForeignKey(FamiliaDelProducto, default=1,verbose_name='Tipo de Carne')


    def fierronum(self):
        return self.fierro.fierro

    fierronum.short_description = "Fierro #"
    fierronum.admin_order_field = 'fierro'
    fierronumstr=str(fierronum)

    def __unicode__(self):
        datestr=str(self.date)
        consecutivestr=str(self.consecutive)
        tiponame=str(self.tipo.name)

        return datestr+" "+self.fierro.fierro+" "+consecutivestr+" "+tiponame

    class Meta:
        ordering=['id']
        verbose_name_plural='1. Canales'
