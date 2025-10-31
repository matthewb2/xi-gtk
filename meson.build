project('xi-gtk', ['vala', 'c'],
  version: '0.3.0',
  meson_version: '>=0.50.0'
)

gnome = import('gnome')


deps = [
  dependency('gtk+-3.0'),
  dependency('json-glib-1.0'),
]

# Windows에서는 gio-unix-2.0이 없으므로 제외
if host_machine.system() != 'windows'
  deps += [ dependency('gio-unix-2.0') ]
else
  message('Skipping gio-unix-2.0 dependency on Windows')
endif

sources = [
	'src/Application.vala',
	'src/Blinker.vala',
	'src/CoreConnection.vala',
	'src/EditView.vala',
	'src/EditViewContainer.vala',
	'src/FindBar.vala',
	'src/Line.vala',
	'src/LineCache.vala',
	'src/Notebook.vala',
	'src/Style.vala',
	'src/StyleMap.vala',
	'src/Theme.vala',
	'src/Utilities.vala',
	'src/Window.vala', 
	'src/Config.vala',   # ← 새로 추가
	'src/xi-gtk-resources.c'  # <- 수동 생성한 리소스 포함
]

executable('xi-gtk', sources,
  dependencies: deps,
         vala_args: ['--vapidir=.'],  # ← pkg 대신 vapidir만 유지
  install: true
)
