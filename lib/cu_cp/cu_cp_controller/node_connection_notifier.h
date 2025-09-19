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

#include "srsran/cu_cp/cu_cp_types.h"
#include <set>

namespace srsran {
namespace srs_cu_cp {

/// \brief Class responsible for notifying the CU-CP about DU node connections.
class du_connection_notifier
{
public:
  virtual ~du_connection_notifier() = default;

  /// \brief Notifies the CU-CP about a DU setup request.
  /// \return True if CU-CP accepts the request.
  virtual bool on_du_setup_request(du_index_t du_index, const std::set<plmn_identity>& plmn_ids) = 0;
};

} // namespace srs_cu_cp
} // namespace srsran
