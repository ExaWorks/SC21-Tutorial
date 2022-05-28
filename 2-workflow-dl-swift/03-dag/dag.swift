
app (file o) spawn(file i)
{
  "./task.sh" 0 o i ;
}

app (file o) work(file i, int id)
{
  "./task.sh" id o i ;
}

app (file o) merge(file i[], int id)
{
  "./task.sh" id o i ;
}

file init = input("init.txt");
file cfg<"cfg.txt"> = spawn(init);

file out_A<"out_A.txt"> = work(cfg, 1);
file out_B<"out_B.txt"> = work(cfg, 2);
file out_C<"out_C.txt"> = work(cfg, 3);

file outs[] = [ out_A, out_B, out_C ];
file merged<"merged.txt"> = merge(outs, 100);
