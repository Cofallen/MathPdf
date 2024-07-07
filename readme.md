## 基本用法

好的，以下是一些常见的 LaTeX 排版用法及其示例：

### 1. 脚注
```latex
这是一个带有脚注的句子\footnote{这是脚注的内容。}。
```

### 2. 注释
```latex
% 这是一个注释，不会出现在最终的文档中
```

### 3. 移动文字
```latex
\begin{center}
这是居中的文字。
\end{center}

\begin{flushright}
这是右对齐的文字。
\end{flushright}
```

### 4. 分区
```latex
\section{第一部分}
这是第一部分的内容。

\subsection{第一部分的子部分}
这是第一部分的子部分的内容。

\subsubsection{第一部分的子子部分}
这是第一部分的子子部分的内容。
```

### 5. 页眉和页脚
```latex
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[L]{左页眉内容}
\fancyhead[C]{中页眉内容}
\fancyhead[R]{右页眉内容}
\fancyfoot[L]{左页脚内容}
\fancyfoot[C]{中页脚内容}
\fancyfoot[R]{右页脚内容}
```

### 6. 页码格式
```latex
\pagenumbering{roman} % 使用罗马数字页码
\pagenumbering{arabic} % 使用阿拉伯数字页码
```

### 7. 插入图片
```latex
\usepackage{graphicx}
\begin{figure}[h]
    \centering
    \includegraphics[width=0.5\textwidth]{example-image}
    \caption{这是图片的标题}
    \label{fig:example}
\end{figure}
```

### 8. 插入表格
```latex
\begin{table}[h]
    \centering
    \begin{tabular}{|c|c|c|}
        \hline
        列1 & 列2 & 列3 \\
        \hline
        数据1 & 数据2 & 数据3 \\
        \hline
    \end{tabular}
    \caption{这是表格的标题}
    \label{tab:example}
\end{table}
```

### 9. 引用文献
```latex
\usepackage{cite}
这是一个引用\cite{example_reference}。

\bibliographystyle{plain}
\bibliography{references}
```

### 10. 数学公式
```latex
这是一个行内公式 $E = mc^2$。

这是一个独立公式：
\begin{equation}
E = mc^2
\end{equation}
```

这些示例涵盖了 LaTeX 排版中的一些常见用法。您可以根据需要将这些代码片段插入到您的 LaTeX 文档中。


## 分块方法

要在 LaTeX 中将页面分成左右两个相同的部分，并在中间用双竖线 `||` 隔开，可以使用 `multicol` 包。以下是完整的代码示例：

```latex
\documentclass{article}
\usepackage{multicol}
\usepackage{lipsum} % 用于生成示例文本

\begin{document}

\begin{multicols}{2}
\noindent
\begin{minipage}[t]{0.48\textwidth}
    \lipsum[1] % 示例文本
\end{minipage}%
\hfill
\vrule width 1pt % 中间的竖线
\hfill
\begin{minipage}[t]{0.48\textwidth}
    \lipsum[2] % 示例文本
\end{minipage}
\end{multicols}

\end{document}
```

### 解释
- `\documentclass{article}`: 定义文档类型为文章。
- `\usepackage{multicol}`: 引入 `multicol` 包，用于多栏布局。
- `\usepackage{lipsum}`: 引入 `lipsum` 包，用于生成示例文本。
- `\begin{multicols}{2}`: 开始一个两栏布局。
- `\noindent`: 防止段落缩进。
- `\begin{minipage}[t]{0.48\textwidth}`: 定义一个宽度为 48% 的迷你页面。
- `\hfill`: 在迷你页面之间添加水平填充。
- `\vrule width 1pt`: 添加一个宽度为 1pt 的竖线。
- `\lipsum[1]` 和 `\lipsum[2]`: 插入示例文本。

### 实例函数用法
在实际使用中，您可以将 `\lipsum[1]` 和 `\lipsum[2]` 替换为您自己的内容。例如：

```latex
\documentclass{article}
\usepackage{multicol}

\begin{document}

\begin{multicols}{2}
\noindent
\begin{minipage}[t]{0.48\textwidth}
    这是左边的内容。您可以在这里放置任何文本或图像。
\end{minipage}%
\hfill
\vrule width 1pt % 中间的竖线
\hfill
\begin{minipage}[t]{0.48\textwidth}
    这是右边的内容。您可以在这里放置任何文本或图像。
\end{minipage}
\end{multicols}

\end{document}
```

这样，您就可以在页面上创建左右两个相同的部分，并在中间用竖线隔开。

