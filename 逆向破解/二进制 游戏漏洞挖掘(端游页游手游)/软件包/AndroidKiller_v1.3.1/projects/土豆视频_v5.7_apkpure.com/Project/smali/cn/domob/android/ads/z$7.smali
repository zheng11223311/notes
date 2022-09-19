.class Lcn/domob/android/ads/z$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/f/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/z$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/z$b;

.field final synthetic b:Lcn/domob/android/ads/z;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$b;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcn/domob/android/ads/z$7;->b:Lcn/domob/android/ads/z;

    iput-object p2, p0, Lcn/domob/android/ads/z$7;->a:Lcn/domob/android/ads/z$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcn/domob/android/ads/z$7;->b:Lcn/domob/android/ads/z;

    invoke-static {v0}, Lcn/domob/android/ads/z;->d(Lcn/domob/android/ads/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcn/domob/android/ads/z$7;->b:Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/z$7;->a:Lcn/domob/android/ads/z$b;

    invoke-static {v0, v1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$b;)V

    .line 467
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcn/domob/android/ads/z$7;->b:Lcn/domob/android/ads/z;

    invoke-static {v0}, Lcn/domob/android/ads/z;->d(Lcn/domob/android/ads/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcn/domob/android/ads/z$7;->b:Lcn/domob/android/ads/z;

    invoke-static {v0}, Lcn/domob/android/ads/z;->c(Lcn/domob/android/ads/z;)V

    .line 473
    :cond_0
    return-void
.end method
