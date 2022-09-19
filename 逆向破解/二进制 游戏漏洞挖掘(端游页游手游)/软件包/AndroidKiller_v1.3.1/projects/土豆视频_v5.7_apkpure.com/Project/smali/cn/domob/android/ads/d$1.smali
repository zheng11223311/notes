.class Lcn/domob/android/ads/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/d;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/d;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcn/domob/android/ads/d$1;->a:Lcn/domob/android/ads/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcn/domob/android/ads/l;->y:[Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcn/domob/android/ads/l;->z:Ljava/lang/String;

    return-object v0
.end method
