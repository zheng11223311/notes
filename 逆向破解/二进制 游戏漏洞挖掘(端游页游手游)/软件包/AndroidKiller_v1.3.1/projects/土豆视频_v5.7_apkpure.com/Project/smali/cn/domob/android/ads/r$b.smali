.class Lcn/domob/android/ads/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/r;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/r;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcn/domob/android/ads/r$b;->a:Lcn/domob/android/ads/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method
