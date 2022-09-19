.class public Lcom/unicom/iap/utils/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field public static final CANCELORDER:Ljava/lang/String; = "cancelOrder"

.field public static final INITSDK:Ljava/lang/String; = "initSdk"

.field public static final NETNUMBER:Ljava/lang/String; = "netNumber"

.field public static final ORDER:Ljava/lang/String; = "order"

.field public static final QUERYORDERS:Ljava/lang/String; = "queryOrders"

.field public static final QUERYPLAYURL:Ljava/lang/String; = "queryPlayUrl"

.field public static final QUERYPRODUCTS:Ljava/lang/String; = "queryProduct"

.field public static final QUERYUSERINFO:Ljava/lang/String; = "queryUserInfo"

.field public static final QUERYUSERORDERS:Ljava/lang/String; = "queryUserOrders"

.field public static SDkVersion:Ljava/lang/String; = null

.field public static final SMSCODE:Ljava/lang/String; = "smsCode"

.field public static final SMSNUMBER:Ljava/lang/String; = "smsNumber"

.field public static final UPLOAD:Ljava/lang/String; = "fileUploadUrl"

.field public static final WOINTERFACE_SMSNUMBER:I = 0x1

.field public static appid:Ljava/lang/String;

.field public static apptype:Ljava/lang/String;

.field public static appversion:Ljava/lang/String;

.field public static cpKey:Ljava/lang/String;

.field public static cpid:Ljava/lang/String;

.field public static isSaveSdkKeyInfo:Z

.field public static jiesuoKey:Ljava/lang/String;

.field private static mMob:Lcom/unicom/iap/bean/Mob;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unicom/iap/utils/DataManager;->isSaveSdkKeyInfo:Z

    .line 49
    const-string v0, "android"

    sput-object v0, Lcom/unicom/iap/utils/DataManager;->apptype:Ljava/lang/String;

    .line 51
    const-string v0, "1.0.8"

    sput-object v0, Lcom/unicom/iap/utils/DataManager;->SDkVersion:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 361
    sput-object v2, Lcom/unicom/iap/utils/DataManager;->jiesuoKey:Ljava/lang/String;

    .line 362
    const/4 v1, 0x0

    sput-boolean v1, Lcom/unicom/iap/utils/DataManager;->isSaveSdkKeyInfo:Z

    .line 363
    sput-object v2, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    .line 365
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 366
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 367
    const-string v1, "contentOrderInfo"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 368
    const-string v1, "monthOrderInfo"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 370
    const-string v1, "synDate"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 371
    const-string v1, "cpKey"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 372
    const-string v1, "notice"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 373
    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 375
    const-string v1, "userid"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 376
    const-string v1, "area"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 377
    const-string v1, "province"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 378
    const-string v1, "mob"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 379
    const-string v1, "usermob"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 380
    const-string v1, "syncShipTime"

    invoke-virtual {v0, v1}, Lcom/unicom/iap/utils/SharedDB;->remove(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 383
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 384
    return-void
.end method

.method public static getContentOrderInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 329
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v1, ""

    .line 330
    .local v1, "strMonth":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 331
    const-string v2, "contentOrderInfo"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 333
    return-object v1
.end method

.method public static getCpKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-static {p1}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v1

    .line 168
    .local v1, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v1}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 169
    const-string v0, ""

    .line 170
    .local v0, "cpKey":Ljava/lang/String;
    const-string v2, "isSaveCpKey"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "cpKey"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_0
    return-object v0
.end method

.method public static getDBIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 353
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v1, ""

    .line 354
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 355
    const-string v2, "IMSI"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 357
    return-object v1
.end method

.method public static getDisplayPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 217
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v1, ""

    .line 218
    .local v1, "userid":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 219
    const-string v2, "usermob"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 221
    return-object v1
.end method

