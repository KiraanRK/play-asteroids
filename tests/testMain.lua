package.path = package.path .. ';./components/spiffs_image/image/?.lua;;./components/spiffs_image/image/play/?.lua'

-- Require jasmine unit test framework
jasmine = require('tests/jasmine');

-- List of specs
names = {
    'sprite'
}

play = require('play');

-- Execute specs
for i, name in ipairs(names) do
  local spec = require('tests/specs/' .. name .. 'Spec');
  spec();
end
