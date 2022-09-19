.class public Lcn/domob/android/ads/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/e;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/e;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 746
    iput-object p1, p0, Lcn/domob/android/ads/e$c;->a:Lcn/domob/android/ads/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    if-eqz p2, :cond_0

    .line 748
    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$c;->b:I

    .line 749
    const-string/jumbo v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$c;->c:Ljava/lang/String;

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcn/domob/android/ads/e$c;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcn/domob/android/ads/e$c;->c:Ljava/lang/String;

    return-object v0
.end method
