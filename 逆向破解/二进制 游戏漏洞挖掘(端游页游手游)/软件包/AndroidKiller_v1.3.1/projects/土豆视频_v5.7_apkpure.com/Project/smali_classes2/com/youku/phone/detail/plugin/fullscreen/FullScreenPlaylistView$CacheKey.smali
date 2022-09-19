.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;
.super Ljava/lang/Object;
.source "FullScreenPlaylistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheKey"
.end annotation


# instance fields
.field aid:Ljava/lang/String;

.field id:Ljava/lang/String;

.field plid:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;


# direct methods
.method public constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    const/4 v1, 0x0

    .local v1, "match":Z
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;

    .line 61
    .local v0, "dest":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->aid:Ljava/lang/String;

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->aid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const/4 v1, 0x1

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->plid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->plid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->plid:Ljava/lang/String;

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenPlaylistView$CacheKey;->plid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/4 v1, 0x1

    .line 76
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
