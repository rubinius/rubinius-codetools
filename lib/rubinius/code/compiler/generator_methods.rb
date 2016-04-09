# *** This file is generated by InstructionParser ***

module CodeTools
  module GeneratorMethods
      def noop
        @stream << 0
        @ip += 1
        @current_block.add_stack(0, 0)
        @instruction = 0
      end

      def push_nil
        @stream << 1
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 1
      end

      def push_true
        @stream << 2
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 2
      end

      def push_false
        @stream << 3
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 3
      end

      def push_int(arg1)
        @stream << 4 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 4
      end

      def push_self
        @stream << 5
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 5
      end

      def push_memo(arg1)
        arg1 = find_literal(arg1)
        @stream << 6 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 6
      end

      def emit_push_literal(arg1)
        @stream << 7 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 7
      end

      def goto(arg1)
        location = @ip + 1
        @stream << 8 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(0, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        @current_block = new_basic_block
        @instruction = 8
      end

      def goto_if_false(arg1)
        location = @ip + 1
        @stream << 9 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(1, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 9
      end

      def goto_if_true(arg1)
        location = @ip + 1
        @stream << 10 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(1, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 10
      end

      def goto_if_nil(arg1)
        location = @ip + 1
        @stream << 11 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(1, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 11
      end

      def goto_if_not_nil(arg1)
        location = @ip + 1
        @stream << 12 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(1, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 12
      end

      def goto_if_undefined(arg1)
        location = @ip + 1
        @stream << 13 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(1, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 13
      end

      def goto_if_not_undefined(arg1)
        location = @ip + 1
        @stream << 14 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(1, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 14
      end

      def goto_if_equal(arg1)
        location = @ip + 1
        @stream << 15 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(2, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 15
      end

      def goto_if_not_equal(arg1)
        location = @ip + 1
        @stream << 16 << arg1
        @ip += 2
        arg1.used_at location
        @current_block.add_stack(2, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 16
      end

      def ret
        @stream << 17
        @ip += 1
        @current_block.add_stack(1, 1)
        @current_block.close true
        @current_block = new_basic_block
        @instruction = 17
      end

      def swap
        @stream << 18
        @ip += 1
        @current_block.add_stack(2, 2)
        @instruction = 18
      end

      def dup
        @stream << 19
        @ip += 1
        @current_block.add_stack(1, 2)
        @instruction = 19
      end

      def dup_many(arg1)
        arg1 = Integer(arg1)
        @stream << 20 << arg1
        @ip += 2
        @current_block.add_stack(arg1, (arg1 * 2))
        @instruction = 20
      end

      def pop
        @stream << 21
        @ip += 1
        @current_block.add_stack(1, 0)
        @instruction = 21
      end

      def pop_many(arg1)
        arg1 = Integer(arg1)
        @stream << 22 << arg1
        @ip += 2
        @current_block.add_stack(arg1, 0)
        @instruction = 22
      end

      def rotate(arg1)
        arg1 = Integer(arg1)
        @stream << 23 << arg1
        @ip += 2
        @current_block.add_stack(arg1, (arg1 * 1))
        @instruction = 23
      end

      def move_down(arg1)
        @stream << 24 << arg1
        @ip += 2
        @current_block.add_stack(arg1, (arg1 * 1))
        @instruction = 24
      end

      def set_local(arg1)
        @stream << 25 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 25
      end

      def push_local(arg1)
        @stream << 26 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 26
      end

      def push_local_depth(arg1, arg2)
        @stream << 27 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(0, 1)
        @instruction = 27
      end

      def set_local_depth(arg1, arg2)
        @stream << 28 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(1, 1)
        @instruction = 28
      end

      def passed_arg(arg1)
        @stream << 29 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 29
      end

      def push_current_exception
        @stream << 30
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 30
      end

      def clear_exception
        @stream << 31
        @ip += 1
        @current_block.add_stack(0, 0)
        @instruction = 31
      end

      def push_exception_state
        @stream << 32
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 32
      end

      def restore_exception_state
        @stream << 33
        @ip += 1
        @current_block.add_stack(1, 0)
        @instruction = 33
      end

      def raise_exc
        @stream << 34
        @ip += 1
        @current_block.add_stack(1, 0)
        @current_block.close false
        @current_block = new_basic_block
        @instruction = 34
      end

      def setup_unwind(arg1, arg2)
        location = @ip + 1
        @stream << 35 << arg1 << arg2
        @ip += 3
        arg1.used_at location
        @current_block.add_stack(0, 0)
        @current_block.left = arg1.basic_block
        @current_block.close
        block = new_basic_block
        @current_block.right = block
        @current_block = block
        @instruction = 35
      end

      def pop_unwind
        @stream << 36
        @ip += 1
        @current_block.add_stack(0, 0)
        @instruction = 36
      end

      def raise_return
        @stream << 37
        @ip += 1
        @current_block.add_stack(1, 1)
        @current_block.close true
        @current_block = new_basic_block
        @instruction = 37
      end

      def ensure_return
        @stream << 38
        @ip += 1
        @current_block.add_stack(1, 1)
        @current_block.close true
        @current_block = new_basic_block
        @instruction = 38
      end

      def raise_break
        @stream << 39
        @ip += 1
        @current_block.add_stack(1, 1)
        @current_block.close false
        @current_block = new_basic_block
        @instruction = 39
      end

      def reraise
        @stream << 40
        @ip += 1
        @current_block.add_stack(0, 0)
        @current_block.close false
        @current_block = new_basic_block
        @instruction = 40
      end

      def make_array(arg1)
        arg1 = Integer(arg1)
        @stream << 41 << arg1
        @ip += 2
        @current_block.add_stack(arg1, 1)
        @instruction = 41
      end

      def cast_array
        unless @instruction == 42 or @instruction == 41
          @stream << 42
          @ip += 1
        end
        @instruction = 42
      end

      def shift_array
        @stream << 43
        @ip += 1
        @current_block.add_stack(1, 2)
        @instruction = 43
      end

      def set_ivar(arg1)
        arg1 = find_literal(arg1)
        @stream << 44 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 44
      end

      def push_ivar(arg1)
        arg1 = find_literal(arg1)
        @stream << 45 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 45
      end

      def set_const(arg1)
        arg1 = find_literal(arg1)
        @stream << 46 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 46
      end

      def set_const_at(arg1)
        arg1 = find_literal(arg1)
        @stream << 47 << arg1
        @ip += 2
        @current_block.add_stack(2, 1)
        @instruction = 47
      end

      def push_cpath_top
        @stream << 48
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 48
      end

      def push_const(arg1)
        arg1 = find_literal(arg1)
        @stream << 49 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 49
      end

      def find_const(arg1)
        arg1 = find_literal(arg1)
        @stream << 50 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 50
      end

      def set_call_flags(arg1)
        @stream << 51 << arg1
        @ip += 2
        @current_block.add_stack(0, 0)
        @instruction = 51
      end

      def allow_private
        @stream << 52
        @ip += 1
        @current_block.add_stack(0, 0)
        @instruction = 52
      end

      def send_vcall(arg1)
        arg1 = find_literal(arg1)
        @stream << 53 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 53
      end

      def send_method(arg1)
        arg1 = find_literal(arg1)
        @stream << 54 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 54
      end

      def send_stack(arg1, arg2)
        arg1 = find_literal(arg1)
        arg2 = Integer(arg2)
        @stream << 55 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(arg2+1, 1)
        @instruction = 55
      end

      def send_stack_with_block(arg1, arg2)
        arg1 = find_literal(arg1)
        arg2 = Integer(arg2)
        @stream << 56 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(arg2+2, 1)
        @instruction = 56
      end

      def send_stack_with_splat(arg1, arg2)
        arg1 = find_literal(arg1)
        arg2 = Integer(arg2)
        @stream << 57 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(arg2+3, 1)
        @instruction = 57
      end

      def send_super_stack_with_block(arg1, arg2)
        arg1 = find_literal(arg1)
        arg2 = Integer(arg2)
        @stream << 58 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(arg2+1, 1)
        @instruction = 58
      end

      def send_super_stack_with_splat(arg1, arg2)
        arg1 = find_literal(arg1)
        arg2 = Integer(arg2)
        @stream << 59 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(arg2+2, 1)
        @instruction = 59
      end

      def push_block
        @stream << 60
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 60
      end

      def passed_blockarg(arg1)
        arg1 = Integer(arg1)
        @stream << 61 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 61
      end

      def create_block(arg1)
        arg1 = add_generator(arg1)
        @stream << 62 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 62
      end

      def cast_for_single_block_arg
        @stream << 63
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 63
      end

      def cast_for_multi_block_arg
        @stream << 64
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 64
      end

      def cast_for_splat_block_arg
        @stream << 65
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 65
      end

      def yield_stack(arg1)
        arg1 = Integer(arg1)
        @stream << 66 << arg1
        @ip += 2
        @current_block.add_stack(arg1, 1)
        @instruction = 66
      end

      def yield_splat(arg1)
        arg1 = Integer(arg1)
        @stream << 67 << arg1
        @ip += 2
        @current_block.add_stack(arg1+1, 1)
        @instruction = 67
      end

      def string_append
        @stream << 68
        @ip += 1
        @current_block.add_stack(2, 1)
        @instruction = 68
      end

      def string_build(arg1)
        arg1 = Integer(arg1)
        @stream << 69 << arg1
        @ip += 2
        @current_block.add_stack(arg1, 1)
        @instruction = 69
      end

      def string_dup
        @stream << 70
        @ip += 1
        @current_block.add_stack(1, 1)
        @instruction = 70
      end

      def push_scope
        @stream << 71
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 71
      end

      def add_scope
        @stream << 72
        @ip += 1
        @current_block.add_stack(1, 0)
        @instruction = 72
      end

      def push_variables
        @stream << 73
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 73
      end

      def check_interrupts
        @stream << 74
        @ip += 1
        @current_block.add_stack(0, 0)
        @instruction = 74
      end

      def yield_debugger
        @stream << 75
        @ip += 1
        @current_block.add_stack(0, 0)
        @instruction = 75
      end

      def check_serial(arg1, arg2)
        arg1 = find_literal(arg1)
        @stream << 76 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(1, 1)
        @instruction = 76
      end

      def check_serial_private(arg1, arg2)
        arg1 = find_literal(arg1)
        @stream << 77 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(1, 1)
        @instruction = 77
      end

      def push_my_field(arg1)
        @stream << 78 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 78
      end

      def store_my_field(arg1)
        @stream << 79 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 79
      end

      def kind_of
        @stream << 80
        @ip += 1
        @current_block.add_stack(2, 1)
        @instruction = 80
      end

      def instance_of
        @stream << 81
        @ip += 1
        @current_block.add_stack(2, 1)
        @instruction = 81
      end

      def push_my_offset(arg1)
        @stream << 82 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 82
      end

      def zsuper(arg1)
        arg1 = find_literal(arg1)
        @stream << 83 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 83
      end

      def push_block_arg
        @stream << 84
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 84
      end

      def push_undef
        @stream << 85
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 85
      end

      def push_stack_local(arg1)
        @stream << 86 << arg1
        @ip += 2
        @current_block.add_stack(0, 1)
        @instruction = 86
      end

      def set_stack_local(arg1)
        @stream << 87 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 87
      end

      def push_has_block
        @stream << 88
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 88
      end

      def push_proc
        @stream << 89
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 89
      end

      def check_frozen
        @stream << 90
        @ip += 1
        @current_block.add_stack(1, 1)
        @instruction = 90
      end

      def cast_multi_value
        @stream << 91
        @ip += 1
        @current_block.add_stack(1, 1)
        @instruction = 91
      end

      def invoke_primitive(arg1, arg2)
        arg1 = find_literal(arg1)
        arg2 = Integer(arg2)
        @stream << 92 << arg1 << arg2
        @ip += 3
        @current_block.add_stack(arg2, 1)
        @instruction = 92
      end

      def push_rubinius
        @stream << 93
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 93
      end

      def object_to_s(arg1)
        arg1 = find_literal(arg1)
        @stream << 94 << arg1
        @ip += 2
        @current_block.add_stack(1, 1)
        @instruction = 94
      end

      def push_type
        @stream << 95
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 95
      end

      def push_mirror
        @stream << 96
        @ip += 1
        @current_block.add_stack(0, 1)
        @instruction = 96
      end

  end
end
