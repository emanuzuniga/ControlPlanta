# -*- coding: utf-8 -*-
from __future__ import unicode_literals


from django.contrib.auth.decorators import login_required
from django.http import JsonResponse, Http404


import datetime
import os
import socket
import StringIO
import xlsxwriter
from django.shortcuts import render
from django.http import HttpResponse

from ventas.models import Venta, DetalleProductos

# Create your views here.
from django.views.generic import TemplateView


class LandingView(TemplateView):
    template_name = 'landing.html'


class TrazabilidadView(TemplateView):
    template_name = 'trazabilidad.html'


@login_required(login_url='/admin/login/')
def backupdbmine(request):
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    if request.is_ajax():
        if socket.gethostname().startswith('Mac'):
            os.system(BASE_DIR+'/dbbackup/backupdb.command')
            return JsonResponse({'status': 'success', 'system': 'MAC', 'dir': BASE_DIR})
        else:
            os.system(BASE_DIR+'/dbbackup/backupdb.bat')
            return JsonResponse({'status': 'Success', 'system': 'Windows', 'dir': BASE_DIR})
    else:
        raise Http404


def xls_report(request):

    date_ini = request.GET['date_ini']
    date_end = request.GET['date_end']

    family = request.GET['family']
    subfamily = request.GET['subfamily']

    response = HttpResponse(content_type='application/vnd.ms-excel')
    response['Content-Disposition'] = 'attachment; filename=Report.xlsx'
    xlsx_data = write_to_excel(date_ini, date_end, family, subfamily)
    response.write(xlsx_data)
    return response


def write_to_excel(date_ini, date_end, family, subfamily):

    output = StringIO.StringIO()
    workbook = xlsxwriter.Workbook(output)

    # Here we will adding the code to add data
    worksheet_s = workbook.add_worksheet("Reporte detallado")

    title = workbook.add_format({
        'bold': True,
        'font_size': 14,
        'align': 'center',
        'valign': 'vcenter'
    })

    header = workbook.add_format({
        'bg_color': '#59ff59',
        'color': 'black',
        'align': 'center',
        'valign': 'top',
        'border': 1
    })

    cell_center = workbook.add_format({

        'align': 'center',

    })

    title_text = u"{0}".format("Reporte de Ventas detallado por articulo y factura")
    worksheet_s.merge_range('A1:H1', title_text, title)

    worksheet_s.write(2, 0, 'Fecha', cell_center)
    worksheet_s.write(3, 0, 'Del :', cell_center)
    worksheet_s.write(4, 0, 'Al :', cell_center)

    formated_date1 = datetime.datetime.strptime(date_ini, "%Y-%m-%d").date()
    formated_date2 = datetime.datetime.strptime(date_end, "%Y-%m-%d").date()

    worksheet_s.write(3, 1, formated_date1.strftime('%d/%m/%Y'), header)
    worksheet_s.write(4, 1, formated_date2.strftime('%d/%m/%Y'), header)

    worksheet_s.write(6, 0, 'No Factura', header)
    worksheet_s.write(6, 1, "Fecha", header)
    worksheet_s.write(6, 2, "Código", header)
    worksheet_s.write(6, 3, "Artículo", header)
    worksheet_s.write(6, 4, "Unidad", header)
    worksheet_s.write(6, 5, "Cantidad", header)
    worksheet_s.write(6, 6, "Precio Unitario", header)
    worksheet_s.write(6, 7, "Total", header)

    ventas = Venta.objects.filter(anulada=False, date__range=[date_ini, date_end])

    control = 0
    cant_tot = 0
    total = 0

    for data in ventas:

        detalleprod = []

        if family == "0":

            detalleprod = data.detalleproductos.all()

        if family != "0" and subfamily == "0":

            detalleprod = data.detalleproductos.filter(producto__category=family)

        if family != "0" and subfamily != "0":

            detalleprod = data.detalleproductos.filter(producto__category=family, producto__subcategory=subfamily)

        for detalle in detalleprod:

            row = control+7

            worksheet_s.write(row, 0, data.id, cell_center)
            worksheet_s.write(row, 1, data.date.strftime('%d/%m/%Y'), cell_center)
            worksheet_s.write(row, 2, detalle.producto.product_code, cell_center)
            worksheet_s.write(row, 3, detalle.description, cell_center)
            worksheet_s.write(row, 4, 'Kg', cell_center)
            worksheet_s.write(row, 5, detalle.cantidad, cell_center)
            worksheet_s.write(row, 6, detalle.preciouni, cell_center)
            worksheet_s.write(row, 7, detalle.total, cell_center)

            cant_tot += detalle.cantidad
            total += detalle.total
            control += 1

    worksheet_s.write(control + 7 + 1, 0, 'Totales', header)
    worksheet_s.write(control + 7 + 1, 1, '', header)
    worksheet_s.write(control + 7 + 1, 2, '', header)
    worksheet_s.write(control + 7 + 1, 3, '', header)
    worksheet_s.write(control + 7 + 1, 4, '', header)
    worksheet_s.write(control + 7 + 1, 5, cant_tot, header)
    worksheet_s.write(control + 7 + 1, 6, '', header)
    worksheet_s.write(control + 7 + 1, 7, total, header)

    worksheet_s.set_column('B:B', 9)
    worksheet_s.set_column('C:C', 7)
    worksheet_s.set_column('D:D', 25)
    worksheet_s.set_column('G:G', 12)
    worksheet_s.set_column('H:H', 13)

    workbook.close()
    xlsx_data = output.getvalue()
    # xlsx_data contains the Excel file
    return xlsx_data




