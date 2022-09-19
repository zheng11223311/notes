.class public Lcom/alibaba/sdk/android/security/utils/SecurityUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/security/utils/SecurityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/security/utils/SecurityUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestInitServer(Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/sdk/android/model/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/sdk/android/model/Result",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "certName"

    const-string v1, "201506"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/util/HttpHelper;->post(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/util/JSONUtils;->toStringResult(Ljava/lang/String;)Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    iget v1, v0, Lcom/alibaba/sdk/android/model/Result;->code:I

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->refreshCer()V

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/util/HttpHelper;->post(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/util/JSONUtils;->toStringResult(Ljava/lang/String;)Lcom/alibaba/sdk/android/model/Result;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alibaba/sdk/android/security/utils/SecurityUtils;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request init server after cer invalid, response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
