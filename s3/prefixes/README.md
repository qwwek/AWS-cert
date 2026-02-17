
## Create a bucket
```sh
aws s3 mb s3://prefixes-example-tc-1111
```

## Create a folder
```sh
aws s3api put-object --bucket prefixes-example-tc-1111 --key="hello/" 
```

## Create many folders
```sh
aws s3api put-object --bucket prefixes-example-tc-1111 --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Pellentesque/bibendum/ante/ac/interdum/commodo/mauris/neque/laoreet/quam/vitae/ultricies/risus/mi/vel/sem/Morbi/quis/convallis/ipsum/Quisque/accumsan/lobortis/porta/Fusce/venenatis/dapibus/fringilla/Vivamus/ultrices/nunc/sit/amet/urna/lacinia/quis/commodo/eros/cursus/Etiam/tincidunt/lorem/nisi/eu/ultricies/dolor/lobortis/nec/Etiam/sed/eros/sed/purus/pretium/iaculis/vitae/non/felis/Phasellus/a/nulla/libero/Praesent/laoreet/urna/eros/nec/molestie/ipsum/suscipit/temporNullam/vitae/fringilla/est/Proin/sed/finibus/nunc/Praesent/maximus/tellus/sit/amet/malesuada/finibus/Nunc/gravida/leo/non/justo/elementum/venenatis/Donec/volutpat/interdum/nibh/vel/vulputate/Morbi/eu/tortor/non/dolor/auctor/consectetur/vitae/sit/amet/orci/Curabitur/vel/luctus/sem/Cras/in/libero/tempor/aliquam/orci/eget/pellentesque/metus/Nunc/pellentesque/mauris/non/aliquet/ultrices/Suspendisse/ut/ultrices/ante/at/dignissim/sem/Sed/sed/porttitor/neque/in/molestie/df/what/lolsd/sjjsdjdfk/agfdgf/"
```

### Try and break the 1024 limit

```sh
aws s3api put-object --bucket prefixes-example-tc-1111 --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Pellentesque/bibendum/ante/ac/interdum/commodo/mauris/neque/laoreet/quam/vitae/ultricies/risus/mi/vel/sem/Morbi/quis/convallis/ipsum/Quisque/accumsan/lobortis/porta/Fusce/venenatis/dapibus/fringilla/Vivamus/ultrices/nunc/sit/amet/urna/lacinia/quis/commodo/eros/cursus/Etiam/tincidunt/lorem/nisi/eu/ultricies/dolor/lobortis/nec/Etiam/sed/eros/sed/purus/pretium/iaculis/vitae/non/felis/Phasellus/a/nulla/libero/Praesent/laoreet/urna/eros/nec/molestie/ipsum/suscipit/temporNullam/vitae/fringilla/est/Proin/sed/finibus/nunc/Praesent/maximus/tellus/sit/amet/malesuada/finibus/Nunc/gravida/leo/non/justo/elementum/venenatis/Donec/volutpat/interdum/nibh/vel/vulputate/Morbi/eu/tortor/non/dolor/auctor/consectetur/vitae/sit/amet/orci/Curabitur/vel/luctus/sem/Cras/in/libero/tempor/aliquam/orci/eget/pellentesque/metus/Nunc/pellentesque/mauris/non/aliquet/ultrices/Suspendisse/ut/ultrices/ante/at/dignissim/sem/Sed/sed/porttitor/neque/in/molestie/df/what/lolsd/sjjsdjdfk/agfdgf/hello.txt" --body="hello.txt"
```
