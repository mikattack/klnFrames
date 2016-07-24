--[[-------------------------------------------------------------------------
  oUF_Kellen
  Kellen's PVE-oriented layout for oUF.
  Copyright (c) 2015-2016
    Kellen <addons@mikitik.com>
    All rights reserved.
  https://github.com/mikattack/kFrames
---------------------------------------------------------------------------]]

local _, ns = ...

ns.elements = {}
ns.layouts = {}

-----------------------------------------------------------------------------
--  Media
-----------------------------------------------------------------------------

ns.media = {
  largeFont   = [[Interface\Addons\kFrames\media\font\BigNoodleTitling.ttf]],
  smallFont   = [[Interface\Addons\kFrames\media\font\Roboto-BoldCondensed.ttf]],
  pixelFont   = [[Interface\Addons\kFrames\media\font\Samson.ttf]],
  primeBar    = [[Interface\Addons\kFrames\media\statusbar\Resource.tga]],
  statusBar   = [[Interface\Addons\kFrames\media\statusbar\Resource.tga]],
  flatBar     = [[Interface\Addons\kFrames\media\statusbar\Flat.tga]],
  glowBar     = [[Interface\Addons\kFrames\media\statusbar\InsetGlow.tga]],
  auraBorder  = [[Interface\Addons\kFrames\media\border\Aura.tga]],
}

-----------------------------------------------------------------------------
--  Positions
-----------------------------------------------------------------------------

ns.position = {
  player        = "BOTTOMRIGHT UIParent BOTTOM -125 30",
  pet           = "BOTTOMLEFT player TOPLEFT 0 5",
  target        = "BOTTOMLEFT UIParent BOTTOM 125 30",
  targettarget  = "TOPLEFT target TOPRIGHT 10 0",
  focus         = "TOPLEFT target BOTTOMLEFT 0 -60",
  party         = "TOPRIGHT UIParent TOPRIGHT -10 -300",
  raid          = "TOPRIGHT UIParent TOPRIGHT -10 -300",
  boss          = "TOPLEFT UIParent TOPLEFT 10 34",
  maintank      = "TOPLEFT boss5 TOPLEFT 0 10",
  castbars      = "BOTTOM UIParent BOTTOM 0 200",
  classbars     = "BOTTOM UIParent BOTTOM 0 6"
}

-----------------------------------------------------------------------------
--  General Configuration
-----------------------------------------------------------------------------

ns.config = {
  width = 275,  -- Overall width of primary bars
  height = 24,  -- Actually height of healthbar, other bars are fixed

  maxNameLength = 25,
  classbarWidth = 234
}
