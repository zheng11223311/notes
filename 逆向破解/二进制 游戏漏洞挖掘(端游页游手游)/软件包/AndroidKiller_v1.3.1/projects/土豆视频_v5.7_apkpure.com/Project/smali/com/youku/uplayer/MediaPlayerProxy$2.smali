.class Lcom/youku/uplayer/MediaPlayerProxy$2;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/uplayer/MediaPlayerProxy;->createInnerPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/uplayer/MediaPlayerProxy;


# direct methods
.method constructor <init>(Lcom/youku/uplayer/MediaPlayerProxy;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$2;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/uplayer/MediaPlayerProxy$2;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    new-instance v1, Lcom/youku/uplayer/SystemMediaPlayer;

    invoke-direct {v1}, Lcom/youku/uplayer/SystemMediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/youku/uplayer/MediaPlayerProxy;->access$002(Lcom/youku/uplayer/MediaPlayerProxy;Lcom/youku/uplayer/OriginalMediaPlayer;)Lcom/youku/uplayer/OriginalMediaPlayer;

    .line 140
    const-string v0, "MediaPlayerProxy"

    const-string v1, "System MediaPlayer is created"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public rule(Ljava/lang/String;)Z
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    sget-boolean v4, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object v4, p0, Lcom/youku/uplayer/MediaPlayerProxy$2;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v4}, Lcom/youku/uplayer/MediaPlayerProxy;->access$100(Lcom/youku/uplayer/MediaPlayerProxy;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object v4, p0, Lcom/youku/uplayer/MediaPlayerProxy$2;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v4}, Lcom/youku/uplayer/MediaPlayerProxy;->access$200(Lcom/youku/uplayer/MediaPlayerProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "strUpperCase":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v4, "#PLSEXTM3U"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "#EXT-X-ENDLIST\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    :cond_4
    const-string v4, ".MP4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".3GP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    move v0, v3

    .line 133
    .local v0, "b":Z
    :goto_1
    if-nez v0, :cond_6

    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    .end local v0    # "b":Z
    :cond_7
    move v0, v2

    .line 131
    goto :goto_1
.end method
