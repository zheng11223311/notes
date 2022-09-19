.class Lcom/tudou/ui/activity/DetailActivity$12;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnUpdateVideoRecordCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->updateVideoRecordInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$img:Ljava/lang/String;

.field final synthetic val$shareType:Ljava/lang/String;

.field final synthetic val$shareUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$shareType:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$shareUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$img:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateVideoRecordComplete(ZLjava/lang/String;)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "itemCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1934
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateVideoRecordComplete success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0, v3}, Lcom/tudou/ui/activity/DetailActivity;->access$1102(Lcom/tudou/ui/activity/DetailActivity;Z)Z

    .line 1936
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v4, v0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v3, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->showLoading(ZZ)V

    .line 1937
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1938
    if-eqz p1, :cond_1

    .line 1939
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->tUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->setVisibility(I)V

    .line 1940
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const-string v3, "detail.videorecord.share.title"

    invoke-static {v0, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1941
    .local v1, "sharetitle":Ljava/lang/String;
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const-string v3, "detail.videorecord.share.content"

    invoke-static {v0, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1942
    .local v2, "sharecontent":Ljava/lang/String;
    const-string/jumbo v0, "title"

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1943
    const-string v0, "WXF_SHORT"

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$shareType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u3002"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1946
    :cond_0
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBtnShareClickLis title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBtnShareClickLis content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$12;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$shareUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$shareType:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$12;->val$img:Ljava/lang/String;

    new-instance v6, Lcom/tudou/ui/activity/DetailActivity$12$1;

    invoke-direct {v6, p0}, Lcom/tudou/ui/activity/DetailActivity$12$1;-><init>(Lcom/tudou/ui/activity/DetailActivity$12;)V

    const-string v7, "path"

    invoke-static/range {v0 .. v7}, Lcom/tudou/videoshare/ShareUtil;->shareShortVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 1957
    .end local v1    # "sharetitle":Ljava/lang/String;
    .end local v2    # "sharecontent":Ljava/lang/String;
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 1936
    goto/16 :goto_0
.end method
