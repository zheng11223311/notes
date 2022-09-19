.class public Lo/b;
.super Lo/c;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/alipay/android/app/net/Request;

    sget-object v1, Lm/d;->a:Lm/d;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/a;Lorg/json/JSONObject;Lb/j;Lm/d;)V

    new-instance v1, Lcom/alipay/android/app/net/e;

    invoke-direct {v1}, Lcom/alipay/android/app/net/e;-><init>()V

    invoke-direct {p0, v0, v1}, Lo/c;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