.method public static getGenerateContent(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "busiid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v0, "requestMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "version"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "busiid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "sdkversion"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->SDkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "appversion"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unicom/iap/utils/DataManager;->apptype:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/unicom/iap/utils/DataManager;->appversion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-object v0
.end method

.method public static getMD5FromRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "cmd_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p0

    .line 466
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-static {p1}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 469
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 470
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 471
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 474
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMessages(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 154
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 155
    const-string v2, "messages"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "messages":Ljava/lang/String;
    return-object v1
.end method

.method public static getMob(Landroid/content/Context;)Lcom/unicom/iap/bean/Mob;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    if-nez v1, :cond_1

    .line 64
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 65
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 66
    const-string v1, "isSaveMob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lcom/unicom/iap/bean/Mob;

    invoke-direct {v1}, Lcom/unicom/iap/bean/Mob;-><init>()V

    sput-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    .line 68
    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    const-string v2, "userid"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unicom/iap/bean/Mob;->setUserid(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    const-string v2, "area"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unicom/iap/bean/Mob;->setArea(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    const-string v2, "province"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unicom/iap/bean/Mob;->setProvince(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    const-string v2, "usermob"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unicom/iap/bean/Mob;->setPhoneNumber(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 75
    .end local v0    # "db":Lcom/unicom/iap/utils/SharedDB;
    :cond_1
    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    return-object v1
.end method

.method public static getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 275
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v1, ""

    .line 276
    .local v1, "strMonth":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 277
    const-string v2, "monthOrderInfo"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 279
    return-object v1
.end method

.method public static getNativeIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 338
    .local v1, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "imsi":Ljava/lang/String;
    return-object v0
.end method

.method public static getNotice(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 147
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 148
    const-string v2, "notice"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "notice":Ljava/lang/String;
    return-object v1
.end method

.method public static getProductsInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cmd_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/unicom/iap/utils/DataManager;->getMD5FromRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 418
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v3, ""

    .line 419
    .local v3, "strMonth":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 420
    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    const-class v4, Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/unicom/iap/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 423
    .local v2, "mapp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 424
    return-object v2
.end method

.method public static getProductsInfoTime(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cmd_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/unicom/iap/utils/DataManager;->getMD5FromRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 437
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v2, ""

    .line 438
    .local v2, "strMonth":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 441
    return-object v2
.end method

.method public static getSynOrderHistoryDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 248
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v1, ""

    .line 249
    .local v1, "synDate":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 250
    const-string v2, "synDate"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 252
    return-object v1
.end method

.method public static final getTimestamp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 56
    .local v0, "timestamp":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUserid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 208
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    const-string v1, ""

    .line 209
    .local v1, "userid":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 210
    const-string v2, "userid"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/unicom/iap/utils/SharedDB;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 212
    return-object v1
.end method

.method public static isGetNumber(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, ""

    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getUserid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 196
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    :cond_1
    move v2, v1

    .line 196
    goto :goto_1
.end method

.method public static isInitCPinfo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    sget-object v0, Lcom/unicom/iap/utils/DataManager;->appid:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unicom/iap/utils/DataManager;->cpid:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/unicom/iap/utils/DataManager;->jiesuoKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static isMonthlyUser(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-static {p0}, Lcom/unicom/iap/sdk/WoVideoSDK;->getMonthOrderInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "monthJson":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 395
    const-class v4, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lcom/unicom/iap/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 396
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 397
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 398
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "2"

    const-string v5, "status"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v3

    .line 401
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isRegistration()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    sget-object v0, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unicom/iap/utils/DataManager;->appid:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unicom/iap/utils/DataManager;->cpid:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/unicom/iap/utils/DataManager;->jiesuoKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static saveContentOrderInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strContent"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 316
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 317
    const-string v1, "contentOrderInfo"

    invoke-virtual {v0, v1, p1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 319
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 320
    return-void
.end method

.method public static saveCpKey(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "cpKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    sput-object p0, Lcom/unicom/iap/utils/DataManager;->cpKey:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 118
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 119
    const-string v1, "isSaveCpKey"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Z)V

    .line 120
    const-string v1, "cpKey"

    invoke-virtual {v0, v1, p0}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 122
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 123
    return-void
.end method

.method public static saveImsi(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    invoke-static {p0}, Lcom/unicom/iap/utils/DataManager;->getNativeIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 345
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 346
    const-string v2, "IMSI"

    invoke-virtual {v0, v2, v1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 348
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 349
    return-void
.end method

.method public static saveMob(Ljava/util/Map;Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/unicom/iap/bean/Mob;

    const-string v1, "userid"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "sequence"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "usermob"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "province"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "area"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/unicom/iap/bean/Mob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    .line 98
    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    const-string v0, "usermob"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unicom/iap/bean/Mob;->setPhoneNumber(Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v6

    .line 100
    .local v6, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v6}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 101
    const-string v0, "isSaveMob"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Z)V

    .line 102
    const-string v0, "userid"

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    invoke-virtual {v1}, Lcom/unicom/iap/bean/Mob;->getUserid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "area"

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    invoke-virtual {v1}, Lcom/unicom/iap/bean/Mob;->getArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "usermob"

    sget-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    invoke-virtual {v1}, Lcom/unicom/iap/bean/Mob;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 106
    invoke-virtual {v6}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 107
    return-void
.end method

.method public static saveMonthOrderInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strMonth"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 262
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 263
    const-string v1, "monthOrderInfo"

    invoke-virtual {v0, v1, p1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 265
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 266
    return-void
.end method

.method public static saveNoticeAndMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "notice"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 134
    :cond_0
    const-string p0, ""

    .line 135
    const-string p1, ""

    .line 137
    :cond_1
    invoke-static {p2}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 138
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 139
    const-string v1, "notice"

    invoke-virtual {v0, v1, p0}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "messages"

    invoke-virtual {v0, v1, p1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 142
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 143
    return-void
.end method

.method public static saveProductsInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cmd_id"    # Ljava/lang/String;
    .param p3, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .prologue
    .line 451
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v1

    .line 452
    .local v1, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v1}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 453
    invoke-static {p1, p2}, Lcom/unicom/iap/utils/DataManager;->getMD5FromRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "key":Ljava/lang/String;
    invoke-static {p3}, Lcom/unicom/iap/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "dateformat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "synDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 461
    invoke-virtual {v1}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 462
    return-void
.end method

.method public static saveSynOrderHistroyDate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "dateformat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "synDate":Ljava/lang/String;
    invoke-static {p0}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v1

    .line 240
    .local v1, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v1}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 241
    const-string v3, "synDate"

    invoke-virtual {v1, v3, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 243
    invoke-virtual {v1}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 244
    return-void
.end method

.method public static setMob(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "jsonMob"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-class v1, Lcom/unicom/iap/bean/Mob;

    invoke-static {p0, v1}, Lcom/unicom/iap/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unicom/iap/bean/Mob;

    sput-object v1, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    .line 80
    invoke-static {p1}, Lcom/unicom/iap/utils/SharedDB;->getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;

    move-result-object v0

    .line 81
    .local v0, "db":Lcom/unicom/iap/utils/SharedDB;
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 82
    const-string v1, "userid"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    invoke-virtual {v2}, Lcom/unicom/iap/bean/Mob;->getUserid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "area"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    invoke-virtual {v2}, Lcom/unicom/iap/bean/Mob;->getArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "province"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    invoke-virtual {v2}, Lcom/unicom/iap/bean/Mob;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "usermob"

    sget-object v2, Lcom/unicom/iap/utils/DataManager;->mMob:Lcom/unicom/iap/bean/Mob;

    invoke-virtual {v2}, Lcom/unicom/iap/bean/Mob;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 87
    invoke-virtual {v0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 88
    return-void
.end method
