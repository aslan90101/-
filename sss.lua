-- Создание круглого объекта
local circlePart = Instance.new("Part")
circlePart.Size = Vector3.new(10, 1, 10) -- Размер круга
circlePart.Position = Vector3.new(0, 5, 0) -- Позиция объекта
circlePart.Anchored = false -- Делаем объект перемещаемым
circlePart.CanCollide = true -- Объект может сталкиваться с другими объектами
circlePart.Material = Enum.Material.Neon -- Устанавливаем материал на Neon для эффектного вида
circlePart.BrickColor = BrickColor.Random() -- Устанавливаем начальный случайный цвет
circlePart.Shape = Enum.PartType.Cylinder -- Устанавливаем форму на цилиндр (круг)
circlePart.Parent = game.Workspace

-- Функция для изменения цвета
local function changeColor()
    while true do
        circlePart.BrickColor = BrickColor.Random() -- Устанавливаем случайный цвет
        wait(0.5) -- Задержка перед сменой цвета
    end
end

-- Запускаем функцию изменения цвета в отдельном потоке
coroutine.wrap(changeColor)()

-- Функция для перемещения объекта
local function onPartClicked()
    circlePart.Position = circlePart.Position + Vector3.new(0, 0, 5) -- Перемещение объекта на 5 единиц вперед
end

-- Добавление ClickDetector для перемещения объекта
local clickDetector = Instance.new("ClickDetector")
clickDetector.Parent = circlePart -- Привязываем ClickDetector к объекту
clickDetector.MouseClick:Connect(onPartClicked)
