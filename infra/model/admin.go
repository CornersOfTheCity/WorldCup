package model

import (
	"WorldCup.Practise/WordCup/infra/crypt"
	initiator "WorldCup.Practise/WordCup/infra/init"
	"github.com/jinzhu/gorm"
	"golang.org/x/crypto/bcrypt"
	"time"
)

type Admin struct {
	gorm.Model
	Name              string `gorm:"type:varchar(64);column:name"`
	AuthToken         string `gorm:"type:varchar(128);column:auth_token"`
	EncryptedPassword string `gorm:"type:varchar(128);column:encrypted_password"`
	Phone             string `gorm:"type:varchar(128);column:phone"`
	State             string `gorm:"type:varchar(128);column:state"`
}

type AdminSerializer struct {
	ID                uint       `json:"id"`
	CreatedAt         time.Time  `json:"created_at"`
	UpdatedAt         time.Time  `json:"updated_at"`
	DeletedAt         *time.Time `json:"deleted_at"`
	Name              string     `json:"name"`
	AuthToken         string     `json:"auth_token"`
	EncryptedPassword string     `json:"encrypted_password"`
	Phone             string     `json:"phone"`
	State             string     `json:"state"`
}

func (a *Admin) Serializer() AdminSerializer {
	return AdminSerializer{
		ID:                a.ID,
		CreatedAt:         a.CreatedAt,
		UpdatedAt:         a.UpdatedAt,
		DeletedAt:         a.DeletedAt,
		Name:              a.Name,
		AuthToken:         a.AuthToken,
		EncryptedPassword: a.EncryptedPassword,
		Phone:             a.Phone,
		State:             a.State,
	}
}

//对token使用Encrypt加密更新密码
func (a *Admin) UpdatePassWord(password string) {
	var newPassword string
	newPassword = crypt.PassWordEncrypted(password)
	oldAuthToken := a.AuthToken
	a.EncryptedPassword = newPassword

	var admin Admin
	if dbError := initiator.POSTGRES.Where("auth_token = ?", oldAuthToken).First(&admin).Error; dbError != nil {
		panic("no exists user")
	}

	if dbError := initiator.POSTGRES.Save(&admin).Error; dbError != nil {
		panic("update error")
	}
	return

}

//核查password是否正确
func (a *Admin) PasswordCheck(password string) bool {
	if err := bcrypt.CompareHashAndPassword([]byte(a.EncryptedPassword), []byte(password)); err != nil {
		return false
	}
	return true
}
