(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "memcpy" (func $memcpy (;0;) (type 1)))
  (func $__wasm_call_ctors (;1;) (type 2))
  (func $hello-world (;2;) (type 3) (result i32)
    call $_ZN11wit_bindgen2rt14run_ctors_once17h75299ea2082767b2E
    i32.const 0
  )
  (func $__rust_alloc (;3;) (type 0) (param i32 i32) (result i32)
    i32.const 1048576
    local.get 1
    local.get 0
    call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hf4928cf098e8d7f8E
  )
  (func $__rust_realloc (;4;) (type 4) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 1048576
      local.get 2
      local.get 3
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hf4928cf098e8d7f8E
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 0
      local.get 1
      local.get 3
      local.get 1
      local.get 3
      i32.lt_u
      select
      call $memcpy
      drop
      i32.const 1048576
      local.get 0
      local.get 2
      local.get 1
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hae3364a06d144d6cE
    end
    local.get 4
  )
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h643d0d96a5760292E (;5;) (type 5) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.load
    local.tee 5
    i32.load
    i32.store offset=12
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 2
          i32.const 2
          i32.add
          local.tee 1
          local.get 1
          i32.mul
          local.tee 1
          i32.const 2048
          local.get 1
          i32.const 2048
          i32.gt_u
          select
          local.tee 2
          i32.const 4
          local.get 4
          i32.const 12
          i32.add
          i32.const 1048576
          i32.const 1
          call $_ZN9wee_alloc15alloc_first_fit17h000e26655bd9ca52E
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 4
          i32.load offset=12
          i32.store
          local.get 2
          i32.const 2
          i32.shl
          local.set 6
          br 1 (;@2;)
        end
        block ;; label = @3
          block ;; label = @4
            local.get 2
            i32.const 2
            i32.shl
            local.tee 6
            i32.const 16416
            local.get 6
            i32.const 16416
            i32.gt_u
            select
            i32.const 65543
            i32.add
            local.tee 7
            i32.const 16
            i32.shr_u
            memory.grow
            local.tee 1
            i32.const -1
            i32.ne
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            i32.load offset=12
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.const 16
          i32.shl
          local.tee 1
          i32.const 0
          i32.store offset=4
          local.get 1
          local.get 4
          i32.load offset=12
          i32.store offset=8
          local.get 1
          local.get 1
          local.get 7
          i32.const -65536
          i32.and
          i32.add
          i32.const 2
          i32.or
          i32.store
          local.get 4
          local.get 1
          i32.store offset=12
          local.get 2
          i32.const 4
          local.get 4
          i32.const 12
          i32.add
          i32.const 1048576
          i32.const 1
          call $_ZN9wee_alloc15alloc_first_fit17h000e26655bd9ca52E
          local.set 1
          local.get 5
          local.get 4
          i32.load offset=12
          i32.store
          local.get 1
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 2
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i64.const 0
      i64.store offset=4 align=4
      local.get 1
      local.get 1
      local.get 6
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17hee2c0e3c6db6663eE (;6;) (type 0) (param i32 i32) (result i32)
    i32.const 512
  )
  (func $_ZN9wee_alloc15alloc_first_fit17h000e26655bd9ca52E (;7;) (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      local.get 2
      i32.load
      local.tee 5
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 1
    i32.const -1
    i32.add
    local.set 6
    i32.const 0
    local.get 1
    i32.sub
    local.set 7
    local.get 0
    i32.const 2
    i32.shl
    local.set 8
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            loop ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  local.get 5
                  i32.load offset=8
                  local.tee 1
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 8
                  i32.add
                  local.set 9
                  br 1 (;@6;)
                end
                loop ;; label = @7
                  local.get 5
                  local.get 1
                  i32.const -2
                  i32.and
                  i32.store offset=8
                  block ;; label = @8
                    block ;; label = @9
                      local.get 5
                      i32.load offset=4
                      local.tee 9
                      i32.const -4
                      i32.and
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 10
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.get 1
                    local.get 1
                    i32.load8_u
                    i32.const 1
                    i32.and
                    select
                    local.set 10
                  end
                  block ;; label = @8
                    local.get 5
                    i32.load
                    local.tee 11
                    i32.const -4
                    i32.and
                    local.tee 12
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const 2
                    i32.and
                    br_if 0 (;@8;)
                    local.get 12
                    local.get 12
                    i32.load offset=4
                    i32.const 3
                    i32.and
                    local.get 1
                    i32.or
                    i32.store offset=4
                    local.get 5
                    i32.load offset=4
                    local.tee 9
                    i32.const -4
                    i32.and
                    local.set 1
                    local.get 5
                    i32.load
                    local.set 11
                  end
                  block ;; label = @8
                    local.get 1
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 1
                    i32.load
                    i32.const 3
                    i32.and
                    local.get 11
                    i32.const -4
                    i32.and
                    i32.or
                    i32.store
                    local.get 5
                    i32.load offset=4
                    local.set 9
                    local.get 5
                    i32.load
                    local.set 11
                  end
                  local.get 5
                  local.get 9
                  i32.const 3
                  i32.and
                  i32.store offset=4
                  local.get 5
                  local.get 11
                  i32.const 3
                  i32.and
                  i32.store
                  block ;; label = @8
                    local.get 11
                    i32.const 2
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 10
                    local.get 10
                    i32.load
                    i32.const 2
                    i32.or
                    i32.store
                  end
                  local.get 2
                  local.get 10
                  i32.store
                  local.get 10
                  local.set 5
                  local.get 10
                  i32.load offset=8
                  local.tee 1
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                end
                local.get 10
                i32.const 8
                i32.add
                local.set 9
                local.get 10
                local.set 5
              end
              block ;; label = @6
                local.get 5
                i32.load
                i32.const -4
                i32.and
                local.tee 10
                local.get 5
                i32.const 8
                i32.add
                local.tee 11
                i32.sub
                local.get 8
                i32.lt_u
                br_if 0 (;@6;)
                local.get 11
                local.get 3
                local.get 0
                local.get 4
                call_indirect (type 0)
                i32.const 2
                i32.shl
                i32.add
                i32.const 8
                i32.add
                local.get 10
                local.get 8
                i32.sub
                local.get 7
                i32.and
                local.tee 1
                i32.le_u
                br_if 2 (;@4;)
                local.get 6
                local.get 11
                i32.and
                i32.eqz
                br_if 3 (;@3;)
                local.get 9
                i32.load
                local.set 1
              end
              local.get 2
              local.get 1
              i32.store
              local.get 1
              local.set 5
              local.get 1
              br_if 0 (;@5;)
            end
            i32.const 0
            return
          end
          i32.const 0
          local.set 11
          local.get 1
          i32.const 0
          i32.store
          local.get 1
          i32.const -8
          i32.add
          local.tee 1
          i64.const 0
          i64.store align=4
          local.get 1
          local.get 5
          i32.load
          i32.const -4
          i32.and
          i32.store
          block ;; label = @4
            local.get 5
            i32.load
            local.tee 9
            i32.const -4
            i32.and
            local.tee 10
            i32.eqz
            br_if 0 (;@4;)
            local.get 9
            i32.const 2
            i32.and
            br_if 0 (;@4;)
            local.get 10
            local.get 10
            i32.load offset=4
            i32.const 3
            i32.and
            local.get 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.load offset=4
            i32.const 3
            i32.and
            local.set 11
          end
          local.get 1
          local.get 11
          local.get 5
          i32.or
          i32.store offset=4
          local.get 5
          local.get 5
          i32.load offset=8
          i32.const -2
          i32.and
          i32.store offset=8
          local.get 5
          local.get 5
          i32.load
          local.tee 11
          i32.const 3
          i32.and
          local.get 1
          i32.or
          local.tee 10
          i32.store
          local.get 11
          i32.const 2
          i32.and
          br_if 1 (;@2;)
          local.get 1
          i32.load
          local.set 11
          br 2 (;@1;)
        end
        local.get 2
        local.get 5
        i32.load offset=8
        i32.const -4
        i32.and
        i32.store
        local.get 5
        i32.load
        local.set 11
        local.get 5
        local.set 1
        br 1 (;@1;)
      end
      local.get 5
      local.get 10
      i32.const -3
      i32.and
      i32.store
      local.get 1
      i32.load
      i32.const 2
      i32.or
      local.set 11
    end
    local.get 1
    local.get 11
    i32.const 1
    i32.or
    i32.store
    local.get 1
    i32.const 8
    i32.add
  )
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h78179bcfefba2a0bE (;8;) (type 0) (param i32 i32) (result i32)
    local.get 1
  )
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hf4928cf098e8d7f8E (;9;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        local.get 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 3
      i32.add
      local.tee 4
      i32.const 2
      i32.shr_u
      local.set 5
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            i32.const -1
            local.get 1
            i32.const 4
            i32.ne
            local.get 1
            i32.const 4
            i32.lt_u
            select
            local.tee 2
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 255
            i32.and
            br_if 1 (;@3;)
          end
          local.get 5
          i32.const -1
          i32.add
          local.tee 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 0
        i32.load offset=1024
        i32.store offset=12
        block ;; label = @3
          local.get 5
          local.get 1
          local.get 3
          i32.const 12
          i32.add
          i32.const 1048576
          i32.const 1
          call $_ZN9wee_alloc15alloc_first_fit17h000e26655bd9ca52E
          local.tee 2
          br_if 0 (;@3;)
          block ;; label = @4
            local.get 4
            i32.const -4
            i32.and
            local.tee 2
            local.get 1
            i32.const 3
            i32.shl
            i32.const 16384
            i32.add
            local.tee 4
            local.get 2
            local.get 4
            i32.gt_u
            select
            i32.const 65543
            i32.add
            local.tee 4
            i32.const 16
            i32.shr_u
            memory.grow
            local.tee 2
            i32.const -1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 2
          i32.const 16
          i32.shl
          local.tee 2
          i32.const 0
          i32.store offset=4
          local.get 2
          local.get 3
          i32.load offset=12
          i32.store offset=8
          local.get 2
          local.get 2
          local.get 4
          i32.const -65536
          i32.and
          i32.add
          i32.const 2
          i32.or
          i32.store
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 5
          local.get 1
          local.get 3
          i32.const 12
          i32.add
          i32.const 1048576
          i32.const 1
          call $_ZN9wee_alloc15alloc_first_fit17h000e26655bd9ca52E
          local.set 2
        end
        local.get 0
        local.get 3
        i32.load offset=12
        i32.store offset=1024
        br 1 (;@1;)
      end
      local.get 3
      local.get 0
      i32.const 1024
      i32.add
      i32.store offset=8
      local.get 3
      local.get 0
      local.get 2
      i32.const 2
      i32.shl
      i32.add
      local.tee 0
      i32.load
      i32.store offset=12
      block ;; label = @2
        local.get 5
        local.get 1
        local.get 3
        i32.const 12
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i32.const 2
        call $_ZN9wee_alloc15alloc_first_fit17h000e26655bd9ca52E
        local.tee 2
        br_if 0 (;@2;)
        local.get 3
        local.get 3
        i32.const 8
        i32.add
        local.get 5
        local.get 3
        call $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h643d0d96a5760292E
        i32.const 0
        local.set 2
        local.get 3
        i32.load
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        local.tee 2
        local.get 3
        i32.load offset=12
        i32.store offset=8
        local.get 3
        local.get 2
        i32.store offset=12
        local.get 5
        local.get 1
        local.get 3
        i32.const 12
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i32.const 2
        call $_ZN9wee_alloc15alloc_first_fit17h000e26655bd9ca52E
        local.set 2
      end
      local.get 0
      local.get 3
      i32.load offset=12
      i32.store
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
  )
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hae3364a06d144d6cE (;10;) (type 5) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              i32.const -1
              local.get 2
              i32.const 4
              i32.ne
              local.get 2
              i32.const 4
              i32.lt_u
              select
              local.tee 2
              i32.const -1
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.const 255
              i32.and
              br_if 1 (;@4;)
            end
            local.get 3
            i32.const 3
            i32.add
            i32.const 2
            i32.shr_u
            i32.const -1
            i32.add
            local.tee 3
            i32.const 255
            i32.le_u
            br_if 1 (;@3;)
          end
          local.get 0
          i32.load offset=1024
          local.set 4
          local.get 1
          i32.const 0
          i32.store
          local.get 1
          i32.const -8
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 2
          i32.const -2
          i32.and
          local.tee 5
          i32.store
          block ;; label = @4
            block ;; label = @5
              local.get 3
              i32.const 4
              i32.add
              local.tee 6
              i32.load
              i32.const -4
              i32.and
              local.tee 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              i32.load
              local.tee 8
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    local.get 2
                    i32.const -4
                    i32.and
                    local.tee 9
                    br_if 0 (;@8;)
                    local.get 7
                    local.set 1
                    br 1 (;@7;)
                  end
                  local.get 7
                  local.set 1
                  local.get 2
                  i32.const 2
                  i32.and
                  br_if 0 (;@7;)
                  local.get 9
                  local.get 9
                  i32.load offset=4
                  i32.const 3
                  i32.and
                  local.get 7
                  i32.or
                  i32.store offset=4
                  local.get 3
                  i32.load
                  local.set 5
                  local.get 6
                  i32.load
                  local.tee 2
                  i32.const -4
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  i32.load
                  local.set 8
                end
                local.get 1
                local.get 5
                i32.const -4
                i32.and
                local.get 8
                i32.const 3
                i32.and
                i32.or
                i32.store
                local.get 6
                i32.load
                local.set 2
                local.get 3
                i32.load
                local.set 5
              end
              local.get 6
              local.get 2
              i32.const 3
              i32.and
              i32.store
              local.get 3
              local.get 5
              i32.const 3
              i32.and
              i32.store
              local.get 5
              i32.const 2
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 7
              local.get 7
              i32.load
              i32.const 2
              i32.or
              i32.store
              br 1 (;@4;)
            end
            local.get 2
            i32.const -4
            i32.and
            local.tee 7
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.const 2
            i32.and
            br_if 3 (;@1;)
            local.get 7
            i32.load8_u
            i32.const 1
            i32.and
            br_if 3 (;@1;)
            local.get 1
            local.get 7
            i32.load offset=8
            i32.const -4
            i32.and
            i32.store
            local.get 7
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=8
          end
          local.get 0
          local.get 4
          i32.store offset=1024
          return
        end
        local.get 1
        local.get 0
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        local.tee 3
        i32.load
        i32.store
        local.get 1
        i32.const -8
        i32.add
        local.tee 1
        local.get 1
        i32.load
        i32.const -2
        i32.and
        i32.store
        local.get 3
        local.get 1
        i32.store
      end
      return
    end
    local.get 1
    local.get 4
    i32.store
    local.get 0
    local.get 3
    i32.store offset=1024
  )
  (func $_ZN11wit_bindgen2rt14run_ctors_once17h75299ea2082767b2E (;11;) (type 2)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=1049605
      br_if 0 (;@1;)
      call $__wasm_call_ctors
      i32.const 0
      i32.const 1
      i32.store8 offset=1049605
    end
  )
  (func $cabi_realloc (;12;) (type 4) (param i32 i32 i32 i32) (result i32)
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          br_if 0 (;@3;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          i32.const 0
          i32.load8_u offset=1049604
          drop
          local.get 3
          local.get 2
          call $__rust_alloc
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        call $__rust_realloc
        local.set 2
      end
      local.get 2
      br_if 0 (;@1;)
      unreachable
      unreachable
    end
    local.get 2
  )
  (table (;0;) 3 3 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (;0;) (mut i32) i32.const 1048576)
  (export "memory" (memory 0))
  (export "hello-world" (func $hello-world))
  (export "cabi_realloc" (func $cabi_realloc))
  (elem (;0;) (i32.const 1) func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17hee2c0e3c6db6663eE $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h78179bcfefba2a0bE)
  (data $.rodata (;0;) (i32.const 1048576) "")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.75.0 (82e1608df 2023-12-21)")
  )
)