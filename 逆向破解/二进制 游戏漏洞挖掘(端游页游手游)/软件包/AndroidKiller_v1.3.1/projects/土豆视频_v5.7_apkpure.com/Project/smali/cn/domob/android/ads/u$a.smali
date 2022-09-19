.class public Lcn/domob/android/ads/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/u;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/u;)V
    .locals 1

    .prologue
    .line 119
    iput-object p1, p0, Lcn/domob/android/ads/u$a;->c:Lcn/domob/android/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string/jumbo v0, "s"

    iput-object v0, p0, Lcn/domob/android/ads/u$a;->b:Ljava/lang/String;

    return-void
.end method
