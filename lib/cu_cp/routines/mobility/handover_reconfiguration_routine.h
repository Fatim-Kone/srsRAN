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

#include "../../ue_manager/ue_manager_impl.h"
#include "srsran/support/async/async_task.h"
#include <chrono>

namespace srsran {
namespace srs_cu_cp {

/// \brief Handles the handover of a UE between two different DUs.
/// TODO Add seqdiag
class handover_reconfiguration_routine
{
public:
  handover_reconfiguration_routine(
      const rrc_reconfiguration_procedure_request&    request_,
      const e1ap_bearer_context_modification_request& target_bearer_context_modification_request_,
      const ue_index_t&                               target_ue_index_,
      cu_cp_ue&                                       source_ue_,
      f1ap_ue_context_manager&                        source_f1ap_ue_ctxt_mng_,
      cu_cp_ue_context_manipulation_handler&          cu_cp_handler_,
      srslog::basic_logger&                           logger_);

  void operator()(coro_context<async_task<bool>>& ctx);

  static const char* name() { return "Handover reconfiguration routine"; }

private:
  void generate_ue_context_modification_request();
  void initialize_handover_ue_release_timer(ue_index_t ue_index);

  // (sub-)routine requests
  const rrc_reconfiguration_procedure_request     request;
  const e1ap_bearer_context_modification_request& target_bearer_context_modification_request;
  f1ap_ue_context_modification_request            ue_context_mod_request;

  const ue_index_t                       target_ue_index;         // Index of the target UE
  cu_cp_ue&                              source_ue;               // UE in the source DU
  f1ap_ue_context_manager&               source_f1ap_ue_ctxt_mng; // to send UE context modification to source UE
  cu_cp_ue_context_manipulation_handler& cu_cp_handler; // To receive the reconfigurationComplete from target UE

  srslog::basic_logger& logger;

  // (sub-)routine results
  std::chrono::milliseconds               target_ue_release_timeout;
  std::chrono::milliseconds               handover_ue_release_timeout;
  rrc_ue_handover_reconfiguration_context ho_reconf_ctxt;
  f1ap_ue_context_modification_response   ue_context_mod_response;
};

} // namespace srs_cu_cp
} // namespace srsran
