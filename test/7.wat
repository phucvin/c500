(module
  (memory 3)
  (global $__stack_pointer (mut i32) (i32.const 196608))
  (func $__dup_i32 (param i32) (result i32 i32)
    (local.get 0) (local.get 0))
  (func $__swap_i32 (param i32) (param i32) (result i32 i32)
    (local.get 1) (local.get 0))
  (func $main
    (result i32)
    global.get $__stack_pointer ;; prelude -- adjust stack pointer
    i32.const 4
    i32.sub
    global.set $__stack_pointer
    global.get $__stack_pointer ;; load x
    i32.const 0
    i32.add
    call $__dup_i32
    i32.const 1
    i32.store
    i32.load
    drop ;; discard statement expr result
    block ;; for
      global.get $__stack_pointer ;; load x
      i32.const 0
      i32.add
      call $__dup_i32
      i32.const 10
      i32.store
      i32.load
      drop ;; discard for initializer
      loop
        global.get $__stack_pointer ;; load x
        i32.const 0
        i32.add
        i32.load
        i32.eqz ;; for test
        br_if 1 ;; exit loop
        ;; for body
        ;; for advancement
        global.get $__stack_pointer ;; load x
        i32.const 0
        i32.add
        call $__dup_i32
        global.get $__stack_pointer ;; load x
        i32.const 0
        i32.add
        i32.load
        i32.const 1
        i32.sub
        i32.store
        i32.load
        br 0 ;; repeat loop
      end
    end
    block ;; if statement
      block
        global.get $__stack_pointer ;; load x
        i32.const 0
        i32.add
        i32.load
        i32.eqz
        br_if 0 ;; jump to else
        i32.const 1
        global.get $__stack_pointer ;; fixup stack pointer before return
        i32.const 4
        i32.add
        global.set $__stack_pointer
        return
        br 1 ;; exit if
      end
    end
    global.get $__stack_pointer ;; load x
    i32.const 0
    i32.add
    call $__dup_i32
    i32.const 10
    i32.store
    i32.load
    drop ;; discard statement expr result
    block ;; for
      loop
        global.get $__stack_pointer ;; load x
        i32.const 0
        i32.add
        i32.load
        i32.eqz ;; for test
        br_if 1 ;; exit loop
        ;; for body
        global.get $__stack_pointer ;; load x
        i32.const 0
        i32.add
        call $__dup_i32
        global.get $__stack_pointer ;; load x
        i32.const 0
        i32.add
        i32.load
        i32.const 1
        i32.sub
        i32.store
        i32.load
        drop ;; discard statement expr result
        br 0 ;; repeat loop
      end
    end
    global.get $__stack_pointer ;; load x
    i32.const 0
    i32.add
    i32.load
    global.get $__stack_pointer ;; fixup stack pointer before return
    i32.const 4
    i32.add
    global.set $__stack_pointer
    return
    unreachable
  )
  (export "main" (func $main))
  (data $.rodata (i32.const 65536) "")
)
