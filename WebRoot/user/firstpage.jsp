<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>开始使用 - UIkit 中文文档</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">    
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
        <link id="data-uikit-theme" href="../mui/mycss/uikit.docs.min.css" rel="stylesheet" type = "text/css">
        <link rel="stylesheet" href="../mui/mycss/docs.css" type = "text/css">
        <link rel="stylesheet" href="../mui/mycss/highlight.css">
        <script src="../mui/js/uikit.min.js"></script>
        <script src="../mui/js/highlight.js"></script>
        <script src="../mui/js/docs.js"></script>
    </head>

    <body class="tm-background">

        <div class="tm-navbar uk-navbar uk-navbar-attached">
            <div class="uk-container uk-container-center">

                <a class="uk-navbar-brand uk-hidden-small" href="firstpage.jsp" style = "font-size:30px;color:#999;">电信网络学院</a>

                <ul class="uk-navbar-nav uk-hidden-small">
                    <li class="uk-active"><a href="firstpage.jsp">首页</a></li>
                    <li><a href="personalInfo.jsp">个人信息</a></li>
                    <li><a href="exam.jsp">参加考试</a></li>
                    <li><a href="record.jsp">考试记录</a></li>
                </ul>
                <div style = "text-align:right;line-height:40px;">
                <a class = "quit" style = "text-decoration: none;" href="../login.jsp">退出</a>
                </div>

            </div>
        </div>

        <div class="tm-middle">
            <div class="uk-container uk-container-center">

                <div class="uk-grid">
                    <div class="tm-sidebar uk-width-medium-1-4 uk-hidden-small uk-row-first">

                        <ul class="tm-nav uk-nav">

                            <li class="uk-nav-header">初学者</li>
                            <li class="uk-active"><a href="documentation_get-started.html">开始使用</a></li>
                            <li><a href="documentation_how-to-customize.html">如何定制</a></li>
                            <li><a href="documentation_layouts.html">布局示例</a></li>
                            <li class="uk-nav-header">开发者</li>
                            <li><a href="documentation_project-structure.html">项目结构</a></li>
                            <li><a href="documentation_less-sass.html">Less &amp; Sass 文件</a></li>
                            <li><a href="documentation_create-a-theme.html">创建主题</a></li>
                            <li><a href="documentation_create-a-style.html">创建样式</a></li>
                            <li><a href="documentation_customizer-json.html">Customizer.json</a></li>
                            <li><a href="documentation_javascript.html">JavaScript</a></li>
                            <li><a href="documentation_custom-prefix.html">自定义前缀</a></li>

                        </ul>

                    </div>
                    <div class="tm-main uk-width-medium-3-4">

                        <div class="uk-article">

                            <h3>首页</h3>

                            <p><span class="uk-badge uk-badge-danger">注意</span> 文档中的示例代码不具备可操作性，请随时右键查看源代码，以参考实例真实代码。</p>
                            <div class="uk-alert uk-alert-danger">
                            UIkit 兼容 IE9 以上现代浏览器。在 IE8 及其以下版本中，所有JavaScript 都会失效。
                            </div>

                            <p>首先，你需要下载 UIkit。在 <a href="https://github.com/uikit/uikit" target="_blank" rel="nofollow">GitHub</a> 上，你可以找到整个项目的所有源文件。</p>

                            <p><a class="uk-button uk-button-large uk-button-primary" href="../download/uikit-2.25.0.zip">下载 UIkit</a> <a class="uk-button uk-button-large" href="../download/uikit-doc-2.25.0.zip">下载离线文档</a></p>

                            <hr class="uk-article-divider">

                            <h2 id="file-structure"><a href="#file-structure" class="uk-link-reset">文件结构</a></h2>

                            <p>在你下载的 ZIP 压缩包中，你可以找到准备在你的项目中使用的所有的CSS、JavaScript和字体文件。UIKit 的核心框架<code>uikit.css</code> 或 <code>uikit.min.css</code>几乎没有任何样式，这样做是为了保持它的苗条。因此我们提供两个额外的风格样式，一个渐变样式和一个扁平化样式。每个风格样式提供单独的CSS文件以及压缩后的版本。</p>

                            <div class="uk-overflow-container">
                                <table class="uk-table uk-table-striped uk-text-nowrap">
                                    <thead>
                                        <tr>
                                            <th>文件夹</th>
                                            <th>描述</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><code>/css</code></td>
                                            <td>包含 UIkit 所有的CSS文件和压缩后的版本。</td>
                                        </tr>
                                        <tr>
                                            <td><code>/fonts</code></td>
                                            <td>包含 UIKit 中使用的字体文件。</td>
                                        </tr>
                                        <tr>
                                            <td><code>/js</code></td>
                                            <td>包含 UIkit 所有的JavaScript文件和压缩后的版本。</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

