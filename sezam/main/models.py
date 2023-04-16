from django.db import models


# списък класове
class Klas(models.Model):
    class_num = models.SmallIntegerField('Клас', default=12)

    def __str__(self):
        if self.class_num == 8:
            result = str(self.class_num)+'-ми'
        else:
            result = str(self.class_num) + '-ти'
        return result

    class Meta:
        verbose_name = 'Клас'
        verbose_name_plural = 'Класове'

