.class Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;
.super Ljava/lang/Object;
.source "ScreenShotShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0c0b99

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "type":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ct"

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mFromGuide:Z

    if-eqz v0, :cond_2

    const-string v0, "\u5f15\u5bfc"

    :goto_0
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0b96

    if-ne v0, v1, :cond_3

    .line 75
    const-string v2, "WX_IMG"

    .line 76
    const-string v0, "type"

    const-string v1, "\u5fae\u4fe1"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    :goto_1
    const-string v0, "t1.detail_player.shootmeshare"

    invoke-static {v0, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 113
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_a

    .line 114
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 129
    :cond_1
    :goto_2
    return-void

    .line 73
    :cond_2
    const-string v0, "\u4e3b\u52a8"

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0b97

    if-ne v0, v1, :cond_4

    .line 78
    const-string v2, "WXF_IMG"

    .line 79
    const-string v0, "type"

    const-string v1, "\u670b\u53cb\u5708"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0b98

    if-ne v0, v1, :cond_5

    .line 81
    const-string v2, "TYPE_SINA"

    .line 82
    const-string v0, "type"

    const-string v1, "\u5fae\u535a"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0b9b

    if-ne v0, v1, :cond_6

    .line 84
    const-string v2, "TYPE_OTHER"

    .line 85
    const-string v0, "type"

    const-string v1, "\u66f4\u591a"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 87
    const-string v2, "TYPE_OTHER"

    .line 88
    const-string v0, "type"

    const-string v1, "\u4fdd\u5b58\u5230\u672c\u5730"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "\u5df2\u4fdd\u5b58\u81f3Tudou\u622a\u5c4f\u76f8\u518c"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0b9a

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->hide()V

    .line 92
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/tudou/ui/activity/DetailActivity;

    .line 93
    .local v8, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v8}, Lcom/tudou/ui/activity/DetailActivity;->goSmall()V

    .line 94
    invoke-virtual {v8}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v9

    .line 95
    .local v9, "tMediaPlayer":Lcom/youku/player/plugin/MediaPlayerDelegate;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    if-eqz v9, :cond_8

    .line 97
    invoke-virtual {v9}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 98
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/tudou/ui/activity/DetailActivity;->onBtnCommentClicked(Ljava/lang/String;)V

    .line 107
    :cond_8
    :goto_3
    const-string v0, "type"

    const-string v1, "\u63d2\u5165\u8bc4\u8bba"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "t1.detail_player.shootmeshare"

    invoke-static {v0, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 101
    :cond_9
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v7, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "detail.go.loginactivity.from.screenshot"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    const-string v0, "TAG"

    const/16 v1, 0x14

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v0, "detail.screenshot.imgpath"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/16 v0, 0x7d0

    invoke-static {v8, v7, v0}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_3

    .line 117
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    .end local v9    # "tMediaPlayer":Lcom/youku/player/plugin/MediaPlayerDelegate;
    :cond_a
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mWebUrl:Ljava/lang/String;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1$1;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;)V

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/tudou/videoshare/ShareUtil;->shareImg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
