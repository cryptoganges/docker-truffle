ARG NODE_BASE_IMAGE
FROM $NODE_BASE_IMAGE

ARG TRUFFLE_VERSION
RUN npm install -g truffle@$TRUFFLE_VERSION

CMD ["/bin/bash"]