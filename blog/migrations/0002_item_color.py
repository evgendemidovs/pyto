# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='item',
            name='color',
            field=models.CharField(default=datetime.datetime(2017, 3, 26, 17, 26, 47, 469779, tzinfo=utc), max_length=255, verbose_name=b'color'),
            preserve_default=False,
        ),
    ]
