#import "../lib.typ": documentclass, algox, tablex

#let (
  info,
  doc,
  cover,
  declare,
  appendix,
  outline,
  mainmatter,
  conclusion,
  abstract,
  bib,
  acknowledgement,
  under-cover,
) = documentclass(
  info: (
    title: "XXXX毕业论文",
    name: "渐入佳境Groove",
    id: "20XX008XXXXX",
    school: "XXXX学院",
    major: "人工智能",
    grade: "20XX级",
    mentor: "XXX",
    time: "20XX年X月XX日",
  ),
)

#show: doc

#cover()
#abstract(
  body: [
    中文摘要应将学位论文的内容要点简短明了地表达出来，一般约300~800个汉字，字体为宋体小四号。内容应包括目的与意义、研究内容与方法以及研究结论等。

    同时需要突出论文的新论点、新见解或创造性成果，语言力求精炼。注意：中英文摘要和中英文关键词，要一一对应。
  ],
  keywords: ("关键词1", "关键词2", "关键词3", "关键词4", "关键词5"),
  body-en: [
    This dissertation explores innovative approaches in artificial intelligence applications. The research methodology combines theoretical analysis with practical experiments, resulting in novel insights and frameworks. The findings contribute significantly to the field, offering potential solutions for real-world implementation.

    The study highlights original perspectives and creative outcomes, demonstrating both academic rigor and practical relevance.
  ],
  keywords-en: ("dissertation", "dissertation format", "standardization", "template"),
)
#outline()

#set heading(numbering: "1.1")
#counter(page).update(1)
#show: mainmatter

//===========开始正文============
= 一级标题

== 二级标题
山東大學本科畢業論文（設計）Typst模板。

=== 三级标题
本文...

=== 三级标题
许多年后，奥雷里亚诺·布恩迪亚上校站在行刑队面前，准会想起父亲带他去见识冰块的那个遥远的下午。

Many years later, as he faced the firing squad, Colonel Aureliano Buendía was to remember that distant afternoon when his father took him to discover ice.

当时的马孔多是一个二十户人家的村落，泥巴和芦苇盖成的房屋沿河岸排开，河水清澈，沿着遍布光滑的石头的河床流淌，那些石头洁白而巨大，像是史前的蛋。

At that time Macondo was a village of twenty adobe houses, built on the bank of a river of clear water that ran along a bed of polished stones, which were white and enormous, like prehistoric eggs.

这片土地如此年轻，许多事物都还没有名字，提到的时候需要用手指指点点。

The world was so recent that many things lacked names, and in order to indicate them it was necessary to point.

= 本科毕业论文写作规范

- *养成良好的写作习惯*：
  - 写作过程中，及时保存并备份文档，特别是当版本有较大更新时。
  - 为突出显示、方便修改，成文时，全文中所有与序号有关的章节号、图号、表号、式号、文献号、附录号等，均用#text(fill: rgb("c00000"))[深红色]标注。#text(fill:gray,font: "Courier New")[rgb:C00000]

== 正文写作规范

=== 正文字体规范

- *正文字体字号*：
  - 中文使用小四号宋体
  - 外文字母（英文字母、希腊字母等）和数字使用小四号 Times New Roman 字体

- *图表名称字体字号*：
  - 中文使用五号宋体
  - 外文字母和数字使用五号 Times New Roman 字体
  - 图表名称需加粗并居中对齐

- *标点符号使用规则*：
  - 中文句子使用中文标点符号
  - 英文句子使用英文标点符号
  - 全文括号、引号、波浪号等统一使用 Times New Roman 字体：
  - 英文摘要和参考文献中，英文标点符号后需空一格（段落最后一个标点符号除外）

== 二级标题
本组织...

=== 三级标题
本文将...

= 图表格式
== 图格式
#figure(
  image(
    "img/AlbertEinstein.png",
    width: 50%,
  ),
  kind: "image",
  supplement: [图],
  caption: [Albert Einstein], // 英文图例
)<Einstein>

// 图片引用采用@img:<image>，具体细节在figures.typ内。
这是一张爱因斯坦 [@img:Einstein] 的照片。

== 表格格式
// 表的引用请以 tbl 开头
这里展示了一张数据表格，见@tbl:这张表格的label

// tablex不需要嵌套在figure内完成 lable设置
#tablex(
  header: (
    [感应频率 #linebreak() (kHz)],
    [感应发生器功率 #linebreak() (%×80kW)],
    [工件移动速度 #linebreak() (mm/min)],
    [感应圈与零件间隙 #linebreak() (mm)],
  ),
  //必须声明且同时声明columns 和 colnum.
  columns: (1fr, 1fr, 1fr, 1fr),
  colnum: 4,
  caption: [这是一个表格示例],
  label-name: "这张表格的label",
  ..for i in range(10) {
    ([250], [88], [5900], [1.65])
  },
)

同时，参见@tbl:包含两位科学家的表，这是另外两位科学家的照片，他们分别是香农和冯诺伊曼。这一部分的内容主要用于帮助认识`tablex`的用法。

#tablex(
  columns: (1fr, 1fr),
  colnum: 2,
  caption: [两位科学家],
  label-name: "包含两位科学家的表",
  header: (
    [Claude Elwood Shannon #linebreak() 克勞德·夏農],
    [John von Neumann #linebreak() 約翰·馮·諾伊曼],
  ),
  figure(
    image(
      "img/ClaudeElwoodShannon.png",
      width: 50%,
    ),
    kind: "image",
    supplement: [图],
    // caption: [Claude Elwood Shannon], // 英文图例
  ),

  figure(
    image(
      "img/John von Neumann.png",
      width: 50%,
    ),
    kind: "image",
    supplement: [图],
    // caption: [John von Neumann], // 英文图例
  ),
)


== 公式格式
== 算法格式
