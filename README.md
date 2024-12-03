# Georgia Tech. Undergraduate Thesis

From Georgia Tech's [website](https://undergradresearch.gatech.edu/research-option),
> The Research Option (RO) provides students a substantial, in-depth research experience, culminating in a field-appropriate thesis. [...] Completion of the program is designated on your transcript. The Research Option is open to all undergraduate students, but it is especially beneficial for future graduate school students and professional-track students who are planning a career in research and development after graduation.

To compile the figures and text into the final PDF, simply run
```console
$ make -j $(nproc)
```
This requires that `latexmk` and various LaTeX packages be installed.

The compiled PDF is available [here](thesis.pdf).

### License

Open-Source Combusting Flow Simulation © 2024 by Henry Le Berre is licensed under <a href="https://creativecommons.org/licenses/by/4.0/?ref=chooser-v1">CC BY 4.0</a>.
