.class public Lg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lm/a;)Lb/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lm/d;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lm/d;->a:Lm/d;

    return-object v0
.end method

.method public b(Lm/a;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p1}, Lm/a;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    const-string v1, "dismiss_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lm/a;->b(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public synthetic c(Lm/a;)Lo/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lg/a;->a(Lm/a;)Lb/n;

    move-result-object v0

    return-object v0
.end method
