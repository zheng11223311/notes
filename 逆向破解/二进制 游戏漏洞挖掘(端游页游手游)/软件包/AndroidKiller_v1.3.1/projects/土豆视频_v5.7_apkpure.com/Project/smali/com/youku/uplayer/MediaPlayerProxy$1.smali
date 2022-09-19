.class Lcom/youku/uplayer/MediaPlayerProxy$1;
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
    .line 143
    iput-object p1, p0, Lcom/youku/uplayer/MediaPlayerProxy$1;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy$1;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    new-instance v2, Lcom/youku/uplayer/UMediaPlayer;

    invoke-direct {v2}, Lcom/youku/uplayer/UMediaPlayer;-><init>()V

    invoke-static {v1, v2}, Lcom/youku/uplayer/MediaPlayerProxy;->access$002(Lcom/youku/uplayer/MediaPlayerProxy;Lcom/youku/uplayer/OriginalMediaPlayer;)Lcom/youku/uplayer/OriginalMediaPlayer;

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/youku/uplayer/MediaPlayerProxy$1;->this$0:Lcom/youku/uplayer/MediaPlayerProxy;

    invoke-static {v1}, Lcom/youku/uplayer/MediaPlayerProxy;->access$000(Lcom/youku/uplayer/MediaPlayerProxy;)Lcom/youku/uplayer/OriginalMediaPlayer;

    move-result-object v1

    sget-object v2, Lcom/youku/player/goplay/Profile;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/uplayer/OriginalMediaPlayer;->setHttpUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 164
    :goto_0
    const-string v1, "MediaPlayerProxy"

    const-string v2, "UMediaPlayer is created"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayerProxy"

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "MediaPlayerProxy"

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaPlayerProxy"

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MediaPlayerProxy"

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public rule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method
