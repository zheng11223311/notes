.class public Lcom/youku/vo/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"


# static fields
.field private static final AboutMyself:Ljava/lang/String; = "about_myself"

.field private static final IsVuser:Ljava/lang/String; = "isVuser"

.field private static final LAST_TRADE_ID:Ljava/lang/String; = "last_trade_id"

.field private static final LAST_TRADE_STATUS:Ljava/lang/String; = "last_trade_status"

.field private static final LAST_TRADE_TIME:Ljava/lang/String; = "last_trade_time"

.field private static final NICK_NAME:Ljava/lang/String; = "nickname"

.field private static final PASS_SET:Ljava/lang/String; = "is_passwd_set"

.field private static final SUBED_COUNT:Ljava/lang/String; = "subed_count"

.field public static final USER:Ljava/lang/String; = "userToken"

.field private static final USER_ID:Ljava/lang/String; = "uid"

.field private static final USER_NAME:Ljava/lang/String; = "username"

.field private static final USER_PIC:Ljava/lang/String; = "userpic"

.field private static final UploadCount:Ljava/lang/String; = "uploadCount"

.field private static final VIP_MMID:Ljava/lang/String; = "mmid"

.field private static final VIP_grade:Ljava/lang/String; = "vip_grade"

.field private static final VIP_platform:Ljava/lang/String; = "vip_platform"

.field private static final VIP_year:Ljava/lang/String; = "vip_year"

.field private static final VipMember:Ljava/lang/String; = "vip_member"

.field private static final YKTK:Ljava/lang/String; = "yktk"

.field private static mUserBean:Lcom/youku/vo/UserBean;


# instance fields
.field public about_myself:Ljava/lang/String;

.field public checkedCount:I

.field private codeid:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public isCheckedSucess:Z

.field private isLogin:Z

.field private isNeedSetPwd:Z

.field private isRemeber:Z

.field public isVip:Z

.field public isVuser:Z

.field public last_trade_id:Ljava/lang/String;

.field public last_trade_status:Z

.field public last_trade_time:J

.field public mmid:J

.field private nickName:Ljava/lang/String;

.field private oldPassword:Ljava/lang/String;

.field private padding:I

.field private passWord:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field public remain_days:Ljava/lang/String;

.field public subed_count:I

.field public uploadCount:I

.field public uploadingCount:I

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPic:Ljava/lang/String;

.field private userType:I

.field private vcode:Ljava/lang/String;

.field private vertifiyCode:Ljava/lang/String;

.field public vipName:Ljava/lang/String;

.field public vip_grade:I

.field public vip_platform:I

.field public vip_year:I

.field private yktk:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/UserBean;->vcode:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/UserBean;->codeid:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/UserBean;->padding:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/vo/UserBean;->last_trade_status:Z

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youku/vo/UserBean;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/youku/vo/UserBean;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/vo/UserBean;->mUserBean:Lcom/youku/vo/UserBean;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/youku/vo/UserBean;

    invoke-direct {v0}, Lcom/youku/vo/UserBean;-><init>()V

    sput-object v0, Lcom/youku/vo/UserBean;->mUserBean:Lcom/youku/vo/UserBean;

    .line 46
    :cond_0
    sget-object v0, Lcom/youku/vo/UserBean;->mUserBean:Lcom/youku/vo/UserBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isVip()Z
    .locals 4

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v2, 0x186a2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSkipAd()Z
    .locals 6

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "ret":Z
    iget-wide v2, p0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v4, 0x186a1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v4, 0x186a2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v4, 0x186a4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x1

    .line 483
    :cond_1
    return v0
.end method

