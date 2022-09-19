.class public Lcn/domob/android/ads/u$f;
.super Lcn/domob/android/ads/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field final synthetic j:Lcn/domob/android/ads/u;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/u;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcn/domob/android/ads/u$f;->j:Lcn/domob/android/ads/u;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/u$a;-><init>(Lcn/domob/android/ads/u;)V

    .line 132
    const-string/jumbo v0, "s"

    iput-object v0, p0, Lcn/domob/android/ads/u$f;->h:Ljava/lang/String;

    return-void
.end method
