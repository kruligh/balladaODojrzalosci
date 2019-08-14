
    emmiterTimer += 1;
    if (emmiterTimer > emmiterTime) {
        //Generate
        if (emmiterAmount > 0) {
            if (emmiterTimer == emmiterTime) {
                emmiterAmount = choose(1, 2, 3);
            }
            var position = choose(0, 1, 2, 3, 4, 5, 6);
            var decision = 0; //choose(0, 1, 2, 3);
			// zrobie se ife else i po sekundach to robil jakie grzyby sa emitowane
            switch(decision) {
                case 0:
                    createElement(position, choose(5, 7, 10));
                    break;
                case 1:
                    createJumper(position, choose(1, 2, 3, 4), choose(60, 90, 120));
                    break;
                case 2:
                    createDrunkard(position, choose(2, 3, 4, 5), choose(15, 30, 30, 45));
                    break;
                case 3:
                    createShroom(position, choose(1, 2, 3, 4), choose(60, 90, 120));
                    break;
            }
            emmiterAmount--;
        } else {
            //Randomize
            show_debug_message("randomize");
            emmiterTimer = 0;
            emmiterStage1Init();
        }
    }

