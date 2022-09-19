.class public final Lcom/alibaba/sdk/android/ut/impl/b;
.super Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/reflect/Field;

.field private f:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/reflect/Method;

.field private i:Landroid/content/Context;

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->d:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->e:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->f:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->g:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->h:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/alibaba/sdk/android/ut/impl/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/ut/impl/b;->i:Landroid/content/Context;

    :try_start_0
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/sdk/android/ut/impl/b;->i:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/ut/impl/b;->b:Ljava/lang/Object;

    const-string v1, "getSecureSignatureComp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/ut/impl/b;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "com.alibaba.wireless.security.open.SecurityGuardParamContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->d:Ljava/lang/Class;

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->d:Ljava/lang/Class;

    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->e:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->d:Ljava/lang/Class;

    const-string v1, "paramMap"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->f:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->d:Ljava/lang/Class;

    const-string v1, "requestType"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->g:Ljava/lang/reflect/Field;

    const-string v0, "com.alibaba.wireless.security.open.securesignature.ISecureSignatureComponent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "signRequest"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/sdk/android/ut/impl/b;->d:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->h:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->j:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ut"

    const-string v2, "Fail to load security signature component"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ut"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to init UT, the error message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final getAppkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ut"

    const-string v2, "UTSecuritySDKRequestAuthentication:getSign, There is no appkey,please check it!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->j:Z

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->e:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/alibaba/sdk/android/ut/impl/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "INPUT"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->g:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/ut/impl/b;->h:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alibaba/sdk/android/ut/impl/b;->c:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v5, Lcom/alibaba/sdk/android/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
