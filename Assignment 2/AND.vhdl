entity AND2 is
     port (in1, in2: in std_logic;
     out1: out std_logic);
end AND2;
 
architecture behavioral_2 of AND2 is
begin
     out1 <= in1 and in2;
end behavioral_2;
