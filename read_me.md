





|**PLAYER / Аккаунт игрока** |
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|player\_id|Уникальный id пользователя|INTEGER|NOT NULL<br>PRIMARY KEY|
|player\_login|Логин игрока|VARCHAR(30)|NOT NULL|
|player\_email|Почта пользователя (нужно маскировать)|VARCHAR(30)|NOT NULL|
|player\_password|Пароль пользователя (нужно маскировать)|VARCHAR(30)|NOT NULL|


|**CHARACTERS / Персонаж игрока** |
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|character\_id|Уникальный id игрока|INTEGER|NOT NULL<br>PRIMARY KEY|
|player\_id|Внешний ключ для связи с пользователем|INTEGER|FOREIGN KEY|
|character\_hp|Здоровье персонажа|INTEGER||
|location\_id|Внешний ключ для связи с локацией|INTEGER|FOREIGN KEY|
|character\_level|Уровень персонажа|INTEGER|NOT NULL|
|character\_mana|Мана персонажа|INTEGER||
|character\_class|Класс персонажа <br>(может быть без класса)|VARCHAR(8)|check (“warrior”, “archer”, “magician”, null)|


|**ITEMS / Артефакт** |
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|item\_id|Уникальный id артефакта|INTEGER|NOT NULL<br>PRIMARY KEY|
|item\_type|Тип предметов|VARCHAR(10)|check (“cursed”, “blessed”, “magical”, null)|
|item\_is\_consumable|Одноразовый ли предмет?|BOOLEAN||
|item\_rarity|Редкость предмета|VARCHAR(10)|check (“common”, “rare”, “epic”)|


|**LOCATIONS / Артефакт** |
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|location\_id|Уникальный id артефакта|INTEGER|NOT NULL<br>PRIMARY KEY|
|location\_dificality|Сложность локации|INTEGER||
|location\_name|Название локации|VARCHAR(30)||





|**SKILLS / Способности**|
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|skill\_id|Уникальный id способности|INTEGER|NOT NULL<br>PRIMARY KEY|
|skill\_mana\_requirements|Затраты маны на использование способности|INTEGER||
|skill\_item\_requirements|Нужны ли предметы|BOOLEAN||
|skill\_type|Тип способности|VARCHAR(10)|check (“melee”, “range”, “magic”)|


|**CHARACTER\_X\_SKILL / Связь персонажа и его способности**|
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|character\_id|Уникальный id персонажа|INTEGER|FOREIGN KEY|
|skill\_id|Уникальный id способности|INTEGER|FOREIGN KEY|


|**CHARACTER\_X\_ITEM / Связь персонажа и его предмета**|
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|character\_id|Уникальный id персонажа|INTEGER|FOREIGN KEY|
|item\_id|Уникальный id предмета|INTEGER|FOREIGN KEY|


|**SKILL\_X\_ITEM / Связь способности и предметов**|
| :- |
|**Название**|**Описание**|**Тип данных**|**Ограничение**|
|skill\_id|Уникальный id способности|INTEGER|FOREIGN KEY|
|item\_id|Уникальный id предмета|INTEGER|FOREIGN KEY|

