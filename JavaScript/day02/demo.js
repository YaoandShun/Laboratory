function createParagraph() {
    let para = document.createElement('p');
    para.textContent = '你点击了这个按钮！';
    document.body.appendChild(para);
  }
  
  const buttons = document.querySelectorAll('button');
  
  for(let i = 0; i < buttons.length ; i++) {
    buttons[i].addEventListener('click', createParagraph);
  } 
/*
1. 创建功能函数
    1. 创建元素
    2. 指定元素内容
    3. 添加到 dom 对象中去
2. 找出所有button对象
    1. 遍历 button 对象
        1. 往 button 对象中绑定功能函数

*/