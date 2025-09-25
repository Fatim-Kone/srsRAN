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

#include "rlc_rx_entity.h"

namespace srsran {

class rlc_rx_tm_entity : public rlc_rx_entity
{
public:
  rlc_rx_tm_entity(gnb_du_id_t                       gnb_du_id,
                   du_ue_index_t                     ue_index,
                   rb_id_t                           rb_id,
                   const rlc_rx_tm_config&           config,
                   rlc_rx_upper_layer_data_notifier& upper_dn_,
                   rlc_bearer_metrics_collector&     metrics_coll_,
                   rlc_pcap&                         pcap_,
                   task_executor&                    ue_executor,
                   timer_manager&                    timers);

  void stop() final
  {
    // Stop all timers.
    high_metrics_timer.stop();
  }

  // Interfaces for higher layers
  void handle_pdu(byte_buffer_slice buf) override;

private:
  // Config storage
  const rlc_rx_tm_config cfg;

  pcap_rlc_pdu_context pcap_context;
};

} // namespace srsran
