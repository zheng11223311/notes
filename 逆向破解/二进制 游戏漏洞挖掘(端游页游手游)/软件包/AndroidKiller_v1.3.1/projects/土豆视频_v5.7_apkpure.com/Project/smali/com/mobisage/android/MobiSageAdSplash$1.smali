.class Lcom/mobisage/android/MobiSageAdSplash$1;
.super Landroid/os/Handler;
.source "MobiSageAdSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdSplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdSplash;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdSplash;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdSplash;->mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdSplash;->mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

    invoke-interface {v2}, Lcom/mobisage/android/MobiSageAdSplashListener;->onMobiSageSplashError()V

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v2}, Lcom/mobisage/android/MobiSageAdSplash;->access$000(Lcom/mobisage/android/MobiSageAdSplash;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v2}, Lcom/mobisage/android/MobiSageAdSplash;->access$100(Lcom/mobisage/android/MobiSageAdSplash;)V

    .line 67
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v2}, Lcom/mobisage/android/MobiSageAdSplash;->access$200(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 69
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 70
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdSplash;->mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdSplash;->mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

    invoke-interface {v2}, Lcom/mobisage/android/MobiSageAdSplashListener;->onMobiSageSplashShow()V

    goto :goto_0

    .line 76
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :pswitch_3
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdSplash;->mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdSplash;->mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

    invoke-interface {v2}, Lcom/mobisage/android/MobiSageAdSplashListener;->onMobiSageSplashClose()V

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash$1;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v2}, Lcom/mobisage/android/MobiSageAdSplash;->access$000(Lcom/mobisage/android/MobiSageAdSplash;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