<pre><code class="xml">/css
    <span class="comment">&lt;!-- UIKit的基本样式 --&gt;</span>
    uikit.css
    uikit.min.css

    <span class="comment">&lt;!-- UIKit的渐变样式 --&gt;</span>
    uikit.gradient.css
    uikit.gradient.min.css

    <span class="comment">&lt;!-- UIKit的扁平化样式 --&gt;</span>
    uikit.almost-flat.css
    uikit.almost-flat.min.css

    <span class="comment">&lt;!-- 高级组件 --&gt;</span>
    /components

/fonts
    <span class="comment">&lt;!-- FontAwesome网络字体 --&gt;</span>
    fontawesome-webfont.eot
    fontawesome-webfont.ttf
    fontawesome-webfont.woff
    FontAwesome.otf

/js
    <span class="comment">&lt;!-- JavaScript和压缩后的版本 --&gt;</span>
    uikit.js
    uikit.min.js

    <span class="comment">&lt;!-- 高级组件 --&gt;</span>
    /components

    <span class="comment">&lt;!-- 核心组件 --&gt;</span>
    /core</code></pre>

                            <hr class="uk-article-divider">

                            <h2 id="html-page-markup"><a href="#html-page-markup" class="uk-link-reset">HTML页面代码</a></h2>

                            <p>首先，确保你有一个可靠的代码编辑器，比如 <a href="http://www.sublimetext.com/2" target="_blank" rel="nofollow">Sublime Text 2</a>。你需要在你的HTML5的文档头部添加编译后的UIKit CSS和JavaScript文件，最好是压缩后的版本。别忘了添加 <a href="http://jquery.com/" target="_blank" rel="nofollow">jQuery</a>。就是这样！</p>

                            <h3 class="tm-article-subtitle">Example</h3>

<pre><code class="xml"><span class="doctype">&lt;!DOCTYPE html&gt;</span>
<span class="tag">&lt;<span class="title">html</span>&gt;</span>
    <span class="tag">&lt;<span class="title">head</span>&gt;</span>
        <span class="tag">&lt;<span class="title">title</span>&gt;</span><span class="tag">&lt;/<span class="title">title</span>&gt;</span>
        <span class="tag">&lt;<span class="title">link</span> <span class="attribute">rel</span>=<span class="value">"stylesheet"</span> <span class="attribute">href</span>=<span class="value">"uikit.min.css"</span> /&gt;</span>
        <span class="tag">&lt;<span class="title">script</span> <span class="attribute">src</span>=<span class="value">"jquery.js"</span>&gt;</span><span class="javascript"></span><span class="tag">&lt;/<span class="title">script</span>&gt;</span>
        <span class="tag">&lt;<span class="title">script</span> <span class="attribute">src</span>=<span class="value">"uikit.min.js"</span>&gt;</span><span class="javascript"></span><span class="tag">&lt;/<span class="title">script</span>&gt;</span>
    <span class="tag">&lt;/<span class="title">head</span>&gt;</span>
    <span class="tag">&lt;<span class="title">body</span>&gt;</span>
    <span class="tag">&lt;/<span class="title">body</span>&gt;</span>
<span class="tag">&lt;/<span class="title">html</span>&gt;</span></code></pre>

                            <p>如果你已经完成了在网页中添加 UIkit，那就看一下 <a href="core.html">UIkit 组件</a> 并从中获取相关介绍吧。</p>

                            <hr class="uk-article-divider">

                            <h2 id="cdnjs"><a href="#cdnjs" class="uk-link-reset">UIkit on BootCDN</a></h2>

                            <p>所有版本的 UIkit 都被托管在 BootCDN 上，就是 Bootstrap 中文网那个 BootCDN 。在这里可以找到 UIkit ： <a href="http://www.bootcdn.cn/uikit/" target="_blank" rel="nofollow">www.bootcdn.cn</a> 。</p>

                            <h3 class="tm-article-subtitle">Example</h3>

