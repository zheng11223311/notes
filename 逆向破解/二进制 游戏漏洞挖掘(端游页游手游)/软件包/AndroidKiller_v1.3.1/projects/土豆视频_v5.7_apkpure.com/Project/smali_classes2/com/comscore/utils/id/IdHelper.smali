.class public Lcom/comscore/utils/id/IdHelper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/comscore/utils/Storage;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comscore/utils/Storage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->h:Z

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->j:Z

    iput-object p1, p0, Lcom/comscore/utils/id/IdHelper;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/id/IdHelperAndroid;->getAdvertisingDeviceId(Landroid/content/Context;)Lcom/comscore/android/id/DeviceId;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/comscore/utils/id/IdHelper;->h:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getCommonness()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getPersistency()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iput-boolean p2, p0, Lcom/comscore/utils/id/IdHelper;->h:Z

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v2, "md5RawCrossPublisherId"

    invoke-virtual {v0, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/comscore/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v1, "crossPublisherId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->a:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/comscore/utils/id/IdHelper;->h:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iput-boolean v1, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->j:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/comscore/utils/id/IdHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v1, "crossPublisherId"

    iget-object v2, p0, Lcom/comscore/utils/id/IdHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v1, "md5RawCrossPublisherId"

    iget-object v2, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v1, "md5RawCrossPublisherId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/comscore/utils/Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "-cs"

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/comscore/android/id/IdHelperAndroid;->getDeviceId(Landroid/content/Context;)Lcom/comscore/android/id/DeviceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/comscore/android/id/DeviceId;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/comscore/utils/id/IdHelper;->getPublisherSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comscore/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Lcom/comscore/utils/Storage;

    const-string v1, "vid"

    iget-object v2, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/id/IdHelperAndroid;->isAdvertisingIdEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/comscore/utils/id/IdHelper;->k:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->a()V

    goto :goto_0
.end method


# virtual methods
.method public generateIds()V
    .locals 1

    invoke-virtual {p0}, Lcom/comscore/utils/id/IdHelper;->isPublisherSecretEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/id/IdHelperAndroid;->getDeviceId(Landroid/content/Context;)Lcom/comscore/android/id/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->b()V

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->a()V

    goto :goto_0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossPublisherId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->a()V

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->j:Z

    if-nez v0, :cond_0

    const-string v0, "none"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "none"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMD5AdvertisingId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublisherSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isIdChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    return v0
.end method

.method public isPublisherSecretEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPublisherSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/utils/id/IdHelper;->e:Ljava/lang/String;

    return-void
.end method
