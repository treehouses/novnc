# novnc
![GitHub](https://img.shields.io/github/license/ole-vi/novnc)
### Introduction

noVNC based from treehouses alpine image. About noVNC more can be view [here](https://novnc.com/info.html)
### Intallations:
```bash
git clone https://github.com/ole-vi/novnc.git
cd novnc
docker build -t novnc .
````
### Usage:
- After build the docker image run with
``docker run -p 6080:6080 -d novnc``
- Open a browser and navigate to the ``serverip:6080``
