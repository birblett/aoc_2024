puts File.open("in.txt"){|f,z|(0..74).reduce([0,0]){|b,i,s={}|(z||=f.readline.split.map(&:to_i).reduce({}){|h,k|(h[k]=(h[k]||=0)+1)&&h}).each{|k,v|k==0?s[1]=(s[1]||=0)+v:(l=Math.log10(k).floor+1)&1==0?(s[t=k/(e=10**(l>>1))]=(s[t]||=0)+v)&&(s[t=k%e]=(s[t]||=0)+v):s[k*2024]=(s[k*2024]||=0)+v}&&(z=s)&&[i==24?z.sum{|_,v|v}:b[0],i==74?z.sum{|_,v|v}:b[1]]}}