<pre><code class="xml"><span class="tag">&lt;<span class="title">link</span> <span class="attribute">rel</span>=<span class="value">"stylesheet"</span> <span class="attribute">href</span>=<span class="value">"//cdn.bootcss.com/uikit/2.25.0/css/uikit.css"</span> /&gt;</span>
<span class="tag">&lt;<span class="title">script</span> <span class="attribute">src</span>=<span class="value">"//cdn.bootcss.com/uikit/2.25.0/js/uikit.js"</span>&gt;</span><span class="javascript"></span><span class="tag">&lt;/<span class="title">script</span>&gt;</span></code></pre>

                            <hr class="uk-article-divider">

                            <h2 id="uikit-autocomplete-for-ide-s"><a href="#uikit-autocomplete-for-ide-s" class="uk-link-reset">IDE 上的 UIkit 自动完成</a></h2>

                            <p>为了更高效地工作，我们建议你为你喜欢的 IDE 或 代码编辑器安装一个自动完成插件。这样可以节省很多时间，因为你不必查找再输入所有UIkit的class 和 HTML 标记。</p>
                            <ul class="uk-list">
                                <li><a href="https://sublime.wbond.net/packages/UIkit%20autocomplete">Sublime 上的自动完成</a> - 通过 Sublime 的 Package Control 来安装。</li>
                                <li><a href="https://plugins.jetbrains.com/plugin/7791?pr=">PHPstorm 上的自动完成</a> - 通过 PHPsorm 的插件设置进行安装。</li>
                                <li><a href="https://atom.io/packages/atom-uikit">Atom 上的自动完成</a> - 在 Atom 的 package manager 里寻找它。</li>
                            </ul>

                        </div>
