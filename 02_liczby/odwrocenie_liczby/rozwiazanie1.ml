(* if n = 0 -> result = 0
   otherwise if n = dk...d0 - decimal digits of the number n, dk<>0
        -> result = d0...dk *)
let reverse_number n =
    (* given res = d0...d{i-1} and rem = dk...di for i=0...k+1
       result = d0...dk *)
    let rec aux res rem = 
        if rem = 0 then (* rem is empty, i=k+1 *)
            res (* res = d0..dk  OK! *)
        else 
            aux (res * 10 + rem mod 10) (rem / 10)
               (* res = d0...d{i-1}di    rem = dk...d{i+1},   OK for i+1 *)
    in
    aux 0 n
        (* res is empty, i=0, rem=d0...dk - OK for i=0 *)
