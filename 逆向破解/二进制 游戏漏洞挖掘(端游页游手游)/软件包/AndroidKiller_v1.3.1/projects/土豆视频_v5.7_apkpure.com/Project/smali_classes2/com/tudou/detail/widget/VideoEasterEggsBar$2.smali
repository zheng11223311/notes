.class Lcom/tudou/detail/widget/VideoEasterEggsBar$2;
.super Ljava/lang/Object;
.source "VideoEasterEggsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoEasterEggsBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoEasterEggsBar;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->access$300(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Lcom/tudou/detail/vo/EasterEggs;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->access$300(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Lcom/tudou/detail/vo/EasterEggs;

    move-result-object v1

    iget v1, v1, Lcom/tudou/detail/vo/EasterEggs;->error:I

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->access$300(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Lcom/tudou/detail/vo/EasterEggs;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    sget-object v2, Lcom/tudou/detail/vo/EasterEggs$EggsType;->HTML5:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->access$300(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Lcom/tudou/detail/vo/EasterEggs;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/EasterEggs;->mData:Landroid/os/Bundle;

    const-string v2, "bundle.data.key.html5.url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;->this$0:Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 113
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v0    # "url":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEggsBtn onCLick url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
