(module
  (import "x" "y" (func (param anyref)))
  (func (export "a") (param anyref)
    local.get 0
    call 0))

(; CHECK-ALL:
  (module
    (type (;0;) (func (param anyref)))
    (import "x" "y" (func (;0;) (type 0)))
    (func (;1;) (type 0) (param anyref)
      local.get 0
      call 0)
    (export "a" (func 1)))
;)
