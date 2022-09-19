.class public Lcn/domob/android/ads/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/e;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/e;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 781
    iput-object p1, p0, Lcn/domob/android/ads/e$a;->a:Lcn/domob/android/ads/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-boolean v4, p0, Lcn/domob/android/ads/e$a;->b:Z

    .line 782
    if-eqz p2, :cond_3

    .line 784
    const-string/jumbo v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-string/jumbo v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$a;->c:I

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/e$a;->b:Z

    .line 788
    :cond_0
    const-string v0, "disable"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/e$a;->d:Z

    .line 789
    const-string v0, "dis_time"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$a;->e:I

    .line 791
    const-string v0, "ors"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_1

    .line 793
    const-string/jumbo v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/e$a;->f:Ljava/lang/String;

    .line 795
    const-string v1, "config"

    const-string/jumbo v2, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$a;->g:Ljava/lang/String;

    .line 799
    :cond_1
    const-string/jumbo v0, "sp_timeout"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 800
    if-le v0, v3, :cond_2

    invoke-static {p1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/e;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 801
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 802
    const-string/jumbo v2, "timeout"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v0, Lcn/domob/android/ads/c/b;

    invoke-static {p1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/e;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/domob/android/ads/c/b;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcn/domob/android/ads/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/b;->a(Ljava/util/HashMap;)V

    .line 806
    :cond_2
    const-string v0, "freq_max"

    const/16 v1, 0x14

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/domob/android/e/c;->a(I)V

    .line 808
    const-string v0, "freq_reset"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 809
    if-eqz v0, :cond_3

    .line 810
    invoke-static {p1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/e/c;->b(Landroid/content/Context;)V

    .line 815
    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcn/domob/android/ads/e$a;->c:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcn/domob/android/ads/e$a;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcn/domob/android/ads/e$a;->e:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcn/domob/android/ads/e$a;->b:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcn/domob/android/ads/e$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcn/domob/android/ads/e$a;->g:Ljava/lang/String;

    return-object v0
.end method
