# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('variablesGlobales', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='variableglobal',
            name='descripcion',
            field=models.CharField(max_length=255, verbose_name=b'Descripcion', blank=True),
        ),
    ]
