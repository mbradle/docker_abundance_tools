FROM mbradle/docker_ubuntu19_webnucleo

ARG NUC_XPATH=""

RUN pip3 install wnutils lxml

RUN git clone https://github.com/mbradle/abundance_tools.git

WORKDIR /abundance_tools/python

CMD python3 print_mass_fractions_from_xml.py /input_directory/$XML_FILE --nuc_xpath "$NUC_XPATH"
