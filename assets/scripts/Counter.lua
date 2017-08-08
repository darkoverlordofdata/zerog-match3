local Counter
do
  local _class_0
  local _base_0 = {
    getVal = function(self)
      return self.count
    end,
    toString = function(self)
      return tostring(self)
    end,
    add = function(self, amount)
      self.count = self.count + amount
    end,
    subtract = function(self, amount)
      self.count = self.count - amount
    end,
    increment = function(self)
      return self:add(1)
    end,
    decrement = function(self)
      return self:subtract(1)
    end,
    __tostring = function(self)
      return string.format("%d", self.count)
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, start)
      self.count = start
    end,
    __base = _base_0,
    __name = "Counter"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Counter = _class_0
  return _class_0
end
