---@diagnostic disable: duplicate-set-field, undefined-global
if GetResourceState('g-banking') == 'missing' then return end
Banking = Banking or {}

local gBanking = exports['g-banking']

---This will get the name of the Managment system being being used.
---@return string
Banking.GetManagmentName = function()
    return 'g-banking'
end

---This will get the name of the in use resource.
---@return string
Banking.GetResourceName = function()
    return 'g-banking'
end

---This will return a number
---@param account string
---@return number
Banking.GetAccountMoney = function(account)
    return gBanking:GetAccountBalance(account)
end

---This will add money to the specified account of the passed amount
---@param account string
---@param amount number
---@param _ string
---@return boolean
Banking.AddAccountMoney = function(account, amount, _)
    return gBanking:AddMoney(account, amount)
end

---This will remove money from the specified account of the passed amount
---@param account string
---@param amount number
---@param _ string
---@return boolean
Banking.RemoveAccountMoney = function(account, amount, _)
    return gBanking:RemoveMoney(account, amount)
end

return Banking