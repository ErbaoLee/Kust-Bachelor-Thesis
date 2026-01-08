# 昆明理工大学本科毕业论文 XeLaTeX 模板

> [!IMPORTANT]
> 本模板还在修改中，并非最终版本，大家可以先凑合用。

本模板改自 [https://github.com/hanliumaozhi/kmust_paper_xelatex/tree/master](https://github.com/hanliumaozhi/kmust_paper_xelatex/tree/master)。
旨在为昆明理工大学本科毕业生提供一个易用、规范的 XeLaTeX 论文写作模板。

## 1. 目录结构 (Directory Structure)

项目文件组织如下：

- **(Root)**
  - `main.tex`: 主控文件，包含整体架构定义。
  - `body.tex`: 正文组织文件，用于引入各章节。
  - `clean.bat`: 清理脚本，用于删除编译过程中的临时文件。
  - `README.md`: 项目说明文档。

- **setup/**: 配置与工具
  - `build.bat`: **一键编译脚本**（推荐使用）。
  - `kustthesis.cls`: 论文格式类文件，定义了页眉页脚、字体、行距等格式。

- **preface/**: 前置部分
  - `cover.tex`: 论文封面。
  - `titlepage.tex`: 扉页。
  - `cover_others.tex`: 其他封面材料。
  - `abstract_cn.tex`: 中文摘要。
  - `abstract_en.tex`: 英文摘要。
  - `foreword.tex`: 前言。

- **chapters/**: 正文章节
  - `intro.tex`: 绪论。
  - `literature_review.tex`: 文献综述。
  - `methodology.tex`: 方法/原理。
  - `experiments.tex`: 实验/结果。
  - `conclusion.tex`: 结论。
  - *(可根据需要添加更多章节文件并在 `body.tex` 中引入)*

- **appendix/**: 后置部分
  - `acknowledgement.tex`: 谢辞。
  - `appendix.tex`: 附录内容。

- **references/**: 参考文献
  - `reference.bib`: BibTeX 格式的参考文献数据文件。
  - *注意：引用未做特殊设置，请确保 BibTeX 格式标准。*

- **figures/**: 图片资源文件夹。

## 2. 编译方法 (Build)

本模板支持 XeLaTeX 编译引擎。由于需生成目录和参考文献，通过脚本编译最为便捷。

### 方式一：使用自动脚本 (推荐)

直接双击运行 **`setup\build.bat`**，或在命令行中运行：

```bash
.\setup\build.bat
```

该脚本会自动完成以下全过程：
1. 编译封面 (`cover`, `titlepage`, `cover_others`)。
2. 编译主文档 (`xelatex main`)。
3. 处理参考文献 (`bibtex main`)。
4. 再次编译主文档 (`xelatex main`) x2 以修正页码和引用。

### 方式二：手动编译

若需手动编译，请在根目录下依序执行：

```bash
# 编译主文档
xelatex main
# 处理引用
bibtex main
# 再次编译以生成引用列表
xelatex main
# 最终编译以修正交叉引用
xelatex main
```

*(封面文件位于 `preface/` 目录下，若有修改需单独编译该目录下的对应 tex 文件)*

## 3. 清理文件 (Clean)

编译过程会产生大量辅助文件（如 `.aux`, `.log`, `.toc` 等）。
双击运行根目录下的 **`clean.bat`** 即可一键清理这些中间文件，仅保留源代码和最终的 PDF 文件。

```bash
.\clean.bat
```
