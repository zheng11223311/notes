.class public Lcn/domob/android/ads/a/b;
.super Lcn/domob/android/ads/h;
.source "SourceFile"


# static fields
.field private static d:Lcn/domob/android/ads/c/f;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/b;->d:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p3}, Lcn/domob/android/ads/h;-><init>(Landroid/content/Context;I)V

    .line 15
    sget-object v0, Lcn/domob/android/ads/a/b;->d:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate DmWebView with ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcn/domob/android/ads/a/b;->e:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcn/domob/android/ads/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "d_method.js"

    aput-object v3, v1, v2

    .line 32
    invoke-super {p0, v0, v1}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 21
    const-string v0, "NO_ID"

    iput-object v0, p0, Lcn/domob/android/ads/a/b;->e:Ljava/lang/String;

    .line 24
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/b;->e:Ljava/lang/String;

    return-object v0
.end method
