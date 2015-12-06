<!-- -
Title: Hexadecimal Primary Key in Django Model
Description: How to get a hexadecimal ID primary key in a Django model
First Published: 2015-12-06
- -->

Hexadecimal Primary Key in Django Model
=======================================

The following snippet of code will make the primary key in a Django model to be
a hexadecimal string of 8 characters instead of an integer. 

I wrote this earlier today, and it works fine, but I have a bad feeling about
it. I don't know why yet, but something doesn't feel right. Nevertheless, I am
putting here as a note to myself. You should probably not use it. If you do,
note that if you exhaust the possible IDs, `generate_id()` will recurse 
forever.

```python
import os
from binascii import hexlify
from django.db import models

# Create your models here.
class Person(models.Model):
    '''Hold a Person object'''

    def generate_id():
        '''Generate an 8-character long hexadecimal ID'''
        possible = hexlify(os.urandom(4))
        try:
            # if this possible ID exists, run again:
            Person.objects.get(ID=possible)
            return self.generate_id()
        except:
            return possible

    ID = models.CharField(
        max_length = 8,
        primary_key = True,
        editable = False,
        default = generate_id
    )
    first_name = models.CharField(max_length=240)
```
