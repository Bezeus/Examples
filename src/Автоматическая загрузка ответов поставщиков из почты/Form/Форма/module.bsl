﻿
Процедура КнопкаВыполнитьНажатие(Кнопка)
	ЗагрузитьСообщения(email);
КонецПроцедуры

Процедура ОсновныеДействияФормыПрочитатьЛокальныйФайл(Кнопка)
	
	МассивРазрешенныхИменКолонок = Новый Массив;
	МассивРазрешенныхИменКолонок.Добавить("Артикул");
	МассивРазрешенныхИменКолонок.Добавить("Бренд");
	МассивРазрешенныхИменКолонок.Добавить("Заказано");
	МассивРазрешенныхИменКолонок.Добавить("Доступно");
	МассивРазрешенныхИменКолонок.Добавить("Цена");

	
	Результат = СформироватьТаблицуЗначенийИзФайла(ФайлEXCEL,, МассивРазрешенныхИменКолонок);
	
	ТабДокумент = Новый ТабличныйДокумент;
	Построитель = Новый ПостроительОтчета;
	Построитель.ИсточникДанных = Новый ОписаниеИсточникаДанных(Результат);   
	Построитель.Вывести(ТабДокумент);
	ТабДокумент.Показать();
	
КонецПроцедуры

Процедура ОсновныеДействияФормыУведомить_Rocket(Кнопка)
	ПослатьУведомлениеРакете();
КонецПроцедуры
