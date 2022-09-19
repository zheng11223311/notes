.class public Lcn/domob/android/ads/e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/e$b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method constructor <init>(Lcn/domob/android/ads/e$b;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 634
    iput-object p1, p0, Lcn/domob/android/ads/e$b$a;->a:Lcn/domob/android/ads/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    if-eqz p2, :cond_0

    .line 636
    const-string/jumbo v0, "render"

    const-string v1, "fs"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b$a;->b:Ljava/lang/String;

    .line 637
    const-string v0, "ct"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b$a;->c:Ljava/lang/String;

    .line 638
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b$a;->d:Ljava/lang/String;

    .line 639
    const-string v0, "content"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b$a;->f:Ljava/lang/String;

    .line 640
    const-string v0, "base_url"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b$a;->e:Ljava/lang/String;

    .line 641
    const-string v0, "o"

    const-string v1, "h"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b$a;->g:Ljava/lang/String;

    .line 642
    const-string v0, "preload"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/e$b$a;->h:Z

    .line 643
    const-string/jumbo v0, "timeout"

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b$a;->i:I

    .line 645
    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/e$b$a;->j:Z

    .line 646
    const-string v0, "cls_btn"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/e$b$a;->k:Z

    .line 647
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b$a;->l:I

    .line 648
    const-string v0, "height"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b$a;->m:I

    .line 650
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcn/domob/android/ads/e$b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcn/domob/android/ads/e$b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcn/domob/android/ads/e$b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcn/domob/android/ads/e$b$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcn/domob/android/ads/e$b$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcn/domob/android/ads/e$b$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcn/domob/android/ads/e$b$a;->h:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcn/domob/android/ads/e$b$a;->i:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcn/domob/android/ads/e$b$a;->j:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcn/domob/android/ads/e$b$a;->k:Z

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcn/domob/android/ads/e$b$a;->l:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcn/domob/android/ads/e$b$a;->m:I

    return v0
.end method
