package user

import (
	"github.com/zeromicro/go-zero/rest/httpx"
	"mall-swarm/app/usercenter/cmd/api/internal/logic/user"
	"mall-swarm/app/usercenter/cmd/api/internal/svc"
	"mall-swarm/app/usercenter/cmd/api/internal/types"
	"mall-swarm/common/result"
	"net/http"
)

// login
func LoginHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.LoginReq
		if err := httpx.Parse(r, &req); err != nil {
			result.ParamErrorResult(r, w, err)
			return
		}

		l := user.NewLoginLogic(r.Context(), svcCtx)
		resp, err := l.Login(&req)
		result.HttpResult(r, w, resp, err)
	}
}
