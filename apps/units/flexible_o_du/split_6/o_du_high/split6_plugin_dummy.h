/*
 *
 * Copyright 2021-2025 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#pragma once

#include "split6_plugin.h"

namespace srsran {

struct worker_manager_config;

/// Dummy split 6 plugin implementation.
class split6_plugin_dummy : public split6_plugin
{
public:
  // See interface for documentation.
  void on_parsing_configuration_registration(CLI::App& app) override {}

  // See interface for documentation.
  bool on_configuration_validation() const override { return false; }

  // See interface for documentation.
  void on_loggers_registration() override {}

  // See interface for documentation.
  void fill_worker_manager_config(worker_manager_config& config) override {}

  // See interface for documentation.
  std::vector<std::unique_ptr<fapi::fapi_adaptor>>
  create_fapi_adaptor(const srs_du::du_high_configuration& du_high_cfg,
                      const o_du_unit_dependencies&        dependencies) override;
};

} // namespace srsran
