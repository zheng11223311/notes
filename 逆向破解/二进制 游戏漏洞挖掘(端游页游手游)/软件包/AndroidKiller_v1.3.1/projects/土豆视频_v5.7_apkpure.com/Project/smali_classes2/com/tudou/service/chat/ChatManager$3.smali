.class Lcom/tudou/service/chat/ChatManager$3;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/chat/ChatManager;->setSoftKeyBoardListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/ChatManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tudou/service/chat/ChatManager;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    iput-object p2, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyBoardHide(II)V
    .locals 4
    .param p1, "height"    # I
    .param p2, "activityState"    # I

    .prologue
    const/4 v3, 0x1

    .line 268
    const-string v0, "ChatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyBoardHide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    packed-switch p2, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 271
    :pswitch_0
    const-string v0, "ChatManager"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatManager;->showChatIcon()V

    goto :goto_0

    .line 275
    :pswitch_1
    const-string v0, "ChatManager"

    const-string v1, "keyBoardHide : \u7ad6\u5c4f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayer()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_1

    .line 277
    const-string v0, "ChatManager"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatManager;->showChatIcon()V

    .line 279
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/service/chat/ChatManager;->access$102(Lcom/tudou/service/chat/ChatManager;Z)Z

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-static {v0, v3}, Lcom/tudou/service/chat/ChatManager;->access$102(Lcom/tudou/service/chat/ChatManager;Z)Z

    goto :goto_0

    .line 285
    :pswitch_2
    const-string v0, "ChatManager"

    const-string v1, "keyBoardHide : \u6a2a\u5c4f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-static {v0, v3}, Lcom/tudou/service/chat/ChatManager;->access$102(Lcom/tudou/service/chat/ChatManager;Z)Z

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public keyBoardShow(II)V
    .locals 4
    .param p1, "height"    # I
    .param p2, "activityState"    # I

    .prologue
    const/4 v3, 0x0

    .line 245
    const-string v0, "ChatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyBoardShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    packed-switch p2, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 248
    :pswitch_0
    const-string v0, "ChatManager"

    const-string v1, "gone"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-virtual {v0, v3}, Lcom/tudou/service/chat/ChatManager;->dismissChatIcon(Z)V

    goto :goto_0

    .line 252
    :pswitch_1
    const-string v0, "ChatManager"

    const-string v1, "keyBoardShow : \u7ad6\u5c4f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayer()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-static {v0}, Lcom/tudou/service/chat/ChatManager;->access$100(Lcom/tudou/service/chat/ChatManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "ChatManager"

    const-string v1, "gone"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-virtual {v0, v3}, Lcom/tudou/service/chat/ChatManager;->dismissChatIcon(Z)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$3;->this$0:Lcom/tudou/service/chat/ChatManager;

    invoke-static {v0, v3}, Lcom/tudou/service/chat/ChatManager;->access$102(Lcom/tudou/service/chat/ChatManager;Z)Z

    goto :goto_0

    .line 261
    :pswitch_2
    const-string v0, "ChatManager"

    const-string v1, "keyBoardShow : \u6a2a\u5c4f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
