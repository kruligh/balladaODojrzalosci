/// @description Logic
    ticker += 1;
    if (ticker > 60) {
        time += 1;
        ticker = 0;
    }
    if (time > behaviourTime) {
        Controller.bossInit = false;
        show_debug_message("[BOSS] FINISH, destroy self");
        instance_destroy(self)
    }
    
    switch (behaviour) {
        case 1:
            bossBehaviour1();
            break;
        case 2:
            break;
    }