</div>

                </div>

            </div>
        </div>

        <div class="tm-footer">
            <div class="uk-container uk-container-center uk-text-center">

                <ul class="uk-subnav uk-subnav-line uk-flex-center">
                    <li><a href="http://github.com/uikit/uikit">GitHub</a></li>
                    <li><a href="http://github.com/uikit/uikit/issues">Issues</a></li>
                    <li><a href="http://github.com/uikit/uikit/blob/master/CHANGELOG.md">Changelog</a></li>
                    <li><a href="https://twitter.com/getuikit">Twitter</a></li>
                </ul>

                <div class="uk-panel">
                    <p>Made by <a href="http://www.yootheme.com">YOOtheme</a> with love and caffeine.<br>Licensed under <a href="http://opensource.org/licenses/MIT">MIT license</a>.</p>
                    <a href="../index.html"><img src="images/logo_uikit.svg" width="90" height="30" title="UIkit" alt="UIkit"></a>
                </div>

            </div>
        </div>

        <div id="tm-offcanvas" class="uk-offcanvas">

            <div class="uk-offcanvas-bar">

                <ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon">
                    <li class="uk-parent"><a href="#">UIkit 中文文档</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="documentation_get-started.html">开始使用</a></li>
                            <li><a href="documentation_how-to-customize.html">如何定制</a></li>
                            <li><a href="documentation_layouts.html">布局示例</a></li>
                            <li><a href="core.html">核心组件</a></li>
                            <li><a href="components.html">附加组件</a></li>
                            <li><a href="documentation_project-structure.html">项目结构</a></li>
                            <li><a href="documentation_less-sass.html">Less &amp; Sass 文件</a></li>
                            <li><a href="documentation_create-a-theme.html">创建主题</a></li>
                            <li><a href="documentation_create-a-style.html">创建样式</a></li>
                            <li><a href="documentation_customizer-json.html">Customizer.json</a></li>
                            <li><a href="documentation_javascript.html">JavaScript</a></li>
                            <li><a href="documentation_custom-prefix.html">自定义前缀</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-nav-header">Core</li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-wrench"></i> 默认</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="base.html">基础</a></li>
                            <li><a href="print.html">打印</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-th-large"></i> 布局类组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="grid.html">网格</a></li>
                            <li><a href="panel.html">面板</a></li>
                            <li><a href="block.html">块</a></li>
                            <li><a href="article.html">文章</a></li>
                            <li><a href="comment.html">评论</a></li>
                            <li><a href="utility.html">效果</a></li>
                            <li><a href="flex.html">Flex</a></li>
                            <li><a href="cover.html">覆盖</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-bars"></i> 导航类组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="nav.html">导航菜单</a></li>
                            <li><a href="navbar.html">导航栏</a></li>
                            <li><a href="subnav.html">二级导航</a></li>
                            <li><a href="breadcrumb.html">面包屑</a></li>
                            <li><a href="pagination.html">分页</a></li>
                            <li><a href="tab.html">选项卡</a></li>
                            <li><a href="thumbnav.html">缩略图导航</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-check"></i> 页面元素</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="list.html">列表</a></li>
                            <li><a href="description-list.html">描述列表</a></li>
                            <li><a href="table.html">表格</a></li>
                            <li><a href="form.html">表单</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-folder-open"></i> 常用组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="button.html">按钮</a></li>
                            <li><a href="icon.html">图标</a></li>
                            <li><a href="close.html">关闭</a></li>
                            <li><a href="badge.html">徽章</a></li>
                            <li><a href="alert.html">提示框</a></li>
                            <li><a href="thumbnail.html">缩略图</a></li>
                            <li><a href="overlay.html">遮罩</a></li>
                            <li><a href="text.html">文本</a></li>
                            <li><a href="column.html">列</a></li>
                            <li><a href="animation.html">动画</a></li>
                            <li><a href="contrast.html">对比度</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-magic"></i> JavaScript组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="dropdown.html">下拉菜单</a></li>
                            <li><a href="modal.html">模态对话框</a></li>
                            <li><a href="offcanvas.html">抽屉</a></li>
                            <li><a href="switcher.html">切换器</a></li>
                            <li><a href="toggle.html">拨动</a></li>
                            <li><a href="scrollspy.html">滚动监听</a></li>
                            <li><a href="smooth-scroll.html">平滑滚动</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-nav-header">附加组件</li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-th-large"></i> 布局类组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="grid-js.html">动态网格</a></li>
                            <li><a href="grid-parallax.html">视差网格</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-bars"></i> 导航类组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="dotnav.html">圆点导航</a></li>
                            <li><a href="slidenav.html">滑动导航</a></li>
                            <li><a href="pagination-js.html">动态分页</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-folder-open"></i> 常用组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="form-advanced.html">高级表单</a></li>
                            <li><a href="form-file.html">文件表单</a></li>
                            <li><a href="form-password.html">密码表单</a></li>
                            <li><a href="form-select.html">选择表单</a></li>
                            <li><a href="placeholder.html">占位符</a></li>
                            <li><a href="progress.html">进度条</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-parent"><a href="#"><i class="uk-icon-magic"></i> JavaScript组件</a>
                        <div style="overflow:hidden;height:0;position:relative;" class="uk-hidden"><ul class="uk-nav-sub">
                            <li><a href="lightbox.html">灯箱</a></li>
                            <li><a href="autocomplete.html">自动完成</a></li>
                            <li><a href="datepicker.html">日期选择器</a></li>
                            <li><a href="htmleditor.html">HTML 编辑器</a></li>
                            <li><a href="slider.html">滚动条</a></li>
                            <li><a href="slideset.html">滑块集</a></li>
                            <li><a href="slideshow.html">幻灯片</a></li>
                            <li><a href="parallax.html">视差</a></li>
                            <li><a href="accordion.html">手风琴</a></li>
                            <li><a href="notify.html">通知</a></li>
                            <li><a href="search.html">搜索</a></li>
                            <li><a href="nestable.html">可嵌套</a></li>
                            <li><a href="sortable.html">可排序</a></li>
                            <li><a href="sticky.html">附着</a></li>
                            <li><a href="timepicker.html">时间选择器</a></li>
                            <li><a href="tooltip.html">工具提示</a></li>
                            <li><a href="upload.html">上传</a></li>
                        </ul></div>
                    </li>
                    <li class="uk-nav-divider"></li>
                    <li><a href="../showcase/index.html">案例展示</a></li>
                    <li><a href="tutorials.html">视频教程</a></li>
                </ul>

            </div>

        </div>

    

</body></html>
