//ds_list_add(waves,[wave,enemytype,spawnpoint,delay])
waves = ds_list_create();
ds_list_add(waves,[0,Oenemy_human,0,0]);
ds_list_add(waves,[0,Oenemy_human,0,50]);
ds_list_add(waves,[0,Oenemy_human,0,100]);
ds_list_add(waves,[0,Oenemy_human,0,150]);
ds_list_add(waves,[0,Oenemy_human,0,200]);
ds_list_add(waves,[0,Oenemy_human,0,250]);

ds_list_add(waves,[1,Oenemy_human,1,0]);
ds_list_add(waves,[1,Oenemy_human,1,50]);
ds_list_add(waves,[1,Oenemy_human,1,100]);
ds_list_add(waves,[1,Oenemy_human,1,150]);
ds_list_add(waves,[1,Oenemy_human,1,200]);
ds_list_add(waves,[1,Oenemy_human,1,250]);

ds_list_add(waves,[2,Oenemy_human,1,150]);
ds_list_add(waves,[2,Oenemy_human,1,200]);
ds_list_add(waves,[2,Oenemy_human,1,150]);
ds_list_add(waves,[2,Oenemy_human,1,200]);
ds_list_add(waves,[2,Oenemy_human_boss,1,250]);

spawn[0,0] = 1254;
spawn[0,1] = 900;

spawn[1,0] = 1500;
spawn[1,1] = 900;