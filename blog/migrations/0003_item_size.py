# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_item_color'),
    ]

    operations = [
        migrations.AddField(
            model_name='item',
            name='size',
            field=models.CharField(default=datetime.datetime(2017, 4, 10, 11, 48, 5, 301185, tzinfo=utc), max_length=255, verbose_name=b'size'),
            preserve_default=False,
        ),
    ]
