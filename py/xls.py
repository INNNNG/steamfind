# -*- coding: GBK -*-
import xlrd
import xlwt
from datetime import date,datetime

def read_excel():
    # ���ļ�
    workbook = xlrd.open_workbook(r'd:\py\a.xls')
    # ��ȡ����sheet
    print workbook.sheet_names() # [u'sheet1', u'sheet2']
    sheet2_name = workbook.sheet_names()[1]

    # ����sheet�����������ƻ�ȡsheet����
    sheet2 = workbook.sheet_by_index(1) # sheet������0��ʼ
    sheet2 = workbook.sheet_by_name('sheet2')

    # sheet�����ƣ�����������
    print sheet2.name,sheet2.nrows,sheet2.ncols

    # ��ȡ���к����е�ֵ�����飩
    rows = sheet2.row_values(3) # ��ȡ����������
    cols = sheet2.col_values(2) # ��ȡ����������
    print rows
    print cols

    # ��ȡ��Ԫ������
    print sheet2.cell(1,0).value.encode('utf-8')
    print sheet2.cell_value(1,0).encode('utf-8')
    print sheet2.row(1)[0].value.encode('utf-8')
    
    # ��ȡ��Ԫ�����ݵ���������
    print sheet2.cell(1,0).ctype

if __name__ == '__main__':
    read_excel()