.method public cancelLocal()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 395
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 396
    .local v0, "userBean":Lcom/youku/vo/UserBean;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setUserId(Ljava/lang/String;)V

    .line 397
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setYktk(Ljava/lang/String;)V

    .line 398
    iput-boolean v2, v0, Lcom/youku/vo/UserBean;->isNeedSetPwd:Z

    .line 399
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 400
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setUserName(Ljava/lang/String;)V

    .line 401
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setUserPic(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, v2}, Lcom/youku/vo/UserBean;->setUploadCount(I)V

    .line 404
    invoke-virtual {v0, v2}, Lcom/youku/vo/UserBean;->setSubed_count(I)V

    .line 406
    iput-boolean v2, v0, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    .line 407
    iput v2, v0, Lcom/youku/vo/UserBean;->checkedCount:I

    .line 408
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setAbout_myself(Ljava/lang/String;)V

    .line 409
    iput-boolean v2, v0, Lcom/youku/vo/UserBean;->isVuser:Z

    .line 410
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setLastTradeId(Ljava/lang/String;)V

    .line 411
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setLastTradeStatus(Z)V

    .line 412
    invoke-virtual {v0, v4, v5}, Lcom/youku/vo/UserBean;->setLastTradeTime(J)V

    .line 413
    iput-boolean v2, v0, Lcom/youku/vo/UserBean;->isVip:Z

    .line 415
    iput-wide v4, v0, Lcom/youku/vo/UserBean;->mmid:J

    .line 416
    iput v2, v0, Lcom/youku/vo/UserBean;->vip_platform:I

    .line 417
    iput v2, v0, Lcom/youku/vo/UserBean;->vip_grade:I

    .line 418
    iput v2, v0, Lcom/youku/vo/UserBean;->vip_year:I

    .line 430
    invoke-virtual {p0}, Lcom/youku/vo/UserBean;->saveLocal()V

    .line 431
    const-string v1, "TAG_TUDOU"

    const-string v2, "cancelLocal()======="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public getAbout_myself()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/youku/vo/UserBean;->about_myself:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/youku/vo/UserBean;->checkedCount:I

    return v0
.end method

.method public getCodeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/youku/vo/UserBean;->codeid:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/vo/UserBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEnc()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/youku/vo/UserBean;->padding:I

    if-ltz v0, :cond_0

    .line 468
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastTradeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/vo/UserBean;->last_trade_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTradeStatus()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->last_trade_status:Z

    return v0
.end method

.method public getLastTradeTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/youku/vo/UserBean;->last_trade_time:J

    return-wide v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/youku/vo/UserBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOldPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/youku/vo/UserBean;->oldPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/youku/vo/UserBean;->padding:I

    return v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/vo/UserBean;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/youku/vo/UserBean;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSubed_count()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/youku/vo/UserBean;->subed_count:I

    return v0
.end method

.method public getUploadCount()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/youku/vo/UserBean;->uploadCount:I

    return v0
.end method

.method public getUploadingCount()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/youku/vo/UserBean;->uploadingCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/youku/vo/UserBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/youku/vo/UserBean;->userPic:Ljava/lang/String;

    return-object v0
.end method

.method public getVcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/youku/vo/UserBean;->vcode:Ljava/lang/String;

    return-object v0
.end method

.method public getVertifiyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/youku/vo/UserBean;->vertifiyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getYktk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/youku/vo/UserBean;->yktk:Ljava/lang/String;

    return-object v0
.end method

.method public hasCheckedItem()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/vo/UserBean;->checkedCount:I

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->isLogin:Z

    return v0
.end method

.method public isNeedSetPwd()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->isNeedSetPwd:Z

    return v0
.end method

.method public isRemeber()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->isRemeber:Z

    return v0
.end method

.method public isVuser()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/youku/vo/UserBean;->isVuser:Z

    return v0
.end method

