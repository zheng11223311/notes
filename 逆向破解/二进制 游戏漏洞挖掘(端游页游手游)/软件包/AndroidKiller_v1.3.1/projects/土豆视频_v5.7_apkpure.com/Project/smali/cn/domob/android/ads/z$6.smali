.class Lcn/domob/android/ads/z$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/z;->a(Lcn/domob/android/a/a/b;Lcn/domob/android/ads/z$b;)V
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
    .line 441
    iput-object p1, p0, Lcn/domob/android/ads/z$6;->b:Lcn/domob/android/ads/z;

    iput-object p2, p0, Lcn/domob/android/ads/z$6;->a:Lcn/domob/android/ads/z$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcn/domob/android/ads/z$6;->b:Lcn/domob/android/ads/z;

    invoke-static {v0, p1}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/z;Z)Z

    .line 446
    if-eqz p1, :cond_0

    .line 447
    iget-object v0, p0, Lcn/domob/android/ads/z$6;->b:Lcn/domob/android/ads/z;

    iget-object v1, p0, Lcn/domob/android/ads/z$6;->a:Lcn/domob/android/ads/z$b;

    invoke-static {v0, v1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$b;)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/z$6;->b:Lcn/domob/android/ads/z;

    invoke-static {v0}, Lcn/domob/android/ads/z;->c(Lcn/domob/android/ads/z;)V

    goto :goto_0
.end method
