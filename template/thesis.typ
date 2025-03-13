#import "../lib.typ": documentclass

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
    title: "山东大学本科毕业论文（设计）",
    name: "渐入佳境Groove",
    id: "20XX008XXXXX",
    school: "XXXX学院",
    major: "人工智能",
    grade: "20XX级",
    mentor: "指导老师",
    time: "20XX年X月XX日",
  ),
)

#show: doc

#cover(info: info)
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

= 一级标题

== 二级标题
山東大學本科畢業論文（設計）typst模板。

=== 三级标题
本文...

=== 三级标题
本文...

= 本科毕业论文写作规范

- *养成良好的写作习惯*：
  - 写作过程中，及时保存并备份文档，特别是当版本有较大更新时。
  - 为突出显示、方便修改，成文时，全文中所有与序号有关的章节号、图号、表号、式号、文献号、附录号等，均用#text(fill: rgb("c00000"))[深红色]标注。

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
    - 圆括号 ()
    - 方括号 []
    - 花括号 {}
    - 单引号 ''
    - 双引号 ""
    - 波浪号 ~
  - 英文摘要和参考文献中，英文标点符号后需空一格（段落最后一个标点符号除外）

=== 字和符号



