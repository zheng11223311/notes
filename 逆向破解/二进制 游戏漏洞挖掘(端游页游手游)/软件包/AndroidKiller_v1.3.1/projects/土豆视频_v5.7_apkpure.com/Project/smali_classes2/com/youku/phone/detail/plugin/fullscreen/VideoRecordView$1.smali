.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0c0bb7

    const/4 v7, 0x1

    .line 110
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v8, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 112
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0c0bb6

    if-ne v0, v3, :cond_5

    .line 113
    const-string v0, "type"

    const-string v3, "\u5fae\u4fe1\u597d\u53cb"

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v4, "WX_SHORT"

    .line 131
    :cond_0
    :goto_0
    const-string v0, "t1.detail_player.videotapeshare"

    invoke-static {v0, v8}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "img":Ljava/lang/String;
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtnShareClickLis mVideoImgForShare = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v5

    .line 138
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getimgUrl()Ljava/lang/String;

    move-result-object v5

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/tudou/ui/activity/DetailActivity;

    .line 143
    .local v10, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "detail.videorecord.share.title"

    invoke-static {v0, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "detail.videorecord.share.content"

    invoke-static {v0, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "content":Ljava/lang/String;
    const-string v0, "title"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v11, :cond_3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u3002"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_3
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtnShareClickLis title = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtnShareClickLis img = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtnShareClickLis content = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1$1;

    invoke-direct {v6, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;)V

    const-string v7, "path"

    invoke-static/range {v0 .. v7}, Lcom/tudou/videoshare/ShareUtil;->shareShortVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 183
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    :goto_1
    return-void

    .line 115
    .end local v5    # "img":Ljava/lang/String;
    .end local v10    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 116
    const-string v0, "type"

    const-string v3, "\u670b\u53cb\u5708"

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v4, "WXF_SHORT"

    goto/16 :goto_0

    .line 118
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0c0bb8

    if-ne v0, v3, :cond_7

    .line 119
    const-string v0, "type"

    const-string v3, "\u65b0\u6d6a\u5fae\u535a"

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v4, "TYPE_SINA"

    goto/16 :goto_0

    .line 121
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0c0bbb

    if-ne v0, v3, :cond_8

    .line 122
    const-string v0, "type"

    const-string v3, "\u66f4\u591a"

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v4, "TYPE_OTHER"

    goto/16 :goto_0

    .line 124
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0c0bb9

    if-ne v0, v3, :cond_9

    .line 125
    const-string v0, "type"

    const-string v3, "QQ\u7a7a\u95f4"

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v4, "TYPE_QQ_ZONE"

    goto/16 :goto_0

    .line 127
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0c0bba

    if-ne v0, v3, :cond_0

    .line 128
    const-string v0, "type"

    const-string v3, "QQ"

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v4, "TYPE_QQ"

    goto/16 :goto_0

    .line 168
    .restart local v5    # "img":Ljava/lang/String;
    .restart local v10    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_a
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v9, v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "TAG"

    const/16 v3, 0x15

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v0, "detail.go.loginactivity.from.videorecord"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string v0, "detail.videorecord.share.type"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v0, "detail.videorecord.share.url"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v0, "detail.videorecord.share.videoid"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$500(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v0, "detail.videorecord.share.video.img"

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v0, "detail.videorecord.share.video.title"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v0, "detail.videorecord.share.video.title.for.url"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$600(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v0, "ORIENTATION"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const/16 v0, 0x7d0

    invoke-static {v10, v9, v0}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method
