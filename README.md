# Frameworks
iOS实用的一套框架，加上一些三方库元素，便于更多业务处理。

列表视图 
在controller中直接new一个BaseListView,详细配置见.h，赋一个action（请求路径）以及para（请求参数）
cell继承AutoBindCell，控件属性名与服务器字段key名一致，如果要实现动态cell高度，子类cell重写siziThatFit
new一个model继承BaseDataModel。

其他自动绑定controller，自动绑定view将在之后的版本陆续添加上
