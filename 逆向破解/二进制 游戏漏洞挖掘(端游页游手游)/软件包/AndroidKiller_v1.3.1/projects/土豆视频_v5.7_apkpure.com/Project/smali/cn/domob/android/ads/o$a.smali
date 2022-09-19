.class Lcn/domob/android/ads/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/o$a;->a:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/o$a;->b:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/o$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/o$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcn/domob/android/ads/o$a;->a:Ljava/lang/String;

    .line 193
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/o$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcn/domob/android/ads/o$a;->b:Ljava/lang/String;

    .line 197
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/o$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcn/domob/android/ads/o$a;->c:Ljava/lang/String;

    .line 201
    return-void
.end method
