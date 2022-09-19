.class public Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;
.super Ljava/lang/Object;


# instance fields
.field public filterProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public internalSessionStoreKey:Ljava/lang/String;

.field public isUpdateUTUser:Z

.field public isUpdateWebCookie:Z

.field public refreshTokenStoreKey:Ljava/lang/String;

.field public seedKey:Ljava/lang/String;

.field public sidForceRefreshInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->isUpdateUTUser:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->isUpdateWebCookie:Z

    const-string/jumbo v0, "refresh_token"

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->refreshTokenStoreKey:Ljava/lang/String;

    const-string v0, "internal_session"

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->internalSessionStoreKey:Ljava/lang/String;

    const-string/jumbo v0, "seed_key"

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->seedKey:Ljava/lang/String;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->sidForceRefreshInterval:J

    const-string/jumbo v0, "scope"

    const-string v1, "Taobao"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->filterProperties:Ljava/util/Map;

    return-void
.end method
