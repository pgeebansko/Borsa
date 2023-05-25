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


# списък предложения
class Offer(models.Model):
    title = models.CharField('Име', max_length=100, default='', help_text='Име на офертата')
    class_num = models.ForeignKey(Klas, name='class_id', on_delete=models.SET_NULL, null=True, blank=True)
    content = models.CharField('Съдържание', max_length=100, default='')
    price = models.CharField('Цена', max_length=50, default='')
    remark = models.CharField('Коментар', max_length=100, default='')
    picture = models.ImageField('Изображение', upload_to='subject_pics', blank=True,
                                help_text='Снимка на предлаганите учебници')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Предложение'
        verbose_name_plural = 'Предложения'


# списък отзиви
class Comment(models.Model):
    text = models.CharField('Име', max_length=100, default='')
    offer_id = models.ForeignKey(Offer, on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return self.text

    class Meta:
        verbose_name = 'Отзив'
        verbose_name_plural = 'Отзиви'
