package user

import (
	"context"
	"github.com/jinzhu/copier"
	"mall-swarm/app/usercenter/cmd/rpc/usercenter"

	"mall-swarm/app/usercenter/cmd/api/internal/svc"
	"mall-swarm/app/usercenter/cmd/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type LoginLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

// login
func NewLoginLogic(ctx context.Context, svcCtx *svc.ServiceContext) *LoginLogic {
	return &LoginLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *LoginLogic) Login(req *types.LoginReq) (*types.LoginResp, error) {
	loginResp, err := l.svcCtx.UsercenterRpc.Login(l.ctx, &usercenter.LoginReq{
		AuthType: "system",
		AuthKey:  req.Mobile,
		Password: req.Password,
		Mobile:   req.Mobile,
	})
	if err != nil {
		return nil, err
	}
	var resp types.LoginResp
	_ = copier.Copy(&resp, loginResp)

	return &resp, nil
}
