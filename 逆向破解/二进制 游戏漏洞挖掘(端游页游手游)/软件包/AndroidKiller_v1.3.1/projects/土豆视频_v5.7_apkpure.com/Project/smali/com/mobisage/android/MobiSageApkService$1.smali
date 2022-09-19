.class Lcom/mobisage/android/MobiSageApkService$1;
.super Landroid/os/Handler;
.source "MobiSageApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageApkService;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageApkService;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mobisage/android/MobiSageApkService$1;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService$1;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService$1;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u6587\u4ef6\u635f\u574f!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService$1;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService$1;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SD\u7a7a\u95f4\u4e0d\u8db3,\u5148\u6e05\u7406SD\u5361!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService$1;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u65e0\u7f51\u7edc\u8fde\u63a5!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    :pswitch_5
    iget-object v0, p0, Lcom/mobisage/android/MobiSageApkService$1;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7a0b\u5e8f\u4e0b\u8f7d\u4e2d...\u8bf7\u7a0d\u5019!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
