.class Lcom/tudou/detail/fragment/VideoBriefFragment$1;
.super Ljava/lang/Object;
.source "VideoBriefFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoBriefFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoBriefFragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    .line 139
    .local v1, "tType":Lcom/tudou/android/Youku$VideoType;
    if-eqz v1, :cond_1

    .line 140
    sget-object v2, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$100(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    :cond_0
    invoke-static {}, Lcom/tudou/detail/Test;->isBlack()Z

    move-result v2

    if-nez v2, :cond_5

    .line 142
    invoke-static {}, Lcom/tudou/detail/Test;->isUserIntentValidShortcut()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoBriefFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/detail/Test;->makeVideoShortcutIntent(Landroid/content/Context;Lcom/youku/vo/NewVideoDetail;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 144
    .local v0, "tHasShortcut":Z
    :goto_0
    invoke-static {}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBtnAddShortCut onClick tHasShortcut = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-nez v0, :cond_1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_CREATE_SHOTCUT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 160
    .end local v0    # "tHasShortcut":Z
    :cond_1
    :goto_1
    return-void

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/detail/Test;->hasShortcut(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 148
    .restart local v0    # "tHasShortcut":Z
    :cond_3
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-virtual {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$000(Lcom/tudou/detail/fragment/VideoBriefFragment;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$300(Lcom/tudou/detail/fragment/VideoBriefFragment;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tudou/detail/Test;->addShotCutVOD(Landroid/content/Context;Lcom/youku/vo/NewVideoDetail;Landroid/graphics/Bitmap;)V

    .line 149
    invoke-static {}, Lcom/tudou/detail/Test;->isNeedAddShortcutFinishToast()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    const-string v2, "\u6dfb\u52a0\u5b8c\u6210"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 152
    :cond_4
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$400(Lcom/tudou/detail/fragment/VideoBriefFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 156
    .end local v0    # "tHasShortcut":Z
    :cond_5
    invoke-static {}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCoverImageClick tType == VideoType.ALBUM, do not support shortcut."

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
