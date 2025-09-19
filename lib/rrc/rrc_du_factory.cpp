/*
 *
 * Copyright 2021-2025 Software Radio Systems Limited
 *
 * By using this file, you agree to the terms and conditions set
 * forth in the LICENSE file which can be found at the top level of
 * the distribution.
 *
 */

#include "srsran/rrc/rrc_du_factory.h"
#include "rrc_du_impl.h"
#include "srsran/rrc/rrc_config.h"

using namespace srsran;
using namespace srs_cu_cp;

std::unique_ptr<rrc_du> srsran::srs_cu_cp::create_rrc_du(const rrc_cfg_t& cfg)
{
  return std::make_unique<rrc_du_impl>(cfg);
}
