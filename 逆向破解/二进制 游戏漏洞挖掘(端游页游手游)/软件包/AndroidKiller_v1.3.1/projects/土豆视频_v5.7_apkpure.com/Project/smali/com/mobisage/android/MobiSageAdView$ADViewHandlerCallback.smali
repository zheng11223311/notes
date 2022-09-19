.class Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;
.super Ljava/lang/Object;
.source "MobiSageAdView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADViewHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdView;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdView;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdView$1;

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 664
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 693
    const/4 v5, 0x0

    .line 699
    :cond_0
    :goto_0
    return v5

    .line 666
    :pswitch_0
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v6}, Lcom/mobisage/android/MobiSageAdView;->onRefreshTaskTrigger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v4

    .line 698
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 669
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mobisage/android/MobiSageAction;

    .line 670
    .local v1, "actionFinish":Lcom/mobisage/android/MobiSageAction;
    if-eqz v1, :cond_0

    .line 671
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v6, v1}, Lcom/mobisage/android/MobiSageAdView;->requestADFinish(Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 675
    .end local v1    # "actionFinish":Lcom/mobisage/android/MobiSageAction;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 676
    .local v0, "actionError":Lcom/mobisage/android/MobiSageAction;
    if-eqz v0, :cond_0

    .line 677
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-static {v6, v0}, Lcom/mobisage/android/MobiSageAdView;->access$400(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 681
    .end local v0    # "actionError":Lcom/mobisage/android/MobiSageAction;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mobisage/android/MobiSageAction;

    .line 682
    .local v3, "actionRF":Lcom/mobisage/android/MobiSageAction;
    if-eqz v3, :cond_0

    .line 683
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-static {v6, v3}, Lcom/mobisage/android/MobiSageAdView;->access$500(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 687
    .end local v3    # "actionRF":Lcom/mobisage/android/MobiSageAction;
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mobisage/android/MobiSageAction;

    .line 688
    .local v2, "actionRE":Lcom/mobisage/android/MobiSageAction;
    if-eqz v2, :cond_0

    .line 689
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-static {v6, v2}, Lcom/mobisage/android/MobiSageAdView;->access$600(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
