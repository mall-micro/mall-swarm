package svc

import (
	"github.com/zeromicro/go-zero/core/stores/redis"
	"github.com/zeromicro/go-zero/core/stores/sqlx"
	"mall-swarm/app/usercenter/cmd/rpc/internal/config"
	"mall-swarm/app/usercenter/cmd/rpc/internal/model"
)

type ServiceContext struct {
	Config        config.Config
	RedisClient   *redis.Redis
	UserModel     model.UserModel
	UserAuthModel model.UserAuthModel
}

func NewServiceContext(c config.Config) *ServiceContext {
	sqlConn := sqlx.NewMysql(c.DB.DataSource)

	//redisConf := redis.RedisConf{
	//	Host: c.Redis.Host,
	//	Type: c.Redis.Type,
	//	Pass: c.Redis.Pass,
	//}

	return &ServiceContext{
		Config: c,
		RedisClient: redis.New(c.Redis.Host, func(r *redis.Redis) {
			r.Type = c.Redis.Type
			r.Pass = c.Redis.Pass
		}),
		UserAuthModel: model.NewUserAuthModel(sqlConn, c.Cache),
		UserModel:     model.NewUserModel(sqlConn, c.Cache),
	}
}
