from django.contrib import admin

# Register your models here.
from models import FamiliaDelProducto, Producto, SubFamiliaDelProducto


@admin.register(Producto)
class ProductAdmin(admin.ModelAdmin):
    list_display = ('product_code', 'description', 'bar_code', 'category', 'inventoryplanta', 'minimum', 'isfractioned')
    search_fields = ('product_code', 'description', 'bar_code', 'category__name', 'inventoryplanta')

    def isfractioned(self, obj):
        return obj.fractioned

    isfractioned.admin_order_field = 'fractioned'
    isfractioned.boolean = True
    isfractioned.short_description = "Fraccionado?"


@admin.register(FamiliaDelProducto)
class FamilyAdmin(admin.ModelAdmin):

    list_display = ('id', 'name')


@admin.register(SubFamiliaDelProducto)
class SubFamilyAdmin(admin.ModelAdmin):

    list_display = ('id', 'name', 'category')
