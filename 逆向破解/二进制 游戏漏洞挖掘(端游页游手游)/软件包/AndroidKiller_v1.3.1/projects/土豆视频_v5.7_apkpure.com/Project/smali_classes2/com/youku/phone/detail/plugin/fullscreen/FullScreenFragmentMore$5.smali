.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;
.super Ljava/lang/Object;
.source "FullScreenFragmentMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->makeLanuageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/Language;

    .line 305
    .local v1, "lan":Lcom/youku/player/goplay/Language;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 319
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "language"

    iget-object v4, v1, Lcom/youku/player/goplay/Language;->langCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    iget-object v2, v1, Lcom/youku/player/goplay/Language;->langCode:Ljava/lang/String;

    sput-object v2, Lcom/youku/player/goplay/Profile;->langCode:Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iput-boolean v5, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    .line 314
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 316
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 317
    invoke-virtual {v0, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 318
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0
.end method