.method public parseUserJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 306
    const-string v3, "data"

    invoke-static {p1, v3}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 307
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v3, "user"

    invoke-static {p1, v3}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 309
    .local v1, "user":Lorg/json/JSONObject;
    const-string/jumbo v3, "uid"

    invoke-static {v0, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    const-string/jumbo v3, "userId"

    invoke-static {v0, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    .line 313
    :cond_0
    const-string/jumbo v3, "yktk"

    invoke-static {v0, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/vo/UserBean;->yktk:Ljava/lang/String;

    .line 314
    const-string/jumbo v3, "user_type"

    invoke-static {v0, v3}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/vo/UserBean;->userType:I

    .line 315
    const-string v3, "is_passwd_set"

    invoke-static {v0, v3, v2}, Lcom/youku/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/youku/vo/UserBean;->userType:I

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/youku/vo/UserBean;->isNeedSetPwd:Z

    .line 317
    const-string v2, "nickname"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/UserBean;->nickName:Ljava/lang/String;

    .line 318
    const-string/jumbo v2, "username"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/UserBean;->userName:Ljava/lang/String;

    .line 319
    const-string/jumbo v2, "userpic"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/UserBean;->userPic:Ljava/lang/String;

    .line 322
    const-string v2, "isVuser"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/youku/vo/UserBean;->isVuser:Z

    .line 323
    const-string/jumbo v2, "vip_member"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/youku/vo/UserBean;->isVip:Z

    .line 326
    const-string v2, "mmid"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/vo/UserBean;->mmid:J

    .line 327
    const-string/jumbo v2, "vip_platform"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/UserBean;->vip_platform:I

    .line 328
    const-string/jumbo v2, "vip_grade"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/UserBean;->vip_grade:I

    .line 329
    const-string/jumbo v2, "vip_year"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youku/vo/UserBean;->vip_year:I

    .line 332
    invoke-direct {p0}, Lcom/youku/vo/UserBean;->isVip()Z

    move-result v2

    iput-boolean v2, p0, Lcom/youku/vo/UserBean;->isVip:Z

    .line 333
    return-void

    .line 315
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readLocal()V
    .locals 3

    .prologue
    .line 369
    const-string/jumbo v0, "uid"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "yktk"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/UserBean;->yktk:Ljava/lang/String;

    .line 371
    const-string v0, "is_passwd_set"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/vo/UserBean;->isNeedSetPwd:Z

    .line 372
    const-string v0, "nickname"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/UserBean;->nickName:Ljava/lang/String;

    .line 373
    const-string/jumbo v0, "username"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/UserBean;->userName:Ljava/lang/String;

    .line 374
    const-string/jumbo v0, "userpic"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/UserBean;->userPic:Ljava/lang/String;

    .line 376
    const-string/jumbo v0, "uploadCount"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/vo/UserBean;->uploadCount:I

    .line 377
    const-string v0, "isVuser"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/vo/UserBean;->isVuser:Z

    .line 379
    const-string/jumbo v0, "vip_member"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/vo/UserBean;->isVip:Z

    .line 380
    const-string v0, "about_myself"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/UserBean;->about_myself:Ljava/lang/String;

    .line 381
    const-string/jumbo v0, "subed_count"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/vo/UserBean;->subed_count:I

    .line 382
    const-string v0, "last_trade_id"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/UserBean;->last_trade_id:Ljava/lang/String;

    .line 383
    const-string v0, "last_trade_time"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/vo/UserBean;->last_trade_time:J

    .line 384
    const-string v0, "last_trade_status"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/vo/UserBean;->last_trade_status:Z

    .line 386
    const-string v0, "mmid"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/vo/UserBean;->mmid:J

    .line 387
    const-string/jumbo v0, "vip_platform"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/vo/UserBean;->vip_platform:I

    .line 388
    const-string/jumbo v0, "vip_grade"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/vo/UserBean;->vip_grade:I

    .line 389
    const-string/jumbo v0, "vip_year"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/vo/UserBean;->vip_year:I

    .line 390
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLocal()=========userId==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "===nickName==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/vo/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public saveLocal()V
    .locals 4

    .prologue
    .line 343
    const-string/jumbo v0, "uid"

    iget-object v1, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v0, "yktk"

    iget-object v1, p0, Lcom/youku/vo/UserBean;->yktk:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "is_passwd_set"

    iget-boolean v1, p0, Lcom/youku/vo/UserBean;->isNeedSetPwd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 346
    const-string v0, "nickname"

    iget-object v1, p0, Lcom/youku/vo/UserBean;->nickName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "username"

    iget-object v1, p0, Lcom/youku/vo/UserBean;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "userpic"

    iget-object v1, p0, Lcom/youku/vo/UserBean;->userPic:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "uploadCount"

    iget v1, p0, Lcom/youku/vo/UserBean;->uploadCount:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 351
    const-string v0, "isVuser"

    iget-boolean v1, p0, Lcom/youku/vo/UserBean;->isVuser:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 353
    const-string/jumbo v0, "vip_member"

    iget-boolean v1, p0, Lcom/youku/vo/UserBean;->isVip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 354
    const-string v0, "about_myself"

    iget-object v1, p0, Lcom/youku/vo/UserBean;->about_myself:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v0, "subed_count"

    iget v1, p0, Lcom/youku/vo/UserBean;->subed_count:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 356
    const-string v0, "last_trade_id"

    iget-object v1, p0, Lcom/youku/vo/UserBean;->last_trade_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "last_trade_time"

    iget-wide v2, p0, Lcom/youku/vo/UserBean;->last_trade_time:J

    invoke-static {v0, v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;J)V

    .line 358
    const-string v0, "last_trade_status"

    iget-boolean v1, p0, Lcom/youku/vo/UserBean;->last_trade_status:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 360
    const-string v0, "mmid"

    iget-wide v2, p0, Lcom/youku/vo/UserBean;->mmid:J

    invoke-static {v0, v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;J)V

    .line 361
    const-string/jumbo v0, "vip_platform"

    iget v1, p0, Lcom/youku/vo/UserBean;->vip_platform:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 362
    const-string/jumbo v0, "vip_grade"

    iget v1, p0, Lcom/youku/vo/UserBean;->vip_grade:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 363
    const-string/jumbo v0, "vip_year"

    iget v1, p0, Lcom/youku/vo/UserBean;->vip_year:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 364
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveLocal()=========userId==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "===nickName==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/vo/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public setAbout_myself(Ljava/lang/String;)V
    .locals 0
    .param p1, "about_myself"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/youku/vo/UserBean;->about_myself:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setCheckedCount(I)V
    .locals 0
    .param p1, "checkedCount"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/youku/vo/UserBean;->checkedCount:I

    .line 279
    return-void
.end method

.method public setCodeid(Ljava/lang/String;)V
    .locals 0
    .param p1, "codeid"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/youku/vo/UserBean;->codeid:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/youku/vo/UserBean;->email:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setLastTradeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "last_trade_id"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youku/vo/UserBean;->last_trade_id:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLastTradeStatus(Z)V
    .locals 0
    .param p1, "isFinish"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/youku/vo/UserBean;->last_trade_status:Z

    .line 110
    return-void
.end method

.method public setLastTradeTime(J)V
    .locals 1
    .param p1, "last_trade_time"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/youku/vo/UserBean;->last_trade_time:J

    .line 99
    return-void
.end method

.method public setLogin(Z)V
    .locals 0
    .param p1, "isLogin"    # Z

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/youku/vo/UserBean;->isLogin:Z

    .line 440
    return-void
.end method

.method public setNeedSetPwd(Z)V
    .locals 0
    .param p1, "isNeedSetPwd"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/youku/vo/UserBean;->isNeedSetPwd:Z

    .line 231
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/youku/vo/UserBean;->nickName:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setOldPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldPassword"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/vo/UserBean;->oldPassword:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/youku/vo/UserBean;->padding:I

    .line 459
    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "passWord"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/youku/vo/UserBean;->passWord:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/youku/vo/UserBean;->phoneNumber:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setRemeber(Z)V
    .locals 0
    .param p1, "isRemeber"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/youku/vo/UserBean;->isRemeber:Z

    .line 207
    return-void
.end method

.method public setSubed_count(I)V
    .locals 0
    .param p1, "subed_count"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/youku/vo/UserBean;->subed_count:I

    .line 271
    return-void
.end method

.method public setUploadCount(I)V
    .locals 0
    .param p1, "uploadCount"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/youku/vo/UserBean;->uploadCount:I

    .line 263
    return-void
.end method

.method public setUploadingCount(I)V
    .locals 0
    .param p1, "uploadingCount"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/youku/vo/UserBean;->uploadingCount:I

    .line 287
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/youku/vo/UserBean;->userId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/youku/vo/UserBean;->userName:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setUserPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPic"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/youku/vo/UserBean;->userPic:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setVcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "vcode"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/youku/vo/UserBean;->vcode:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setVertifiyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "vertifiyCode"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/youku/vo/UserBean;->vertifiyCode:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setVuser(Z)V
    .locals 0
    .param p1, "isVuser"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/youku/vo/UserBean;->isVuser:Z

    .line 295
    return-void
.end method

.method public setYktk(Ljava/lang/String;)V
    .locals 0
    .param p1, "yktk"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/youku/vo/UserBean;->yktk:Ljava/lang/String;

    .line 239
    return-void
.end method
