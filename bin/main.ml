let () = print_endline ""
let () = print_endline "*************************************"
let () = print_endline "********** Starting MTD! ************"
let () = print_endline "*************************************"
let () = print_endline ""

open Raylib
let setup () =
  Raylib.init_window 900 650 "MTD";
  Raylib.set_target_fps 60;


  (*Create the intro screen art*)
  let intro_screen_art = Raylib.load_image "MTDCoverArt.png" in 
  let texture = Raylib.load_texture_from_image intro_screen_art in
  unload_image intro_screen_art;



  (texture)

let rec loop (texture) =
  if Raylib.window_should_close () then Raylib.close_window ()
  else
    let open Raylib in
   
    begin_drawing ();
    clear_background Color.raywhite;
    (draw_texture_ex texture       
    (Vector2.create 0. 0.0)  (* Position *)
    0.0                          (* Rotation (in radians) *)
    (0.70)                (* Scale *)
    Color.white);
    draw_text "McGraw Tower" 430 175 60
      Color.red;
    draw_text "Defense!" 490 250 60 Color.red;
    end_drawing ();
    loop (texture)

let () = setup () |> loop