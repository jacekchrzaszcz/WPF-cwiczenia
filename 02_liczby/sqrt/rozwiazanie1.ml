(* x >= 0  ==>  result = n such that n>=0 and n^2 <= x < (n+1)^2 *)
let sqrt x = 
    (* s <= x, s=k^2, k>=0  ==>  result = n as above *)   
    let rec aux s k = 
        let nw = 2 * (k + 1) - 1 in
        if s + nw <= x then  (* (k+1)^2 <= x *) 
            aux (s + nw) (k + 1)
            (* new s=(k+1)^2, s <= x, k+1 >=0 OK for k+1  *)
        else k (* k^2 <= x < (k+1)^2  OK *) 
    in
    aux 0 0
        (* s <= x, s=k^2, k>=0 OK for k=0 *)
