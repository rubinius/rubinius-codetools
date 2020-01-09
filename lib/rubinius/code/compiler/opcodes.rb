# *** This file is generated by InstructionParser ***

module Rubinius
  class InstructionSet

    CALL_FLAG_CONCAT = 2

    opcode  0, :add_scope,                   :stack => [1, 0],     :args => [],                               :control_flow => :next
    opcode  1, :allow_private,               :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode  2, :cast_array,                  :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode  3, :cast_for_multi_block_arg,    :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode  4, :cast_for_single_block_arg,   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode  5, :cast_for_splat_block_arg,    :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode  6, :cast_multi_value,            :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode  7, :check_frozen,                :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode  8, :check_interrupts,            :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode  9, :check_serial,                :stack => [1, 1],     :args => [:literal, :serial],              :control_flow => :next
    opcode 10, :check_serial_private,        :stack => [1, 1],     :args => [:literal, :serial],              :control_flow => :next
    opcode 11, :clear_exception,             :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 12, :create_block,                :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 13, :dup,                         :stack => [1, 2],     :args => [],                               :control_flow => :next
    opcode 14, :dup_many,                    :stack => [[0,1], [0, 1, 2]],:args => [:count],                         :control_flow => :next
    opcode 15, :ensure_return,               :stack => [1, 1],     :args => [],                               :control_flow => :raise
    opcode 16, :find_const,                  :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 17, :goto,                        :stack => [0, 0],     :args => [:location],                      :control_flow => :branch
    opcode 18, :goto_if_equal,               :stack => [2, 0],     :args => [:location],                      :control_flow => :branch
    opcode 19, :goto_if_false,               :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 20, :goto_if_nil,                 :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 21, :goto_if_not_equal,           :stack => [2, 0],     :args => [:location],                      :control_flow => :branch
    opcode 22, :goto_if_not_nil,             :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 23, :goto_if_not_undefined,       :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 24, :goto_if_true,                :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 25, :goto_if_undefined,           :stack => [1, 0],     :args => [:location],                      :control_flow => :branch
    opcode 26, :instance_of,                 :stack => [2, 1],     :args => [],                               :control_flow => :next
    opcode 27, :invoke_primitive,            :stack => [[0,2], 1], :args => [:literal, :count],               :control_flow => :next
    opcode 28, :kind_of,                     :stack => [2, 1],     :args => [],                               :control_flow => :next
    opcode 29, :make_array,                  :stack => [[0,1], 1], :args => [:count],                         :control_flow => :next
    opcode 30, :move_down,                   :stack => [[0,1], [0, 1, 1]],:args => [:positions],                     :control_flow => :next
    opcode 31, :noop,                        :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 32, :object_to_s,                 :stack => [1, 1],     :args => [:literal],                       :control_flow => :send
    opcode 33, :passed_arg,                  :stack => [0, 1],     :args => [:index],                         :control_flow => :next
    opcode 34, :passed_blockarg,             :stack => [0, 1],     :args => [:count],                         :control_flow => :next
    opcode 35, :pop,                         :stack => [1, 0],     :args => [],                               :control_flow => :next
    opcode 36, :pop_many,                    :stack => [[0,1], 0], :args => [:count],                         :control_flow => :next
    opcode 37, :pop_unwind,                  :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 38, :push_block,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 39, :push_block_arg,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 40, :push_const,                  :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 41, :push_cpath_top,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 42, :push_current_exception,      :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 43, :push_exception_state,        :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 44, :push_false,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 45, :push_has_block,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 46, :push_int,                    :stack => [0, 1],     :args => [:number],                        :control_flow => :next
    opcode 47, :push_ivar,                   :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 48, :push_literal,                :stack => [0, 1],     :args => [:literal],                       :control_flow => :next
    opcode 49, :push_local,                  :stack => [0, 1],     :args => [:local],                         :control_flow => :next
    opcode 50, :push_local_depth,            :stack => [0, 1],     :args => [:depth, :index],                 :control_flow => :next
    opcode 51, :push_memo,                   :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 52, :push_mirror,                 :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 53, :push_my_field,               :stack => [0, 1],     :args => [:index],                         :control_flow => :next
    opcode 54, :push_my_offset,              :stack => [0, 1],     :args => [:index],                         :control_flow => :next
    opcode 55, :push_nil,                    :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 56, :push_proc,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 57, :push_rubinius,               :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 58, :push_scope,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 59, :push_self,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 60, :push_stack_local,            :stack => [0, 1],     :args => [:which],                         :control_flow => :next
    opcode 61, :push_true,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 62, :push_type,                   :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 63, :push_undef,                  :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 64, :push_variables,              :stack => [0, 1],     :args => [],                               :control_flow => :next
    opcode 65, :raise_break,                 :stack => [1, 1],     :args => [],                               :control_flow => :raise
    opcode 66, :raise_exc,                   :stack => [1, 0],     :args => [],                               :control_flow => :raise
    opcode 67, :raise_return,                :stack => [1, 1],     :args => [],                               :control_flow => :raise
    opcode 68, :reraise,                     :stack => [0, 0],     :args => [],                               :control_flow => :raise
    opcode 69, :restore_exception_state,     :stack => [1, 0],     :args => [],                               :control_flow => :next
    opcode 70, :ret,                         :stack => [1, 1],     :args => [:index],                         :control_flow => :return
    opcode 71, :rotate,                      :stack => [[0,1], [0, 1, 1]],:args => [:count],                  :control_flow => :next
    opcode 72, :send_method,                 :stack => [1, 1],     :args => [:literal],                       :control_flow => :send
    opcode 73, :send_stack,                  :stack => [[1,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 74, :send_stack_with_block,       :stack => [[2,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 75, :send_stack_with_splat,       :stack => [[3,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 76, :send_super_stack_with_block, :stack => [[1,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 77, :send_super_stack_with_splat, :stack => [[2,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 78, :send_vcall,                  :stack => [0, 1],     :args => [:literal],                       :control_flow => :send
    opcode 79, :set_call_flags,              :stack => [0, 0],     :args => [:flags],                         :control_flow => :next
    opcode 80, :set_const,                   :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 81, :set_const_at,                :stack => [2, 1],     :args => [:literal],                       :control_flow => :next
    opcode 82, :set_ivar,                    :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 83, :set_local,                   :stack => [1, 1],     :args => [:local],                         :control_flow => :next
    opcode 84, :set_local_depth,             :stack => [1, 1],     :args => [:depth, :index],                 :control_flow => :next
    opcode 85, :set_stack_local,             :stack => [1, 1],     :args => [:which],                         :control_flow => :next
    opcode 86, :setup_unwind,                :stack => [0, 0],     :args => [:ip, :type],                     :control_flow => :handler
    opcode 87, :shift_array,                 :stack => [1, 2],     :args => [],                               :control_flow => :next
    opcode 88, :store_my_field,              :stack => [1, 1],     :args => [:index],                         :control_flow => :next
    opcode 89, :string_append,               :stack => [2, 1],     :args => [],                               :control_flow => :next
    opcode 90, :string_build,                :stack => [[0,1], 1], :args => [:count],                         :control_flow => :next
    opcode 91, :string_dup,                  :stack => [1, 1],     :args => [],                               :control_flow => :next
    opcode 92, :swap,                        :stack => [2, 2],     :args => [],                               :control_flow => :next
    opcode 93, :unwind,                      :stack => [0, 0],     :args => [:ip],                            :control_flow => :next
    opcode 94, :yield_debugger,              :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 95, :yield_splat,                 :stack => [[1,1], 1], :args => [:count],                         :control_flow => :yield
    opcode 96, :yield_stack,                 :stack => [[0,1], 1], :args => [:count],                         :control_flow => :yield
    opcode 97, :zsuper,                      :stack => [1, 1],     :args => [:literal],                       :control_flow => :next
    opcode 98, :push_file,                   :stack => [0, 1],     :args => [],                               :control_flow => :next

    # Parsing Expression Grammar instructions
    opcode 99, :p_any,                       :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 100, :p_call,                     :stack => [0, 0],     :args => [:ip],                            :control_flow => :next
    opcode 101, :p_char,                     :stack => [0, 0],     :args => [:chr],                           :control_flow => :next
    opcode 102, :p_char_set,                 :stack => [0, 0],     :args => [:chr_set],                       :control_flow => :next
    opcode 103, :p_choice,                   :stack => [0, 0],     :args => [:ip, :r0],                       :control_flow => :next
    opcode 104, :p_commit,                   :stack => [0, 0],     :args => [:ip],                            :control_flow => :next
    opcode 105, :p_commit_back,              :stack => [0, 0],     :args => [:ip],                            :control_flow => :next
    opcode 106, :p_commit_partial,           :stack => [0, 0],     :args => [:ip],                            :control_flow => :next
    opcode 107, :p_end,                      :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 108, :p_fail,                     :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 109, :p_fail_twice,               :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 110, :p_jump,                     :stack => [0, 0],     :args => [:ip],                            :control_flow => :next
    opcode 111, :p_return,                   :stack => [0, 0],     :args => [],                               :control_flow => :next
    opcode 112, :p_span,                     :stack => [0, 0],     :args => [:chr_set],                       :control_flow => :next
    opcode 113, :p_test_any,                 :stack => [0, 0],     :args => [:n, :ip],                        :control_flow => :next
    opcode 114, :p_test_char,                :stack => [0, 0],     :args => [:chr, :ip],                      :control_flow => :next
    opcode 115, :p_test_char_set,            :stack => [0, 0],     :args => [:chr_set, :ip],                  :control_flow => :next
    opcode 116, :p_init,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next

    # Instrumentation instructions
    opcode 117, :m_bytes,                    :stack => [0, 0],     :args => [:value, :r0],                    :control_flow => :next
    opcode 118, :m_counter,                  :stack => [0, 0],     :args => [:value],                         :control_flow => :next
    opcode 119, :m_sum,                      :stack => [0, 0],     :args => [:value, :r0],                    :control_flow => :next
    opcode 120, :m_value,                    :stack => [0, 0],     :args => [:value, :r0],                    :control_flow => :next
    opcode 121, :m_time_stamp,               :stack => [0, 0],     :args => [:value, :flag],                  :control_flow => :next
    opcode 122, :m_timer_start,              :stack => [0, 0],     :args => [:timer],                         :control_flow => :next
    opcode 123, :m_timer_stop,               :stack => [0, 0],     :args => [:ip, :flag],                     :control_flow => :next

    # Branching instructions
    opcode 124, :b_if_serial,                :stack => [0, 0],     :args => [:r0, :r1, :ip],                 :control_flow => :branch
    opcode 125, :b_if_int,                   :stack => [0, 0],     :args => [:r0, :r1, :ip],                    :control_flow => :branch
    opcode 126, :b_if,                       :stack => [0, 0],     :args => [:r0, :ip],                    :control_flow => :branch

    # Register movement instructions
    opcode 127, :r_load_local,               :stack => [0, 0],     :args => [:r0, :local],                    :control_flow => :next
    opcode 128, :r_store_local,              :stack => [0, 0],     :args => [:r0, :local],                    :control_flow => :next
    opcode 129, :r_load_local_depth,         :stack => [0, 0],     :args => [:r0, :local, :depth],            :control_flow => :next
    opcode 130, :r_store_local_depth,        :stack => [0, 0],     :args => [:r0, :local, :depth],            :control_flow => :next
    opcode 131, :r_load_stack,               :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 132, :r_store_stack,              :stack => [0, 1],     :args => [:r0],                            :control_flow => :next
    opcode 133, :r_load_literal,             :stack => [0, 0],     :args => [:r0, :literal],                  :control_flow => :next
    opcode 134, :r_load_int,                 :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 135, :r_store_int,                :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 136, :r_copy,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next

    # Native signed integer instructions
    opcode 137, :n_iadd,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 138, :n_isub,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 139, :n_imul,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 140, :n_idiv,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 141, :n_iadd_o,                   :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 142, :n_isub_o,                   :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 143, :n_imul_o,                   :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 144, :n_idiv_o,                   :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 145, :n_ieq,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 146, :n_ine,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 147, :n_ilt,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 148, :n_ile,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 149, :n_igt,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 150, :n_ige,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 151, :n_ipopcnt,                  :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next

    # More instrumentation instructions
    opcode 152, :m_log,                      :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 153, :m_debug,                    :stack => [0, 0],     :args => [],                               :control_flow => :next

    # Code execution instructions
    opcode 154, :e_cache_method_p,           :stack => [0, 0],     :args => [:r0, :r1, :ip],                  :control_flow => :next
    opcode 155, :e_cache_function_p,         :stack => [0, 0],     :args => [:r0, :r1, :ip],                  :control_flow => :next
    opcode 156, :e_cache_value_p,            :stack => [0, 0],     :args => [:r0, :ip],                       :control_flow => :next
    opcode 157, :e_cache_method,             :stack => [0, 0],     :args => [:r0, :ip],                       :control_flow => :next
    opcode 158, :e_cache_function,           :stack => [0, 0],     :args => [:r0, :ip],                       :control_flow => :next
    opcode 159, :e_cache_value,              :stack => [0, 0],     :args => [:r0, :ip],                       :control_flow => :next
    opcode 160, :e_resolve_method,           :stack => [0, 0],     :args => [:r0, :r1, :ip],                  :control_flow => :next
    opcode 161, :e_resolve_receiver_method,  :stack => [0, 0],     :args => [:r0, :r1, :ip],                  :control_flow => :next
    opcode 162, :e_resolve_function,         :stack => [0, 0],     :args => [:r0, :r1, :ip],                  :control_flow => :next
    opcode 163, :e_resolve_scope_constant,   :stack => [0, 0],     :args => [:r0, :ip],                       :control_flow => :next
    opcode 164, :e_resolve_path_constant,    :stack => [0, 0],     :args => [:r0, :ip],                       :control_flow => :next
    opcode 165, :e_signature,                :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 166, :e_check_signature,          :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 167, :e_invoke_method,            :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 168, :e_invoke_function,          :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next

    # Assertion instructions
    opcode 169, :a_instance,                 :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 170, :a_kind,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 171, :a_method,                   :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 172, :a_receiver_method,          :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 173, :a_type,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 174, :a_function,                 :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 175, :a_equal,                    :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 176, :a_not_equal,                :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 177, :a_less,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 178, :a_less_equal,               :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 179, :a_greater,                  :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 180, :a_greater_equal,            :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 181, :goto_past,                  :stack => [0, 0],     :args => [:location],                      :control_flow => :branch
    opcode 182, :goto_future,                :stack => [0, 0],     :args => [:location],                      :control_flow => :branch
    opcode 183, :r_load_0,                   :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 184, :r_load_1,                   :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 185, :r_load_nil,                 :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 186, :r_load_false,               :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 187, :r_load_true,                :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 188, :call_send,                  :stack => [[1,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 189, :call,                       :stack => [[1,2], 1], :args => [:literal, :count],               :control_flow => :send
    opcode 190, :call_0,                     :stack => [0, 1],     :args => [:literal],                       :control_flow => :send
    opcode 191, :push_tagged_nil,            :stack => [0, 1],     :args => [:nil],                           :control_flow => :next
    opcode 192, :r_load_bool,                :stack => [0, 0],     :args => [:r0, :r1],                            :control_flow => :next
    opcode 193, :r_load_m_binops,            :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 194, :r_load_f_binops,            :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 195, :r_ret,                      :stack => [0, 0],     :args => [:r0],                            :control_flow => :return
    opcode 196, :n_imod,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 197, :n_ineg,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 198, :n_inot,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 199, :n_iand,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 200, :n_ior,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 201, :n_ixor,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 202, :n_ishl,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 203, :n_ishr,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 204, :n_imod_o,                   :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 205, :n_ineg_o,                   :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 206, :n_ishl_o,                   :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 207, :n_ishr_o,                   :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next

    opcode 208, :n_promote,                  :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next

    # Native signed extended integer instructions
    opcode 209, :n_eadd,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 210, :n_esub,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 211, :n_emul,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 212, :n_ediv,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 213, :n_emod,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 214, :n_eneg,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 215, :n_enot,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 216, :n_eand,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 217, :n_eor,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 218, :n_exor,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 219, :n_eshl,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 220, :n_eshr,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 221, :n_epopcnt,                  :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 222, :n_eeq,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 223, :n_ene,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 224, :n_elt,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 225, :n_ele,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 226, :n_egt,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 227, :n_ege,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next

    # Native signed double floating point instructions
    opcode 228, :n_dadd,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 229, :n_dsub,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 230, :n_dmul,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 231, :n_ddiv,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 232, :n_dmod,                     :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 233, :n_dneg,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 234, :n_deq,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 235, :n_dne,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 236, :n_dlt,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 237, :n_dle,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 238, :n_dgt,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next
    opcode 239, :n_dge,                      :stack => [0, 0],     :args => [:r0, :r1, :r2],                  :control_flow => :next

    opcode 240, :r_load_float,               :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 241, :r_store_float,              :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next

    opcode 242, :b_if_eint,                  :stack => [0, 0],     :args => [:r0, :r1, :ip],                    :control_flow => :branch
    opcode 243, :b_if_float,                 :stack => [0, 0],     :args => [:r0, :r1, :ip],                    :control_flow => :branch

    opcode 244, :r_load_2,                   :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
    opcode 245, :r_load_neg1,                :stack => [0, 0],     :args => [:r0],                            :control_flow => :next

    opcode 246, :n_iinc,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 247, :n_idec,                     :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next

    opcode 248, :n_isize,                    :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 249, :n_esize,                    :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 250, :n_ibits,                    :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next
    opcode 251, :n_ebits,                    :stack => [0, 0],     :args => [:r0, :r1],                       :control_flow => :next

    opcode 252, :r_load_self,                :stack => [0, 0],     :args => [:r0],                            :control_flow => :next
  end
end
