.class public Lcom/alibaba/cchannel/core/config/SignUtils;
.super Ljava/lang/Object;


# static fields
.field public static final seed_key_name:Ljava/lang/String; = "TMP_SEED_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRequestParameters(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/alibaba/cchannel/core/config/MobileInfo;->create(Landroid/content/Context;)Lcom/alibaba/cchannel/core/config/MobileInfo;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->deviceInfo:Lcom/alibaba/cchannel/core/config/a;

    iget-object v2, v2, Lcom/alibaba/cchannel/core/config/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->deviceInfo:Lcom/alibaba/cchannel/core/config/a;

    iget-object v2, v2, Lcom/alibaba/cchannel/core/config/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "imei"

    iget-object v3, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->deviceInfo:Lcom/alibaba/cchannel/core/config/a;

    iget-object v3, v3, Lcom/alibaba/cchannel/core/config/a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->mac:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mac"

    iget-object v3, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->mac:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->mobile:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mob"

    iget-object v3, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->mobile:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->location:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "location"

    iget-object v0, v0, Lcom/alibaba/cchannel/core/config/MobileInfo;->location:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/alibaba/cchannel/security/encryption/SecurityBoxHolder;->getSecurityBox()Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    move-result-object v0

    const-string v2, "TMP_SEED_KEY"

    invoke-interface {v0, v2}, Lcom/alibaba/cchannel/security/encryption/SecurityBox;->generateTempSeedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/cchannel/security/encryption/SecurityBoxHolder;->getSecurityBox()Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    move-result-object v2

    const-string v3, "TMP_SEED_KEY"

    invoke-interface {v2, v1, v3}, Lcom/alibaba/cchannel/security/encryption/SecurityBox;->generateSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "seedKey"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sign"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
