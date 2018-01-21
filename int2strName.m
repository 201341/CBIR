function strName = int2strName(img_name)
pre_img_name = fix(img_name/10000);

if(pre_img_name < 10 )
    pre_str = int2str(pre_img_name)
    pre_str=strcat('00',pre_str);
else
    pre_str = int2str(pre_img_name)
    pre_str=strcat('0',pre_str);
end
    
pos_img_name = rem(img_name,10000);
if(pos_img_name <10)
    pos_str = int2str(pos_img_name);
    pos_str = strcat('000',pos_str);
elseif(pos_img_name<100)
    pos_str = int2str(pos_img_name);
    pos_str = strcat('00',pos_str);
elseif(pos_img_name<1000)
    pos_str = int2str(pos_img_name);
    pos_str = strcat('0',pos_str);
else
    pos_str = int2str(pos_img_name);
end
pos_str = strcat('_',pos_str);

strName = strcat(pre_str,pos_str);