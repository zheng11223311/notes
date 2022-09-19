.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$5;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$5;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 542
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$5;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/TabViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x439b0000    # 310.0f

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v0

    .line 543
    .local v0, "height":I
    :goto_0
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LaifengLiveRoomActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get tab view pager height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$5;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/TabViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 545
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 546
    return-void

    .line 542
    .end local v0    # "height":I
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$5;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/TabViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->getHeight()I

    move-result v0

    goto :goto_0
.end method
