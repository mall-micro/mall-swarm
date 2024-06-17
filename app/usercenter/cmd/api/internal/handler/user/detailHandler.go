package user

import (
	"github.com/zeromicro/go-zero/rest/httpx"
	"mall-swarm/app/usercenter/cmd/api/internal/logic/user"
	"mall-swarm/app/usercenter/cmd/api/internal/svc"
	"mall-swarm/app/usercenter/cmd/api/internal/types"
	"mall-swarm/common/result"
	"net/http"
)

// get user info
func DetailHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.UserInfoReq
		if err := httpx.Parse(r, &req); err != nil {
			result.ParamErrorResult(r, w, err)
			return
		}

		l := user.NewDetailLogic(r.Context(), svcCtx)
		resp, err := l.Detail(&req)
		result.HttpResult(r, w, resp, err)
	}
}
