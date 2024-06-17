package svc

import (
	"github.com/zeromicro/go-zero/rest"
	"github.com/zeromicro/go-zero/zrpc"
	"mall-swarm/app/usercenter/cmd/api/internal/config"
	"mall-swarm/app/usercenter/cmd/rpc/usercenter"
)

type ServiceContext struct {
	Config                config.Config
	UsercenterRpc         usercenter.Usercenter
	SetUidToCtxMiddleware rest.Middleware
}

func NewServiceContext(c config.Config) *ServiceContext {
	return &ServiceContext{
		Config:        c,
		UsercenterRpc: usercenter.NewUsercenter(zrpc.MustNewClient(c.UsercenterRpcConf)),
	}
}
