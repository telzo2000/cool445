# Initialize a Keyboard
kbd = Keyboard.new

# Initialize GPIO assign
kbd.init_pins(
  [ 3, 2, 6, 4 ],            # row0, row1,... respectively
  [ 15, 14, 10, 7, 5, 16, 17, 18, 19, 26, 27, 28  ]    # col0, col1,... respectively
)
#keyboard.row_pins = (board.GP3, board.GP2, board.GP6,board.GP4)
#keyboard.col_pins = (board.GP15, board.GP14, board.GP10, board.GP7)
kbd.init_matrix_pins(
    [
      [[15,3],[14,3],[10,3],[7,3],[5,3],[16,3],[17,3],[18,3],[19,3],[26,3],[27,3],[28,3]],
      [[15,2],[14,2],[10,2],[7,2],[5,2],[16,2],[17,2],[18,2],[19,2],[26,2],[27,2],[28,2]],
      [[15,6],[14,6],[10,6],[7,6],[5,6],[16,6],[17,6],[18,6],[19,6],[26,6],[27,6],[28,6]],
      [[15,4],[14,4],[10,4],[7,4],[5,4],[16,4],[17,4],[18,4],[19,4],[26,4],[27,4],[28,4]],
    ]
)
# default layer should be added at first
kbd.add_layer :default, %i[
  KC_NO KC_Q    KC_W    KC_E        KC_R      KC_T   KC_Y  KC_U  KC_I  KC_O  KC_P  KC_BSPC     
  KC_ESC  KC_A    KC_S    KC_D        KC_F      KC_G  KC_H    KC_J    KC_K    KC_L  KC_MINS  KC_ENT   
  KC_LSFT KC_Z    KC_X   KC_C        KC_V      KC_B  KC_N    KC_M    KC_COMM  KC_DOT   KC_UP KC_SLSH   
  KC_LCTL KC_GUI KC_LALT KC_SPC KC_SPC KC_SPC KC_SPC KC_NO KC_LEFT  KC_DOWN KC_RIGHT KC_NO
]

#
#                   Your custom     Keycode or             Keycode (only modifiers)      Release time      Re-push time
#                   key name        Array of Keycode       or Layer Symbol to be held    threshold(ms)     threshold(ms)
#                                   or Proc                or Proc which will run        to consider as    to consider as
#                                   when you click         while you keep press          `click the key`   `hold the key`


# `before_report` will work just right before reporting what keys are pushed to USB host.
# You can use it to hack data by adding an instance method to Keyboard class by yourself.
# ex) Use Keyboard#before_report filter if you want to input `":" w/o shift` and `";" w/ shift`
#kbd.before_report do
#  kbd.invert_sft if kbd.keys_include?(:KC_SCOLON)
#  # You'll be also able to write `invert_ctl`, `invert_alt` and `invert_gui`
#end

rgb = RGB.new(
  13,    # pin number
  36,    # size of underglow pixel
  0,   # size of backlight pixel
  true # 32bit data will be sent to a pixel if true while 24bit if false
)
rgb.effect     = :breath
rgb.speed      = 31  # 1-31  / default: 22
rgb.hue        = 10  # 0-100 / default: 0
rgb.saturation = 100 # 0-100 / default: 100
rgb.max_value  = 10  # 1-31  / default: 13

kbd.append rgb # `kbd` is an instance of Keyboard class that should be newed in advance

kbd.start!
