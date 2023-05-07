#!/usr/bin/env lua
-- luarocks install --server=http://luarocks.org/dev luash
local sh = require("sh")

-- check env var ROFI
local rofi_retv = os.getenv("ROFI_RETV")
local wallpaper_folder = "~/wallpapers"

local rofi = sh.command("rofi", "-theme", "~/.config/rofi/global/rofi.rasi")
local ls = sh.command("ls")
local swww = sh.command("swww")

function RofiOpt(key, v)
	print("\0" .. key .. "\x1f" .. v)
end

function Main()
	RofiOpt("prompt", "Change prompt")
	print("Wallpapers")
	print("Wallpapers with parameters")
	print("Colors")
	print("Query")
	print("View All Images")
	print("Exit")
end

function Wallpapers(data)
	local papers = ls(wallpaper_folder)
	RofiOpt("data", data)
	for v in string.gmatch(papers["__input"], "[^\r\n]+") do
		local name = string.gmatch(v, "[^\\.]+")()
		local parts = {}
		for segment in string.gmatch(name, "[^-]+") do
			table.insert(parts, segment)
		end
		name = table.concat(parts, " ")
		Row(name, { info = v, icon = wallpaper_folder .. "/" .. v })
	end
end

function Colors()
	RofiOpt("data", "colors")
	Row("Nord", { info = "2E3440" })
	Row("Black", { info = "000000" })
	Row("White", { info = "FFFFFF" })
end

function Row(name, opts)
	-- join the key/values of opts into with \x1f seperator
	local parts = {}
	for k, v in pairs(opts) do
		table.insert(parts, k .. "\x1f" .. tostring(v))
	end

	local joined = table.concat(parts, "\x1f")
	if joined == "" then
		print(name)
	else
		print(name .. "\0" .. joined)
	end
end

local data = os.getenv("ROFI_DATA")
local info = os.getenv("ROFI_INFO")
if rofi_retv == nil then
	local me = arg[0]
	rofi("-show", "sw", "-modes", "sw:" .. me)
else
	local opt = arg[1]
	if opt == nil then
		Main()
	else
		if opt == "Wallpapers" then
			Wallpapers("wallpaper")
		elseif opt == "Wallpapers with parameters" then
			Wallpapers("wallpaper-no-resize")
		elseif opt == "Query" then
			local q = swww("query")
			sh.command("notify-send")("" .. q)
		elseif opt == "Colors" then
			Colors()
		elseif opt == "View All Images" then
			-- sh.command("bash")("-c", "feh " .. wallpaper_folder .. " > /dev/null 2>&1")
			os.execute("feh -F " .. wallpaper_folder .. " > /dev/null 2>&1 &")
		else
			if data == "wallpaper" then
				swww(
					"img",
					wallpaper_folder .. "/" .. info,
					"--transition-step",
					"20",
					"--transition-fps",
					"60",
					"--transition-type",
					"random"
				)
			elseif data == "wallpaper-no-resize" then
				swww(
					"img",
					wallpaper_folder .. "/" .. info,
					"--transition-step",
					"20",
					"--transition-fps",
					"60",
					"--transition-type",
					"random",
					"--no-resize",
					"--fill-color",
					"2E3440"
				)
			elseif data == "colors" then
				swww("clear", info)
			end
		end
	end
end
