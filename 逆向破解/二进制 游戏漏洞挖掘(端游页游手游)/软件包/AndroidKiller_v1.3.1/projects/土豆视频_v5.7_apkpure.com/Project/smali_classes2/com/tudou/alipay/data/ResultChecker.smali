.class public Lcom/tudou/alipay/data/ResultChecker;
.super Ljava/lang/Object;
.source "ResultChecker.java"


# static fields
.field public static final RESULT_CHECK_SIGN_FAILED:I = 0x1

.field public static final RESULT_CHECK_SIGN_SUCCEED:I = 0x2

.field public static final RESULT_INVALID_PARAM:I


# instance fields
.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/alipay/data/ResultChecker;->mContent:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/tudou/alipay/data/ResultChecker;->mContent:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultChecker.content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private checkSign()I
    .locals 11

    .prologue
    .line 56
    const/4 v5, 0x2

    .line 59
    .local v5, "retVal":I
    :try_start_0
    iget-object v9, p0, Lcom/tudou/alipay/data/ResultChecker;->mContent:Ljava/lang/String;

    const-string v10, ";"

    invoke-static {v9, v10}, Lcom/tudou/alipay/data/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    .local v2, "objContent":Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "result":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 63
    const-string v9, "&sign_type="

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "iSignContentEnd":I
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "signContent":Ljava/lang/String;
    const-string v9, "&"

    invoke-static {v4, v9}, Lcom/tudou/alipay/data/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    .local v3, "objResult":Lorg/json/JSONObject;
    const-string v9, "sign_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "signType":Ljava/lang/String;
    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 70
    const-string v9, "sign"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "sign":Ljava/lang/String;
    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 73
    const-string v9, "RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 74
    const-string v9, ""

    invoke-static {v7, v6, v9}, Lcom/tudou/alipay/data/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    .line 75
    const/4 v5, 0x1

    .line 82
    .end local v1    # "iSignContentEnd":I
    .end local v2    # "objContent":Lorg/json/JSONObject;
    .end local v3    # "objResult":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "sign":Ljava/lang/String;
    .end local v7    # "signContent":Ljava/lang/String;
    .end local v8    # "signType":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSuccess()Ljava/lang/String;
    .locals 8

    .prologue
    .line 31
    const/4 v4, 0x0

    .line 34
    .local v4, "success":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/tudou/alipay/data/ResultChecker;->mContent:Ljava/lang/String;

    const-string v6, ";"

    invoke-static {v5, v6}, Lcom/tudou/alipay/data/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 35
    .local v1, "objContent":Lorg/json/JSONObject;
    const-string v5, "result"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "result":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 38
    const-string v5, "&"

    invoke-static {v3, v5}, Lcom/tudou/alipay/data/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 39
    .local v2, "objResult":Lorg/json/JSONObject;
    const-string v5, "success"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 45
    .end local v1    # "objContent":Lorg/json/JSONObject;
    .end local v2    # "objResult":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResultChecker.getSuccess():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v4

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    const-string v1, ""

    .line 101
    .local v1, "memo":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tudou/alipay/data/ResultChecker;->mContent:Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v3, v4}, Lcom/tudou/alipay/data/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 102
    .local v2, "objContent":Lorg/json/JSONObject;
    const-string v3, "memo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    .end local v2    # "objContent":Lorg/json/JSONObject;
    :goto_0
    sget-object v3, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultChecker.getMemo():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 6

    .prologue
    .line 86
    const-string v2, ""

    .line 88
    .local v2, "resultStatus":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tudou/alipay/data/ResultChecker;->mContent:Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v3, v4}, Lcom/tudou/alipay/data/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    .local v1, "objContent":Lorg/json/JSONObject;
    const-string v3, "resultStatus"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    .end local v1    # "objContent":Lorg/json/JSONObject;
    :goto_0
    sget-object v3, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultChecker.getResultStatus():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isPayOk()Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "9000"

    invoke-virtual {p0}, Lcom/tudou/alipay/data/ResultChecker;->getResultStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    invoke-direct {p0}, Lcom/tudou/alipay/data/ResultChecker;->getSuccess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPayOk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "resultStatus"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "9000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
