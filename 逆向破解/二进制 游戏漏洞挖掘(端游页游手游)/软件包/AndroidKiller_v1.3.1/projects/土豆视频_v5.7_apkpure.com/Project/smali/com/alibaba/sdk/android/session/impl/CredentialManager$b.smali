.class final Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/session/impl/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-static {v0}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->a(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)Lcom/alibaba/sdk/android/session/SessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/session/impl/CredentialManager$b;->a:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSession()Lcom/alibaba/sdk/android/session/model/Session;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/session/SessionListener;->onStateChanged(Lcom/alibaba/sdk/android/session/model/Session;)V

    :cond_0
    return-void
.end method
