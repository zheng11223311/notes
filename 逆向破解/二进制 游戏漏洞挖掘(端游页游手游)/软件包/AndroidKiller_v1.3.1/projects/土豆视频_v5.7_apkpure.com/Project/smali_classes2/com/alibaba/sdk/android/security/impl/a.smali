.class public Lcom/alibaba/sdk/android/security/impl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/initialization/InitializationHandler;
.implements Lcom/alibaba/sdk/android/security/AccessController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/initialization/InitializationHandler",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/alibaba/sdk/android/security/AccessController;"
    }
.end annotation


# static fields
.field public static final a:Lcom/alibaba/sdk/android/security/impl/a;

.field private static final b:Ljava/lang/String;


# instance fields
.field private volatile c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/sdk/android/security/WebAccessPermission;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private volatile f:Lorg/json/JSONObject;

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/security/impl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/sdk/android/security/impl/a;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/security/impl/a;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/security/impl/a;->a:Lcom/alibaba/sdk/android/security/impl/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->c:Ljava/util/Set;

    new-instance v0, Lcom/alibaba/sdk/android/security/impl/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/security/impl/c;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/security/impl/a;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->c:Ljava/util/Set;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v1, "plugins"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "prohibited_list"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/alibaba/sdk/android/security/impl/a;->c:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "webpages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v0, Lcom/alibaba/sdk/android/security/impl/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/security/impl/c;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/alibaba/sdk/android/security/impl/a;->d:Ljava/util/List;

    const-string v0, "configs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->f:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v4, "grant_list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v0, Lcom/alibaba/sdk/android/security/impl/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/security/impl/c;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to update the access controller, the error message is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_3
    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    sget-object v6, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Empty type/value for the current web access permission "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string v8, "prefix"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v5, Lcom/alibaba/sdk/android/security/impl/d;

    invoke-direct {v5, v6}, Lcom/alibaba/sdk/android/security/impl/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string v8, "regexp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v5, Lcom/alibaba/sdk/android/security/impl/e;

    invoke-direct {v5, v6}, Lcom/alibaba/sdk/android/security/impl/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const-string v8, "strict"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v5, Lcom/alibaba/sdk/android/security/impl/i;

    invoke-direct {v5, v6}, Lcom/alibaba/sdk/android/security/impl/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    sget-object v6, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unrecognized url permssion "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v1, "alisdk.sdk_access_permissions"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->getValueFromDynamicDataStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/security/impl/a;->a(Ljava/lang/String;)V

    :cond_1
    const-string v1, "alisdk.next_sdk_access_permissions_timestamp"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->getValueFromDynamicDataStore(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->g:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    sget-object v0, Lcom/alibaba/sdk/android/security/impl/f;->c:Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;

    const-string v1, "ignoreACLInterval"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    :try_start_4
    iput-wide v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->g:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public checkPluginLoadPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkWebPageAccessPermission(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/WebAccessPermission;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/security/WebAccessPermission;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createRequestParameters()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->f:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestParameterKey()Ljava/lang/String;
    .locals 1

    const-string v0, "acl"

    return-object v0
.end method

.method public getRequestServiceType()I
    .locals 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/security/impl/a;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseValueKey()Ljava/lang/String;
    .locals 1

    const-string v0, "acl"

    return-object v0
.end method

.method public handleResponseError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic handleResponseValue(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6

    const/4 v1, -0x1

    if-nez p1, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    const-string v1, "Null response returned for acl"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v0, "code"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to query acl info, the error code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " message = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    const-string v1, "Failed to query acl info, no data in the response"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "expireIn"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/sdk/android/security/impl/a;->g:J

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v2, "alisdk.next_sdk_access_permissions_timestamp"

    iget-wide v4, p0, Lcom/alibaba/sdk/android/security/impl/a;->g:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->putValueInDynamicDataStore(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/a;->b:Ljava/lang/String;

    const-string v1, "Failed to query acl info, no auth data in the response"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/security/impl/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v2, "alisdk.sdk_access_permissions"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->putValueInDynamicDataStore(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/security/impl/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/f;->b:Lcom/alibaba/sdk/android/executor/ExecutorService;

    new-instance v1, Lcom/alibaba/sdk/android/security/impl/b;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/security/impl/b;-><init>(Lcom/alibaba/sdk/android/security/impl/a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/executor/ExecutorService;->postTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
