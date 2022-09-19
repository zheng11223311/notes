.class Lcom/tudou/detail/widget/VideoSliderBar$5;
.super Ljava/lang/Object;
.source "VideoSliderBar.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVideoDigComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSliderBar;->onBtnDigClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSliderBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSliderBar;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoDigComplete(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "errorCode"    # I

    .prologue
    .line 302
    if-eqz p1, :cond_4

    .line 303
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$200(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/vo/VideoState;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 304
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$200(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/vo/VideoState;

    move-result-object v0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/VideoState;->increaseDigNum(Z)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$300(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 307
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$400(Lcom/tudou/detail/widget/VideoSliderBar;)V

    .line 308
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$300(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    move-result-object v0

    iget-object v1, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$200(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/vo/VideoState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$200(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/vo/VideoState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/vo/VideoState;->getDigNum()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoSliderBar;->access$300(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mSliderDetail:Lcom/tudou/detail/vo/SliderInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$5;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSliderBar;->access$300(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    :goto_1
    return-void

    .line 308
    :cond_2
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :cond_4
    invoke-static {p3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1
.end method
