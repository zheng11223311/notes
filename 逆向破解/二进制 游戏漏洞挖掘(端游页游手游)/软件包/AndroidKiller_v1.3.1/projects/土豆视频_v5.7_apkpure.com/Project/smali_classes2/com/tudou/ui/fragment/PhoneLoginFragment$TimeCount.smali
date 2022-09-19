.class final Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;
.super Landroid/os/CountDownTimer;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/PhoneLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/PhoneLoginFragment;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 341
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .line 342
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 343
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    const-wide/32 v2, 0xea60

    invoke-static {v0, v2, v3}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$802(Lcom/tudou/ui/fragment/PhoneLoginFragment;J)J

    .line 355
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$1000(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$900(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v0, p1, p2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$802(Lcom/tudou/ui/fragment/PhoneLoginFragment;J)J

    .line 348
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$900(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    .line 349
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$900(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u83b7\u53d6("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    return-void
.end method
