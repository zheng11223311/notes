.class Lcom/zijunlin/Zxing/CaptureFragment$8;
.super Ljava/lang/Object;
.source "CaptureFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zijunlin/Zxing/CaptureFragment;->scanLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zijunlin/Zxing/CaptureFragment;


# direct methods
.method constructor <init>(Lcom/zijunlin/Zxing/CaptureFragment;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/zijunlin/Zxing/CaptureFragment$8;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$8;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_1

    .line 536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$8;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {v0, p1}, Lcom/youku/widget/CodeErrorDialog;->setMessage(Ljava/lang/String;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$8;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->access$200(Lcom/zijunlin/Zxing/CaptureFragment;)V

    .line 540
    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 524
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 525
    const v0, 0x7f0d03c6

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 526
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 527
    sget-object v0, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 528
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$8;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->access$300(Lcom/zijunlin/Zxing/CaptureFragment;)V

    .line 529
    return-void
.end method
