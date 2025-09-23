-- Crush Theme Demo 🌸

local DEFAULT_USER = { name = "Guest", logged_in = false }

local function greet(user)
    local time = os.date("%I:%M %p")
    print(("🌼 Welcome, %s! Time: %s"):format(user.name, time))
end

local function fibonacci(n)
    if n < 2 then return n end
    return fibonacci(n - 1) + fibonacci(n - 2)
end

local flowers = { "sakura", "rose", "tulip", "daffodil", "lavender" }
for i, name in ipairs(flowers) do
    local mood = (i % 2 == 0) and "calm" or "bright"
    print(("🌸 %s (%s)"):format(name, mood))
end

local Blossom = {}
Blossom.__index = Blossom

function Blossom:new(name, petals)
    return setmetatable({ name = name, petals = petals or 5 }, self)
end

function Blossom:describe()
    print(("'%s' has %d petals."):format(self.name, self.petals))
end

local camellia = Blossom:new("Camellia", 8)
camellia:describe()

greet(DEFAULT_USER)
print("Fibonacci(5) →", fibonacci(5))
