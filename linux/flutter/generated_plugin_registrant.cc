//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <auk_utils/auk_utils_plugin.h>
#include <fvp/fvp_plugin.h>
#include <isar_flutter_libs/isar_flutter_libs_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) auk_utils_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AukUtilsPlugin");
  auk_utils_plugin_register_with_registrar(auk_utils_registrar);
  g_autoptr(FlPluginRegistrar) fvp_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FvpPlugin");
  fvp_plugin_register_with_registrar(fvp_registrar);
  g_autoptr(FlPluginRegistrar) isar_flutter_libs_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "IsarFlutterLibsPlugin");
  isar_flutter_libs_plugin_register_with_registrar(isar_flutter_libs_registrar);
}
